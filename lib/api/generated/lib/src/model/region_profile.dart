//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'region_profile.g.dart';

/// Reporting density of a region, used for `LOW_REPORTING_DENSITY`
///
/// Properties:
/// * [regionCode] - 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
/// * [reportingDensity] - Weekly text-source event count ÷ median of similar-population countries
/// * [densityDecile]
/// * [computedAt]
@BuiltValue()
abstract class RegionProfile
    implements Built<RegionProfile, RegionProfileBuilder> {
  /// 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
  @BuiltValueField(wireName: r'regionCode')
  String get regionCode;

  /// Weekly text-source event count ÷ median of similar-population countries
  @BuiltValueField(wireName: r'reportingDensity')
  num get reportingDensity;

  @BuiltValueField(wireName: r'densityDecile')
  int get densityDecile;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  RegionProfile._();

  factory RegionProfile([void updates(RegionProfileBuilder b)]) =
      _$RegionProfile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionProfile> get serializer =>
      _$RegionProfileSerializer();
}

class _$RegionProfileSerializer implements PrimitiveSerializer<RegionProfile> {
  @override
  final Iterable<Type> types = const [RegionProfile, _$RegionProfile];

  @override
  final String wireName = r'RegionProfile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'regionCode';
    yield serializers.serialize(
      object.regionCode,
      specifiedType: const FullType(String),
    );
    yield r'reportingDensity';
    yield serializers.serialize(
      object.reportingDensity,
      specifiedType: const FullType(num),
    );
    yield r'densityDecile';
    yield serializers.serialize(
      object.densityDecile,
      specifiedType: const FullType(int),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionProfile object, {
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
    required RegionProfileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'regionCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.regionCode = valueDes;
          break;
        case r'reportingDensity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.reportingDensity = valueDes;
          break;
        case r'densityDecile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.densityDecile = valueDes;
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionProfile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionProfileBuilder();
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
