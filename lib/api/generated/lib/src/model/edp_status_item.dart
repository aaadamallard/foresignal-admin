//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_status_item.g.dart';

/// Provider health (no record). Without stream it is the source's health; with stream, that stream's health.
///
/// Properties:
/// * [stream]
/// * [type]
/// * [health]
/// * [message]
@BuiltValue()
abstract class EdpStatusItem
    implements Built<EdpStatusItem, EdpStatusItemBuilder> {
  @BuiltValueField(wireName: r'stream')
  String? get stream;

  @BuiltValueField(wireName: r'type')
  EdpStatusItemTypeEnum get type;
  // enum typeEnum {  status,  };

  @BuiltValueField(wireName: r'health')
  EdpStatusItemHealthEnum get health;
  // enum healthEnum {  ok,  degraded,  blocked,  layout-changed,  geo-restricted,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  EdpStatusItem._();

  factory EdpStatusItem([void updates(EdpStatusItemBuilder b)]) =
      _$EdpStatusItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpStatusItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpStatusItem> get serializer =>
      _$EdpStatusItemSerializer();
}

class _$EdpStatusItemSerializer implements PrimitiveSerializer<EdpStatusItem> {
  @override
  final Iterable<Type> types = const [EdpStatusItem, _$EdpStatusItem];

  @override
  final String wireName = r'EdpStatusItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpStatusItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.stream != null) {
      yield r'stream';
      yield serializers.serialize(
        object.stream,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EdpStatusItemTypeEnum),
    );
    yield r'health';
    yield serializers.serialize(
      object.health,
      specifiedType: const FullType(EdpStatusItemHealthEnum),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpStatusItem object, {
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
    required EdpStatusItemBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.stream = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpStatusItemTypeEnum),
                  )
                  as EdpStatusItemTypeEnum;
          result.type = valueDes;
          break;
        case r'health':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpStatusItemHealthEnum),
                  )
                  as EdpStatusItemHealthEnum;
          result.health = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpStatusItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpStatusItemBuilder();
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

class EdpStatusItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'status')
  static const EdpStatusItemTypeEnum status = _$edpStatusItemTypeEnum_status;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdpStatusItemTypeEnum unknownDefaultOpenApi =
      _$edpStatusItemTypeEnum_unknownDefaultOpenApi;

  static Serializer<EdpStatusItemTypeEnum> get serializer =>
      _$edpStatusItemTypeEnumSerializer;

  const EdpStatusItemTypeEnum._(String name) : super(name);

  static BuiltSet<EdpStatusItemTypeEnum> get values =>
      _$edpStatusItemTypeEnumValues;
  static EdpStatusItemTypeEnum valueOf(String name) =>
      _$edpStatusItemTypeEnumValueOf(name);
}

class EdpStatusItemHealthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const EdpStatusItemHealthEnum ok = _$edpStatusItemHealthEnum_ok;
  @BuiltValueEnumConst(wireName: r'degraded')
  static const EdpStatusItemHealthEnum degraded =
      _$edpStatusItemHealthEnum_degraded;
  @BuiltValueEnumConst(wireName: r'blocked')
  static const EdpStatusItemHealthEnum blocked =
      _$edpStatusItemHealthEnum_blocked;
  @BuiltValueEnumConst(wireName: r'layout-changed')
  static const EdpStatusItemHealthEnum layoutChanged =
      _$edpStatusItemHealthEnum_layoutChanged;
  @BuiltValueEnumConst(wireName: r'geo-restricted')
  static const EdpStatusItemHealthEnum geoRestricted =
      _$edpStatusItemHealthEnum_geoRestricted;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdpStatusItemHealthEnum unknownDefaultOpenApi =
      _$edpStatusItemHealthEnum_unknownDefaultOpenApi;

  static Serializer<EdpStatusItemHealthEnum> get serializer =>
      _$edpStatusItemHealthEnumSerializer;

  const EdpStatusItemHealthEnum._(String name) : super(name);

  static BuiltSet<EdpStatusItemHealthEnum> get values =>
      _$edpStatusItemHealthEnumValues;
  static EdpStatusItemHealthEnum valueOf(String name) =>
      _$edpStatusItemHealthEnumValueOf(name);
}
