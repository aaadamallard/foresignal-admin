//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_coverage_bucket.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_coverage.g.dart';

/// Hourly collection coverage of one platform in one region (`social_coverage`, 135)
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [regionCode] - 040 region code; null = all regions
/// * [since]
/// * [until]
/// * [buckets]
/// * [completeShare]
/// * [baselinePostsPerHour] - Trailing 8-week baseline used by social observability
/// * [absenceOk] - `canSeeAbsence(social-attention, region, window)`: a healthy complete-stream platform and baseline ≥ `social.minRegionBaseline`
/// * [reason] - LOW_SOCIAL_COVERAGE or a gap reason when absenceOk is false
@BuiltValue()
abstract class SocialCoverage
    implements Built<SocialCoverage, SocialCoverageBuilder> {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  /// 040 region code; null = all regions
  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  @BuiltValueField(wireName: r'since')
  DateTime get since;

  @BuiltValueField(wireName: r'until')
  DateTime get until;

  @BuiltValueField(wireName: r'buckets')
  BuiltList<SocialCoverageBucket> get buckets;

  @BuiltValueField(wireName: r'completeShare')
  num get completeShare;

  /// Trailing 8-week baseline used by social observability
  @BuiltValueField(wireName: r'baselinePostsPerHour')
  num? get baselinePostsPerHour;

  /// `canSeeAbsence(social-attention, region, window)`: a healthy complete-stream platform and baseline ≥ `social.minRegionBaseline`
  @BuiltValueField(wireName: r'absenceOk')
  bool get absenceOk;

  /// LOW_SOCIAL_COVERAGE or a gap reason when absenceOk is false
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  SocialCoverage._();

  factory SocialCoverage([void updates(SocialCoverageBuilder b)]) =
      _$SocialCoverage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCoverageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCoverage> get serializer =>
      _$SocialCoverageSerializer();
}

class _$SocialCoverageSerializer
    implements PrimitiveSerializer<SocialCoverage> {
  @override
  final Iterable<Type> types = const [SocialCoverage, _$SocialCoverage];

  @override
  final String wireName = r'SocialCoverage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCoverage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    if (object.regionCode != null) {
      yield r'regionCode';
      yield serializers.serialize(
        object.regionCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'since';
    yield serializers.serialize(
      object.since,
      specifiedType: const FullType(DateTime),
    );
    yield r'until';
    yield serializers.serialize(
      object.until,
      specifiedType: const FullType(DateTime),
    );
    yield r'buckets';
    yield serializers.serialize(
      object.buckets,
      specifiedType: const FullType(BuiltList, [
        FullType(SocialCoverageBucket),
      ]),
    );
    yield r'completeShare';
    yield serializers.serialize(
      object.completeShare,
      specifiedType: const FullType(num),
    );
    if (object.baselinePostsPerHour != null) {
      yield r'baselinePostsPerHour';
      yield serializers.serialize(
        object.baselinePostsPerHour,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'absenceOk';
    yield serializers.serialize(
      object.absenceOk,
      specifiedType: const FullType(bool),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCoverage object, {
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
    required SocialCoverageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.platform = valueDes;
          break;
        case r'regionCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        case r'since':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.since = valueDes;
          break;
        case r'until':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.until = valueDes;
          break;
        case r'buckets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SocialCoverageBucket),
                    ]),
                  )
                  as BuiltList<SocialCoverageBucket>;
          result.buckets.replace(valueDes);
          break;
        case r'completeShare':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.completeShare = valueDes;
          break;
        case r'baselinePostsPerHour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.baselinePostsPerHour = valueDes;
          break;
        case r'absenceOk':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.absenceOk = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCoverage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCoverageBuilder();
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
