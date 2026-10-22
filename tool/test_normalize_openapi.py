#!/usr/bin/env python3
"""Tests for tool/normalize_openapi.py.

    python3 -I -m unittest discover -s tool -p 'test_*.py'
"""
import os
import sys
import unittest

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import normalize_openapi as n  # noqa: E402


class NormalizeSchemaTest(unittest.TestCase):
    """One case per rewrite rule in the module docstring."""

    def setUp(self):
        n.COMPONENTS.clear()

    def test_nullable_type_array(self):
        self.assertEqual(n.normalize_schema({"type": ["string", "null"]}),
                         {"type": "string", "nullable": True})

    def test_several_non_null_types_become_untyped(self):
        self.assertEqual(n.normalize_schema({"type": ["string", "number"]}), {})

    def test_null_member_of_one_of(self):
        out = n.normalize_schema({"oneOf": [{"$ref": "#/components/schemas/A"}, {"type": "null"}]})
        self.assertEqual(out, {"nullable": True, "allOf": [{"$ref": "#/components/schemas/A"}]})

    def test_const_examples_default_and_bounds(self):
        out = n.normalize_schema({"type": "number", "const": 1, "examples": [1, 2],
                                  "default": 1, "exclusiveMinimum": 0})
        self.assertEqual(out, {"type": "number", "enum": [1], "example": 1,
                               "minimum": 0, "exclusiveMinimum": True})

    def test_ref_siblings_dropped(self):
        self.assertEqual(n.normalize_schema({"$ref": "#/x", "description": "d"}), {"$ref": "#/x"})

    def test_unsafe_enum_becomes_string(self):
        self.assertEqual(n.normalize_schema({"type": "string", "enum": ["%", "km/h"]}),
                         {"type": "string"})
        self.assertEqual(n.normalize_schema({"type": "string", "enum": ["a", "b-c"]}),
                         {"type": "string", "enum": ["a", "b-c"]})

    def test_validation_only_any_of_dropped(self):
        out = n.normalize_schema({
            "type": "object",
            "properties": {"push": {"type": "boolean"}, "pull": {"type": "string"}},
            "anyOf": [{"required": ["push"], "properties": {"push": {"const": True}}},
                      {"required": ["pull"]}],
        })
        self.assertNotIn("anyOf", out)
        self.assertEqual(set(out["properties"]), {"push", "pull"})

    def test_mixed_one_of_becomes_untyped(self):
        out = n.normalize_schema({"description": "d", "oneOf": [
            {"type": "string", "enum": ["a"]}, {"type": "object", "properties": {"x": {}}}]})
        self.assertEqual(out, {"description": "d"})

    def test_all_of_flattened(self):
        n.COMPONENTS["Base"] = {"type": "object", "properties": {"id": {"type": "string"}},
                                "required": ["id"]}
        out = n.normalize_schema({"allOf": [{"$ref": "#/components/schemas/Base"},
                                            {"type": "object", "properties": {"n": {"type": "integer"}},
                                             "required": ["n"]}]})
        self.assertEqual(set(out["properties"]), {"id", "n"})
        self.assertEqual(out["required"], ["id", "n"])
        self.assertNotIn("allOf", out)

    def test_open_objects(self):
        self.assertEqual(
            n.normalize_schema({"type": "object", "properties": {"a": {"type": "string"}},
                                "additionalProperties": True}),
            {"type": "object", "properties": {"a": {"type": "string"}}})
        self.assertEqual(
            n.normalize_schema({"type": "object", "properties": {"a": {"type": "string"}},
                                "additionalProperties": {"type": "object"}}),
            {"type": "object", "additionalProperties": {"type": "object"}})


if __name__ == "__main__":
    unittest.main()
