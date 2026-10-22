//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_origin.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_event_item.g.dart';

/// A discrete occurrence
///
/// Properties:
/// * [stream]
/// * [type]
/// * [id]
/// * [observedAt]
/// * [properties] - Item properties, validated against the stream's payloadSchema
/// * [eventTime]
/// * [geometry]
/// * [upstreamEventId]
/// * [origin]
@BuiltValue()
abstract class EdpEventItem
    implements Built<EdpEventItem, EdpEventItemBuilder> {
  @BuiltValueField(wireName: r'stream')
  String get stream;

  @BuiltValueField(wireName: r'type')
  EdpEventItemTypeEnum get type;
  // enum typeEnum {  event,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  /// Item properties, validated against the stream's payloadSchema
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  @BuiltValueField(wireName: r'eventTime')
  DateTime get eventTime;

  @BuiltValueField(wireName: r'geometry')
  EdpGeometry? get geometry;

  @BuiltValueField(wireName: r'upstreamEventId')
  String? get upstreamEventId;

  @BuiltValueField(wireName: r'origin')
  EdpOrigin? get origin;

  EdpEventItem._();

  factory EdpEventItem([void updates(EdpEventItemBuilder b)]) = _$EdpEventItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpEventItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpEventItem> get serializer => _$EdpEventItemSerializer();
}

class _$EdpEventItemSerializer implements PrimitiveSerializer<EdpEventItem> {
  @override
  final Iterable<Type> types = const [EdpEventItem, _$EdpEventItem];

  @override
  final String wireName = r'EdpEventItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpEventItem object, {
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
      specifiedType: const FullType(EdpEventItemTypeEnum),
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
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'eventTime';
    yield serializers.serialize(
      object.eventTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(EdpGeometry),
      );
    }
    if (object.upstreamEventId != null) {
      yield r'upstreamEventId';
      yield serializers.serialize(
        object.upstreamEventId,
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
    EdpEventItem object, {
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
    required EdpEventItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'stream':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.stream = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpEventItemTypeEnum),
                  )
                  as EdpEventItemTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
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
        case r'eventTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.eventTime = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpGeometry),
                  )
                  as EdpGeometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'upstreamEventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.upstreamEventId = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpOrigin),
                  )
                  as EdpOrigin?;
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
  EdpEventItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpEventItemBuilder();
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

class EdpEventItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event')
  static const EdpEventItemTypeEnum event = _$edpEventItemTypeEnum_event;

  static Serializer<EdpEventItemTypeEnum> get serializer =>
      _$edpEventItemTypeEnumSerializer;

  const EdpEventItemTypeEnum._(String name) : super(name);

  static BuiltSet<EdpEventItemTypeEnum> get values =>
      _$edpEventItemTypeEnumValues;
  static EdpEventItemTypeEnum valueOf(String name) =>
      _$edpEventItemTypeEnumValueOf(name);
}
