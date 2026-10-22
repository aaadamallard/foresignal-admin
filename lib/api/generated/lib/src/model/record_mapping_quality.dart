//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_mapping_quality.g.dart';

/// RecordMappingQuality
///
/// Properties:
/// * [accuracyMeters] - One mapping value: a Jayway JSONPath (item-relative under `select`; `$pairs.<key>` reads a flattened pair), a substitution-only template, or a constant (059)
/// * [extra] - Namespaced quality extras (Quality.extra), e.g. `lora.rssi`; scalar values only
@BuiltValue()
abstract class RecordMappingQuality
    implements Built<RecordMappingQuality, RecordMappingQualityBuilder> {
  /// One mapping value: a Jayway JSONPath (item-relative under `select`; `$pairs.<key>` reads a flattened pair), a substitution-only template, or a constant (059)
  @BuiltValueField(wireName: r'accuracyMeters')
  JsonObject? get accuracyMeters;

  /// Namespaced quality extras (Quality.extra), e.g. `lora.rssi`; scalar values only
  @BuiltValueField(wireName: r'extra')
  BuiltMap<String, JsonObject?>? get extra;

  RecordMappingQuality._();

  factory RecordMappingQuality([void updates(RecordMappingQualityBuilder b)]) =
      _$RecordMappingQuality;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordMappingQualityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordMappingQuality> get serializer =>
      _$RecordMappingQualitySerializer();
}

class _$RecordMappingQualitySerializer
    implements PrimitiveSerializer<RecordMappingQuality> {
  @override
  final Iterable<Type> types = const [
    RecordMappingQuality,
    _$RecordMappingQuality
  ];

  @override
  final String wireName = r'RecordMappingQuality';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordMappingQuality object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accuracyMeters != null) {
      yield r'accuracyMeters';
      yield serializers.serialize(
        object.accuracyMeters,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.extra != null) {
      yield r'extra';
      yield serializers.serialize(
        object.extra,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordMappingQuality object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecordMappingQualityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accuracyMeters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.accuracyMeters = valueDes;
          break;
        case r'extra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extra.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordMappingQuality deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordMappingQualityBuilder();
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
