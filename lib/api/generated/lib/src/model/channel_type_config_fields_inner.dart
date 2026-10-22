//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_type_config_fields_inner.g.dart';

/// ChannelTypeConfigFieldsInner
///
/// Properties:
/// * [name]
/// * [type]
/// * [required_]
/// * [description]
/// * [default_]
/// * [allowed]
@BuiltValue()
abstract class ChannelTypeConfigFieldsInner
    implements
        Built<
          ChannelTypeConfigFieldsInner,
          ChannelTypeConfigFieldsInnerBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  ChannelTypeConfigFieldsInnerTypeEnum get type;
  // enum typeEnum {  string,  url,  integer,  number,  boolean,  string-list,  map,  enum,  };

  @BuiltValueField(wireName: r'required')
  bool get required_;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'default')
  JsonObject? get default_;

  @BuiltValueField(wireName: r'allowed')
  BuiltList<String>? get allowed;

  ChannelTypeConfigFieldsInner._();

  factory ChannelTypeConfigFieldsInner([
    void updates(ChannelTypeConfigFieldsInnerBuilder b),
  ]) = _$ChannelTypeConfigFieldsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelTypeConfigFieldsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelTypeConfigFieldsInner> get serializer =>
      _$ChannelTypeConfigFieldsInnerSerializer();
}

class _$ChannelTypeConfigFieldsInnerSerializer
    implements PrimitiveSerializer<ChannelTypeConfigFieldsInner> {
  @override
  final Iterable<Type> types = const [
    ChannelTypeConfigFieldsInner,
    _$ChannelTypeConfigFieldsInner,
  ];

  @override
  final String wireName = r'ChannelTypeConfigFieldsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelTypeConfigFieldsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ChannelTypeConfigFieldsInnerTypeEnum),
    );
    yield r'required';
    yield serializers.serialize(
      object.required_,
      specifiedType: const FullType(bool),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.allowed != null) {
      yield r'allowed';
      yield serializers.serialize(
        object.allowed,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelTypeConfigFieldsInner object, {
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
    required ChannelTypeConfigFieldsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChannelTypeConfigFieldsInnerTypeEnum,
                    ),
                  )
                  as ChannelTypeConfigFieldsInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'required':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.required_ = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'default':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'allowed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelTypeConfigFieldsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelTypeConfigFieldsInnerBuilder();
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

class ChannelTypeConfigFieldsInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'string')
  static const ChannelTypeConfigFieldsInnerTypeEnum string =
      _$channelTypeConfigFieldsInnerTypeEnum_string;
  @BuiltValueEnumConst(wireName: r'url')
  static const ChannelTypeConfigFieldsInnerTypeEnum url =
      _$channelTypeConfigFieldsInnerTypeEnum_url;
  @BuiltValueEnumConst(wireName: r'integer')
  static const ChannelTypeConfigFieldsInnerTypeEnum integer =
      _$channelTypeConfigFieldsInnerTypeEnum_integer;
  @BuiltValueEnumConst(wireName: r'number')
  static const ChannelTypeConfigFieldsInnerTypeEnum number =
      _$channelTypeConfigFieldsInnerTypeEnum_number;
  @BuiltValueEnumConst(wireName: r'boolean')
  static const ChannelTypeConfigFieldsInnerTypeEnum boolean =
      _$channelTypeConfigFieldsInnerTypeEnum_boolean;
  @BuiltValueEnumConst(wireName: r'string-list')
  static const ChannelTypeConfigFieldsInnerTypeEnum stringList =
      _$channelTypeConfigFieldsInnerTypeEnum_stringList;
  @BuiltValueEnumConst(wireName: r'map')
  static const ChannelTypeConfigFieldsInnerTypeEnum map =
      _$channelTypeConfigFieldsInnerTypeEnum_map;
  @BuiltValueEnumConst(wireName: r'enum')
  static const ChannelTypeConfigFieldsInnerTypeEnum enum_ =
      _$channelTypeConfigFieldsInnerTypeEnum_enum_;

  static Serializer<ChannelTypeConfigFieldsInnerTypeEnum> get serializer =>
      _$channelTypeConfigFieldsInnerTypeEnumSerializer;

  const ChannelTypeConfigFieldsInnerTypeEnum._(String name) : super(name);

  static BuiltSet<ChannelTypeConfigFieldsInnerTypeEnum> get values =>
      _$channelTypeConfigFieldsInnerTypeEnumValues;
  static ChannelTypeConfigFieldsInnerTypeEnum valueOf(String name) =>
      _$channelTypeConfigFieldsInnerTypeEnumValueOf(name);
}
