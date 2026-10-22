#!/usr/bin/env python3
"""Normalizes the vendored OpenAPI 3.1 contract into the OpenAPI 3.0 shape the
openapi-generator `dart-dio` generator handles.

The vendored `openapi/OpenAPI.json` is never changed. This writes a derived copy
that only the generator reads, so the generated client stays a mechanical
function of the contract. Every rewrite here is structural (how a type is
spelled), never semantic (what the backend accepts):

* `type: [T, "null"]` becomes `type: T` + `nullable: true`; a `{"type": "null"}`
  member of a `oneOf`/`anyOf` becomes `nullable: true` on the parent.
* A schema with several non-null types is left untyped (any JSON value).
* `const: v` becomes `enum: [v]`; `examples` becomes `example`; numeric
  `exclusiveMinimum`/`exclusiveMaximum` become the 3.0 boolean form.
* `$ref` siblings are dropped (3.0 ignores them; they are descriptions).
* `default` values are dropped: the backend owns defaults, and a generated
  builder that pre-fills them would send values the operator never chose.
* An enum whose values cannot all become Dart identifiers is kept as a plain
  string (the values are still documented in the description).
* Keywords 3.0 does not know (`if`, `not`, `contentMediaType`, ...) are dropped.
* An `allOf` that composes objects is flattened into one object schema (the
  union of the members' properties and required lists), so no generated model
  inherits from another.
* A `oneOf`/`anyOf` whose members are not all references to named schemas is
  left untyped (any JSON value); one whose members only constrain the parent's
  own properties (`required` lists, narrower values) is a validation rule and
  is dropped.
* `additionalProperties: true` beside declared `properties` is dropped: the
  object stays a typed model, which ignores undeclared keys when it reads.
* Declared `properties` beside a typed `additionalProperties` schema become a
  map of that type. The templates cannot model both, and the map keeps every
  key the contract allows through a read-modify-write.

Usage: python3 -I tool/normalize_openapi.py IN.json OUT.json
"""
import copy
import json
import re
import sys

#: The document's `components.schemas`, for resolving `allOf` members.
COMPONENTS = {}

DROP_KEYS = {
    "if", "then", "else", "not", "contentMediaType", "contentEncoding",
    "$schema", "$id", "$comment", "unevaluatedProperties", "prefixItems",
    "dependentRequired", "dependentSchemas", "patternProperties", "propertyNames",
    "x-foresignal-prompt",
}

# An enum value the dart-dio templates can turn into a Dart identifier.
SAFE_ENUM = re.compile(r"^[A-Za-z0-9_.\- ]*$")


def is_schema_container(key):
    """Whether values under [key] are maps of schemas keyed by name."""
    return key in ("properties", "schemas")


