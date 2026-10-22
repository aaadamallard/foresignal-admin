//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/kind_display.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kind_schema.g.dart';

/// JSON Schema 2020-12 document merged from the fieldSpecs of every source emitting a kind, with `x-unit`, `x-unitLabel`, `x-label`, `x-format`, `x-display` and `x-conflicts` extensions. Each property may also carry `x-datum` (vertical datum of a length field); `TIMESTAMP` fields are `[\"string\", \"integer\"]` with `x-format: timestamp`; each `oneOf` variant of a conflicting field lists its `x-sources`.
///
/// Properties:
/// * [dollarSchema]
/// * [title]
/// * [type]
/// * [properties]
/// * [xDisplay]
/// * [xConflicts] - Source ids whose fieldSpecs disagree on a field's type
@BuiltValue()
abstract class KindSchema implements Built<KindSchema, KindSchemaBuilder> {
  @BuiltValueField(wireName: r'$schema')
  String? get dollarSchema;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  @BuiltValueField(wireName: r'x-display')
  KindDisplay? get xDisplay;

  /// Source ids whose fieldSpecs disagree on a field's type
  @BuiltValueField(wireName: r'x-conflicts')
  BuiltList<String>? get xConflicts;

  KindSchema._();

  factory KindSchema([void updates(KindSchemaBuilder b)]) = _$KindSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KindSchemaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KindSchema> get serializer => _$KindSchemaSerializer();
}

class _$KindSchemaSerializer implements PrimitiveSerializer<KindSchema> {
  @override
  final Iterable<Type> types = const [KindSchema, _$KindSchema];

  @override
  final String wireName = r'KindSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KindSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dollarSchema != null) {
      yield r'$schema';
      yield serializers.serialize(
        object.dollarSchema,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.xDisplay != null) {
      yield r'x-display';
      yield serializers.serialize(
        object.xDisplay,
        specifiedType: const FullType.nullable(KindDisplay),
      );
    }
    if (object.xConflicts != null) {
      yield r'x-conflicts';
      yield serializers.serialize(
        object.xConflicts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KindSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KindSchemaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'$schema':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dollarSchema = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
          break;
        case r'x-display':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(KindDisplay),
                  )
                  as KindDisplay?;
          if (valueDes == null) continue;
          result.xDisplay.replace(valueDes);
          break;
        case r'x-conflicts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.xConflicts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KindSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KindSchemaBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
