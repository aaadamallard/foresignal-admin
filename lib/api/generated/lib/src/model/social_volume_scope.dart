//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_volume_scope.g.dart';

/// What is counted
///
/// Properties:
/// * [type]
/// * [id]
@BuiltValue()
abstract class SocialVolumeScope
    implements Built<SocialVolumeScope, SocialVolumeScopeBuilder> {
  @BuiltValueField(wireName: r'type')
  SocialVolumeScopeTypeEnum get type;
  // enum typeEnum {  topic,  place,  entity,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  SocialVolumeScope._();

  factory SocialVolumeScope([void updates(SocialVolumeScopeBuilder b)]) =
      _$SocialVolumeScope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVolumeScopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVolumeScope> get serializer =>
      _$SocialVolumeScopeSerializer();
}

class _$SocialVolumeScopeSerializer
    implements PrimitiveSerializer<SocialVolumeScope> {
  @override
  final Iterable<Type> types = const [SocialVolumeScope, _$SocialVolumeScope];

  @override
  final String wireName = r'SocialVolumeScope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVolumeScope object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SocialVolumeScopeTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialVolumeScope object, {
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
    required SocialVolumeScopeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialVolumeScopeTypeEnum),
                  )
                  as SocialVolumeScopeTypeEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialVolumeScope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVolumeScopeBuilder();
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

class SocialVolumeScopeTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'topic')
  static const SocialVolumeScopeTypeEnum topic =
      _$socialVolumeScopeTypeEnum_topic;
  @BuiltValueEnumConst(wireName: r'place')
  static const SocialVolumeScopeTypeEnum place =
      _$socialVolumeScopeTypeEnum_place;
  @BuiltValueEnumConst(wireName: r'entity')
  static const SocialVolumeScopeTypeEnum entity =
      _$socialVolumeScopeTypeEnum_entity;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialVolumeScopeTypeEnum unknownDefaultOpenApi =
      _$socialVolumeScopeTypeEnum_unknownDefaultOpenApi;

  static Serializer<SocialVolumeScopeTypeEnum> get serializer =>
      _$socialVolumeScopeTypeEnumSerializer;

  const SocialVolumeScopeTypeEnum._(String name) : super(name);

  static BuiltSet<SocialVolumeScopeTypeEnum> get values =>
      _$socialVolumeScopeTypeEnumValues;
  static SocialVolumeScopeTypeEnum valueOf(String name) =>
      _$socialVolumeScopeTypeEnumValueOf(name);
}
