//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_velocity_event_scope.g.dart';

/// Scope
///
/// Properties:
/// * [type]
/// * [id]
@BuiltValue()
abstract class SocialVelocityEventScope
    implements
        Built<SocialVelocityEventScope, SocialVelocityEventScopeBuilder> {
  @BuiltValueField(wireName: r'type')
  SocialVelocityEventScopeTypeEnum get type;
  // enum typeEnum {  topic,  place,  entity,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  SocialVelocityEventScope._();

  factory SocialVelocityEventScope(
          [void updates(SocialVelocityEventScopeBuilder b)]) =
      _$SocialVelocityEventScope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVelocityEventScopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVelocityEventScope> get serializer =>
      _$SocialVelocityEventScopeSerializer();
}

class _$SocialVelocityEventScopeSerializer
    implements PrimitiveSerializer<SocialVelocityEventScope> {
  @override
  final Iterable<Type> types = const [
    SocialVelocityEventScope,
    _$SocialVelocityEventScope
  ];

  @override
  final String wireName = r'SocialVelocityEventScope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVelocityEventScope object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SocialVelocityEventScopeTypeEnum),
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
    SocialVelocityEventScope object, {
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
    required SocialVelocityEventScopeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialVelocityEventScopeTypeEnum),
          ) as SocialVelocityEventScopeTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  SocialVelocityEventScope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVelocityEventScopeBuilder();
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

class SocialVelocityEventScopeTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'topic')
  static const SocialVelocityEventScopeTypeEnum topic =
      _$socialVelocityEventScopeTypeEnum_topic;
  @BuiltValueEnumConst(wireName: r'place')
  static const SocialVelocityEventScopeTypeEnum place =
      _$socialVelocityEventScopeTypeEnum_place;
  @BuiltValueEnumConst(wireName: r'entity')
  static const SocialVelocityEventScopeTypeEnum entity =
      _$socialVelocityEventScopeTypeEnum_entity;

  static Serializer<SocialVelocityEventScopeTypeEnum> get serializer =>
      _$socialVelocityEventScopeTypeEnumSerializer;

  const SocialVelocityEventScopeTypeEnum._(String name) : super(name);

  static BuiltSet<SocialVelocityEventScopeTypeEnum> get values =>
      _$socialVelocityEventScopeTypeEnumValues;
  static SocialVelocityEventScopeTypeEnum valueOf(String name) =>
      _$socialVelocityEventScopeTypeEnumValueOf(name);
}
