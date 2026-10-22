//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_corroboration_event_quality.g.dart';

/// The thresholds for an intelligence event's evidence-quality label
///
/// Properties:
/// * [strongFamilies] - Distinct signal families a strong event needs (default 3)
/// * [strongGroups] - Independent evidence groups a strong event needs (default 2)
/// * [moderateFamilies] - Distinct signal families a moderate event needs (default 2)
/// * [requireModalities] - Distinct sensing modalities a strong event also needs, or 0 to not require any (default 0). A modality is sensor, imagery, official, social, media, crowd, operator or derived, derived from the originator class.
@BuiltValue()
abstract class IntelCorroborationEventQuality
    implements
        Built<IntelCorroborationEventQuality,
            IntelCorroborationEventQualityBuilder> {
  /// Distinct signal families a strong event needs (default 3)
  @BuiltValueField(wireName: r'strongFamilies')
  int? get strongFamilies;

  /// Independent evidence groups a strong event needs (default 2)
  @BuiltValueField(wireName: r'strongGroups')
  int? get strongGroups;

  /// Distinct signal families a moderate event needs (default 2)
  @BuiltValueField(wireName: r'moderateFamilies')
  int? get moderateFamilies;

  /// Distinct sensing modalities a strong event also needs, or 0 to not require any (default 0). A modality is sensor, imagery, official, social, media, crowd, operator or derived, derived from the originator class.
  @BuiltValueField(wireName: r'requireModalities')
  int? get requireModalities;

  IntelCorroborationEventQuality._();

  factory IntelCorroborationEventQuality(
          [void updates(IntelCorroborationEventQualityBuilder b)]) =
      _$IntelCorroborationEventQuality;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelCorroborationEventQualityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelCorroborationEventQuality> get serializer =>
      _$IntelCorroborationEventQualitySerializer();
}

class _$IntelCorroborationEventQualitySerializer
    implements PrimitiveSerializer<IntelCorroborationEventQuality> {
  @override
  final Iterable<Type> types = const [
    IntelCorroborationEventQuality,
    _$IntelCorroborationEventQuality
  ];

  @override
  final String wireName = r'IntelCorroborationEventQuality';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelCorroborationEventQuality object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.strongFamilies != null) {
      yield r'strongFamilies';
      yield serializers.serialize(
        object.strongFamilies,
        specifiedType: const FullType(int),
      );
    }
    if (object.strongGroups != null) {
      yield r'strongGroups';
      yield serializers.serialize(
        object.strongGroups,
        specifiedType: const FullType(int),
      );
    }
    if (object.moderateFamilies != null) {
      yield r'moderateFamilies';
      yield serializers.serialize(
        object.moderateFamilies,
        specifiedType: const FullType(int),
      );
    }
    if (object.requireModalities != null) {
      yield r'requireModalities';
      yield serializers.serialize(
        object.requireModalities,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelCorroborationEventQuality object, {
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
    required IntelCorroborationEventQualityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'strongFamilies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.strongFamilies = valueDes;
          break;
        case r'strongGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.strongGroups = valueDes;
          break;
        case r'moderateFamilies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.moderateFamilies = valueDes;
          break;
        case r'requireModalities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.requireModalities = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelCorroborationEventQuality deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelCorroborationEventQualityBuilder();
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
