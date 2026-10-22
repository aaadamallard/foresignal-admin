//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_origin.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_observation_item.g.dart';

/// A value of a series
///
/// Properties:
/// * [stream]
/// * [type]
/// * [id]
/// * [observedAt]
/// * [properties] - Item properties, validated against the stream's payloadSchema
/// * [seriesKey]
/// * [t] - Period or instant: YYYY, YYYY-Qn, YYYY-MM, YYYY-Www (ISO week), YYYY-MM-DD, or an RFC 3339 timestamp with offset. Periods are UTC intervals [start, end); one series uses one granularity.
/// * [value]
/// * [knownAt] - Provider-claimed availability time; stored as given. Foresignal uses max(knownAt, its own receipt time) for as-of and look-ahead rules.
/// * [unit]
/// * [origin]
@BuiltValue()
abstract class EdpObservationItem
    implements Built<EdpObservationItem, EdpObservationItemBuilder> {
  @BuiltValueField(wireName: r'stream')
  String get stream;

  @BuiltValueField(wireName: r'type')
  EdpObservationItemTypeEnum get type;
  // enum typeEnum {  observation,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  /// Item properties, validated against the stream's payloadSchema
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  @BuiltValueField(wireName: r'seriesKey')
  String get seriesKey;

  /// Period or instant: YYYY, YYYY-Qn, YYYY-MM, YYYY-Www (ISO week), YYYY-MM-DD, or an RFC 3339 timestamp with offset. Periods are UTC intervals [start, end); one series uses one granularity.
  @BuiltValueField(wireName: r't')
  String get t;

  @BuiltValueField(wireName: r'value')
  num? get value;

  /// Provider-claimed availability time; stored as given. Foresignal uses max(knownAt, its own receipt time) for as-of and look-ahead rules.
  @BuiltValueField(wireName: r'knownAt')
  DateTime? get knownAt;

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'origin')
  EdpOrigin? get origin;

  EdpObservationItem._();

  factory EdpObservationItem([void updates(EdpObservationItemBuilder b)]) =
      _$EdpObservationItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpObservationItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpObservationItem> get serializer =>
      _$EdpObservationItemSerializer();
}

class _$EdpObservationItemSerializer
    implements PrimitiveSerializer<EdpObservationItem> {
  @override
  final Iterable<Type> types = const [EdpObservationItem, _$EdpObservationItem];

  @override
  final String wireName = r'EdpObservationItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpObservationItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'stream';
    yield serializers.serialize(
      object.stream,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EdpObservationItemTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'seriesKey';
    yield serializers.serialize(
      object.seriesKey,
      specifiedType: const FullType(String),
    );
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield object.value == null
        ? null
        : serializers.serialize(
            object.value,
            specifiedType: const FullType.nullable(num),
          );
    if (object.knownAt != null) {
      yield r'knownAt';
      yield serializers.serialize(
        object.knownAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType.nullable(EdpOrigin),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpObservationItem object, {
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
    required EdpObservationItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'stream':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stream = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EdpObservationItemTypeEnum),
          ) as EdpObservationItemTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'observedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        case r'properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
          break;
        case r'seriesKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.seriesKey = valueDes;
          break;
        case r't':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'knownAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.knownAt = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpOrigin),
          ) as EdpOrigin?;
          if (valueDes == null) continue;
          result.origin.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpObservationItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpObservationItemBuilder();
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

class EdpObservationItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'observation')
  static const EdpObservationItemTypeEnum observation =
      _$edpObservationItemTypeEnum_observation;

  static Serializer<EdpObservationItemTypeEnum> get serializer =>
      _$edpObservationItemTypeEnumSerializer;

  const EdpObservationItemTypeEnum._(String name) : super(name);

  static BuiltSet<EdpObservationItemTypeEnum> get values =>
      _$edpObservationItemTypeEnumValues;
  static EdpObservationItemTypeEnum valueOf(String name) =>
      _$edpObservationItemTypeEnumValueOf(name);
}
