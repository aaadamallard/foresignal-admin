//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_velocity.g.dart';

/// `social-velocity` finding thresholds
///
/// Properties:
/// * [minRatio]
/// * [minUniqueAuthors]
/// * [dedupHours]
@BuiltValue()
abstract class SocialSettingsVelocity
    implements Built<SocialSettingsVelocity, SocialSettingsVelocityBuilder> {
  @BuiltValueField(wireName: r'minRatio')
  num? get minRatio;

  @BuiltValueField(wireName: r'minUniqueAuthors')
  int? get minUniqueAuthors;

  @BuiltValueField(wireName: r'dedupHours')
  int? get dedupHours;

  SocialSettingsVelocity._();

  factory SocialSettingsVelocity([
    void updates(SocialSettingsVelocityBuilder b),
  ]) = _$SocialSettingsVelocity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsVelocityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsVelocity> get serializer =>
      _$SocialSettingsVelocitySerializer();
}

class _$SocialSettingsVelocitySerializer
    implements PrimitiveSerializer<SocialSettingsVelocity> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsVelocity,
    _$SocialSettingsVelocity,
  ];

  @override
  final String wireName = r'SocialSettingsVelocity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsVelocity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minRatio != null) {
      yield r'minRatio';
      yield serializers.serialize(
        object.minRatio,
        specifiedType: const FullType(num),
      );
    }
    if (object.minUniqueAuthors != null) {
      yield r'minUniqueAuthors';
      yield serializers.serialize(
        object.minUniqueAuthors,
        specifiedType: const FullType(int),
      );
    }
    if (object.dedupHours != null) {
      yield r'dedupHours';
      yield serializers.serialize(
        object.dedupHours,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsVelocity object, {
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
    required SocialSettingsVelocityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minRatio':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.minRatio = valueDes;
          break;
        case r'minUniqueAuthors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minUniqueAuthors = valueDes;
          break;
        case r'dedupHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.dedupHours = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsVelocity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsVelocityBuilder();
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
