//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_feed_item_foresignal.g.dart';

/// Foresignal extension (alert items)
///
/// Properties:
/// * [severity]
/// * [state]
/// * [sourceId]
/// * [externalId]
/// * [geometry]
@BuiltValue()
abstract class JsonFeedItemForesignal
    implements Built<JsonFeedItemForesignal, JsonFeedItemForesignalBuilder> {
  @BuiltValueField(wireName: r'severity')
  JsonFeedItemForesignalSeverityEnum? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'state')
  JsonFeedItemForesignalStateEnum? get state;
  // enum stateEnum {  firing,  acknowledged,  resolved,  };

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  JsonFeedItemForesignal._();

  factory JsonFeedItemForesignal([
    void updates(JsonFeedItemForesignalBuilder b),
  ]) = _$JsonFeedItemForesignal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonFeedItemForesignalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonFeedItemForesignal> get serializer =>
      _$JsonFeedItemForesignalSerializer();
}

class _$JsonFeedItemForesignalSerializer
    implements PrimitiveSerializer<JsonFeedItemForesignal> {
  @override
  final Iterable<Type> types = const [
    JsonFeedItemForesignal,
    _$JsonFeedItemForesignal,
  ];

  @override
  final String wireName = r'JsonFeedItemForesignal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonFeedItemForesignal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(JsonFeedItemForesignalSeverityEnum),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(JsonFeedItemForesignalStateEnum),
      );
    }
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JsonFeedItemForesignal object, {
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
    required JsonFeedItemForesignalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      JsonFeedItemForesignalSeverityEnum,
                    ),
                  )
                  as JsonFeedItemForesignalSeverityEnum?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      JsonFeedItemForesignalStateEnum,
                    ),
                  )
                  as JsonFeedItemForesignalStateEnum?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JsonFeedItemForesignal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonFeedItemForesignalBuilder();
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

class JsonFeedItemForesignalSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const JsonFeedItemForesignalSeverityEnum info =
      _$jsonFeedItemForesignalSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const JsonFeedItemForesignalSeverityEnum warning =
      _$jsonFeedItemForesignalSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const JsonFeedItemForesignalSeverityEnum critical =
      _$jsonFeedItemForesignalSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const JsonFeedItemForesignalSeverityEnum unknownDefaultOpenApi =
      _$jsonFeedItemForesignalSeverityEnum_unknownDefaultOpenApi;

  static Serializer<JsonFeedItemForesignalSeverityEnum> get serializer =>
      _$jsonFeedItemForesignalSeverityEnumSerializer;

  const JsonFeedItemForesignalSeverityEnum._(String name) : super(name);

  static BuiltSet<JsonFeedItemForesignalSeverityEnum> get values =>
      _$jsonFeedItemForesignalSeverityEnumValues;
  static JsonFeedItemForesignalSeverityEnum valueOf(String name) =>
      _$jsonFeedItemForesignalSeverityEnumValueOf(name);
}

class JsonFeedItemForesignalStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'firing')
  static const JsonFeedItemForesignalStateEnum firing =
      _$jsonFeedItemForesignalStateEnum_firing;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const JsonFeedItemForesignalStateEnum acknowledged =
      _$jsonFeedItemForesignalStateEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const JsonFeedItemForesignalStateEnum resolved =
      _$jsonFeedItemForesignalStateEnum_resolved;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const JsonFeedItemForesignalStateEnum unknownDefaultOpenApi =
      _$jsonFeedItemForesignalStateEnum_unknownDefaultOpenApi;

  static Serializer<JsonFeedItemForesignalStateEnum> get serializer =>
      _$jsonFeedItemForesignalStateEnumSerializer;

  const JsonFeedItemForesignalStateEnum._(String name) : super(name);

  static BuiltSet<JsonFeedItemForesignalStateEnum> get values =>
      _$jsonFeedItemForesignalStateEnumValues;
  static JsonFeedItemForesignalStateEnum valueOf(String name) =>
      _$jsonFeedItemForesignalStateEnumValueOf(name);
}