def normalize_schema(node):
    """Rewrites one schema object (and its children) in place."""
    if not isinstance(node, dict):
        return node
    if "$ref" in node:
        return {"$ref": node["$ref"]}

    for key in list(node.keys()):
        if key in DROP_KEYS:
            del node[key]

    t = node.get("type")
    if isinstance(t, list):
        non_null = [x for x in t if x != "null"]
        if "null" in t:
            node["nullable"] = True
        if len(non_null) == 1:
            node["type"] = non_null[0]
        else:
            del node["type"]
    elif t == "null":
        del node["type"]
        node["nullable"] = True

    if "const" in node:
        node["enum"] = [node.pop("const")]
    if "examples" in node:
        examples = node.pop("examples")
        if isinstance(examples, list) and examples and "example" not in node:
            node["example"] = examples[0]
    node.pop("default", None)
    for bound in ("exclusiveMinimum", "exclusiveMaximum"):
        value = node.get(bound)
        if isinstance(value, (int, float)) and not isinstance(value, bool):
            node[bound.replace("exclusive", "").lower()] = value
            node[bound] = True

    if "enum" in node:
        values = [v for v in node["enum"] if v is not None]
        if len(values) != len(node["enum"]):
            node["nullable"] = True
        if any(not isinstance(v, str) or not SAFE_ENUM.match(v) for v in values) or not values:
            if all(isinstance(v, str) for v in values):
                del node["enum"]
            else:
                node["enum"] = values
        else:
            node["enum"] = values

    for combinator in ("oneOf", "anyOf"):
        if combinator in node:
            members = []
            for member in node[combinator]:
                if isinstance(member, dict) and member.get("type") == "null" and len(member) == 1:
                    node["nullable"] = True
                    continue
                members.append(member)
            del node[combinator]
            if node.get("properties") and all(
                isinstance(m, dict) and "type" not in m and "$ref" not in m
                and set(m.get("properties", {})) <= set(node["properties"])
                for m in members
            ):
                # Members that only constrain the parent's own properties are a
                # validation rule, not a type.
                continue
            if all(isinstance(m, dict) and set(m) <= {"required", "description"} for m in members):
                continue
            if len(members) == 1:
                node["allOf"] = node.get("allOf", []) + members
            elif all(isinstance(m, dict) and set(m) == {"$ref"} for m in members):
                node[combinator] = members
            else:
                for key in ("type", "properties", "required", "items", "enum", "format",
                            "additionalProperties", "allOf"):
                    node.pop(key, None)
    if "allOf" in node:
        members = [normalize_schema(m) for m in node.pop("allOf")]
        if len(members) == 1 and "$ref" in members[0] and not node.get("properties"):
            node["allOf"] = members
        else:
            flatten_into(node, members)

    if node.get("properties") and node.get("additionalProperties") is True:
        del node["additionalProperties"]
    elif node.get("properties") and isinstance(node.get("additionalProperties"), dict):
        node.pop("properties")
        node.pop("required", None)
    if isinstance(node.get("items"), dict):
        node["items"] = normalize_schema(node["items"])
    if isinstance(node.get("additionalProperties"), dict):
        node["additionalProperties"] = normalize_schema(node["additionalProperties"])
    if isinstance(node.get("properties"), dict):
        for name, prop in node["properties"].items():
            node["properties"][name] = normalize_schema(prop)
    return node


def resolve(schema, seen=()):
    """Returns [schema] with a top-level `$ref` (and nested `allOf`) resolved."""
    if "$ref" in schema:
        name = schema["$ref"].rsplit("/", 1)[-1]
        if name in seen:
            return {}
        return resolve(normalize_schema(copy.deepcopy(COMPONENTS[name])), seen + (name,))
    return schema


def flatten_into(node, members):
    """Merges the object members of an `allOf` into [node] as one object schema."""
    properties = {}
    required = []
    for member in members:
        member = resolve(member)
        if "allOf" in member:
            inner = {}
            flatten_into(inner, member["allOf"])
            member = {**member, **inner}
        properties.update(member.get("properties", {}))
        for name in member.get("required", []):
            if name not in required:
                required.append(name)
        if "description" not in node and "description" in member:
            node["description"] = member["description"]
        if member.get("type") and member.get("type") != "object":
            node["type"] = member["type"]
            for key in ("format", "enum", "items", "pattern", "minimum", "maximum"):
                if key in member:
                    node[key] = member[key]
    properties.update(node.get("properties", {}))
    for name in node.get("required", []):
        if name not in required:
            required.append(name)
    if properties:
        node["type"] = "object"
        node["properties"] = properties
    if required:
        node["required"] = [r for r in required if r in properties] or required
    node.pop("additionalProperties", None) if properties else None


def walk(node):
    """Finds every schema in the document and normalizes it."""
    if isinstance(node, dict):
        for key, value in list(node.items()):
            if key == "schema" and isinstance(value, dict):
                node[key] = normalize_schema(value)
            elif key == "schemas" and isinstance(value, dict):
                for name, schema in value.items():
                    value[name] = normalize_schema(schema)
            else:
                walk(value)
    elif isinstance(node, list):
        for value in node:
            walk(value)


def main(argv):
    """Reads argv[1], writes the normalized document to argv[2]."""
    if len(argv) != 3:
        sys.stderr.write(__doc__)
        return 2
    with open(argv[1], encoding="utf-8") as handle:
        doc = json.load(handle)
    doc["openapi"] = "3.0.3"
    for key in ("jsonSchemaDialect", "webhooks"):
        doc.pop(key, None)
    doc.get("info", {}).get("license", {}).pop("identifier", None)
    COMPONENTS.update(doc.get("components", {}).get("schemas", {}))
    walk(doc)
    with open(argv[2], "w", encoding="utf-8") as handle:
        json.dump(doc, handle, indent=1, sort_keys=False)
        handle.write("\n")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
