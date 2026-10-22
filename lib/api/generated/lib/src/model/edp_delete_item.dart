//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_delete_item.g.dart';

/// Tombstone for {stream}:{id}; observedAt and properties are optional (kept for audit)
///
/// Properties:
/// * [stream]
/// * [type]
/// * [id]
/// * [observedAt]
/// * [properties] - Item properties, validated against the stream's payloadSchema
@BuiltValue()
abstract class EdpDeleteItem
    implements Built<EdpDeleteItem, EdpDeleteItemBuilder> {
  @BuiltValueField(wireName: r'stream')
  String get stream;

  @BuiltValueField(wireName: r'type')
  EdpDeleteItemTypeEnum get type;
  // enum typeEnum {  delete,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  /// Item properties, validated against the stream's payloadSchema
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  EdpDeleteItem._();

  factory EdpDeleteItem([void updates(EdpDeleteItemBuilder b)]) =
      _$EdpDeleteItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpDeleteItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpDeleteItem> get serializer =>
      _$EdpDeleteItemSerializer();
}

class _$EdpDeleteItemSerializer implements PrimitiveSerializer<EdpDeleteItem> {
  @override
  final Iterable<Type> types = const [EdpDeleteItem, _$EdpDeleteItem];

  @override
  final String wireName = r'EdpDeleteItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpDeleteItem object, {
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
      specifiedType: const FullType(EdpDeleteItemTypeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpDeleteItem object, {
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
    required EdpDeleteItemBuilder result,
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
            specifiedType: const FullType(EdpDeleteItemTypeEnum),
          ) as EdpDeleteItemTypeEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpDeleteItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpDeleteItemBuilder();
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

class EdpDeleteItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'delete')
  static const EdpDeleteItemTypeEnum delete = _$edpDeleteItemTypeEnum_delete;

  static Serializer<EdpDeleteItemTypeEnum> get serializer =>
      _$edpDeleteItemTypeEnumSerializer;

  const EdpDeleteItemTypeEnum._(String name) : super(name);

  static BuiltSet<EdpDeleteItemTypeEnum> get values =>
      _$edpDeleteItemTypeEnumValues;
  static EdpDeleteItemTypeEnum valueOf(String name) =>
      _$edpDeleteItemTypeEnumValueOf(name);
}
