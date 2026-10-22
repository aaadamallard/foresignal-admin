//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_settings_velocity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_settings_cues.dart';
import 'package:foresignal_api/src/model/social_settings_attention_gap.dart';
import 'package:foresignal_api/src/model/social_settings_track_record.dart';
import 'package:foresignal_api/src/model/social_settings_compare.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings.g.dart';

/// Instance social settings (`social.*`): languages, coverage, velocity, claim extraction, track-record grading, media, comparisons, attention gaps and cues (135–137). Platform settings live on `/v1/social/platforms/{platformId}`
///
/// Properties:
/// * [languages] - Detection languages (Lingua)
/// * [minRegionBaseline] - Posts per hour below which social observability is LOW_SOCIAL_COVERAGE
/// * [velocity]
/// * [llmClaimMinPosts]
/// * [llmClaimMinEvidenceGroups] - Evidence groups that make a narrative eligible for LLM claim extraction whatever its size; fixed at 5 in this release (a PUT with another value is refused)
/// * [keepMedia] - Store fingerprinted images in 043 under the post's retention
/// * [trackRecord]
/// * [compare]
/// * [attentionGap]
/// * [cues]
@BuiltValue()
abstract class SocialSettings
    implements Built<SocialSettings, SocialSettingsBuilder> {
  /// Detection languages (Lingua)
  @BuiltValueField(wireName: r'languages')
  BuiltList<String>? get languages;

  /// Posts per hour below which social observability is LOW_SOCIAL_COVERAGE
  @BuiltValueField(wireName: r'minRegionBaseline')
  num? get minRegionBaseline;

  @BuiltValueField(wireName: r'velocity')
  SocialSettingsVelocity? get velocity;

  @BuiltValueField(wireName: r'llmClaimMinPosts')
  int? get llmClaimMinPosts;

  /// Evidence groups that make a narrative eligible for LLM claim extraction whatever its size; fixed at 5 in this release (a PUT with another value is refused)
  @BuiltValueField(wireName: r'llmClaimMinEvidenceGroups')
  int? get llmClaimMinEvidenceGroups;

  /// Store fingerprinted images in 043 under the post's retention
  @BuiltValueField(wireName: r'keepMedia')
  bool? get keepMedia;

  @BuiltValueField(wireName: r'trackRecord')
  SocialSettingsTrackRecord? get trackRecord;

  @BuiltValueField(wireName: r'compare')
  SocialSettingsCompare? get compare;

  @BuiltValueField(wireName: r'attentionGap')
  SocialSettingsAttentionGap? get attentionGap;

  @BuiltValueField(wireName: r'cues')
  SocialSettingsCues? get cues;

  SocialSettings._();

  factory SocialSettings([void updates(SocialSettingsBuilder b)]) =
      _$SocialSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettings> get serializer =>
      _$SocialSettingsSerializer();
}

class _$SocialSettingsSerializer
    implements PrimitiveSerializer<SocialSettings> {
  @override
  final Iterable<Type> types = const [SocialSettings, _$SocialSettings];

  @override
  final String wireName = r'SocialSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.minRegionBaseline != null) {
      yield r'minRegionBaseline';
      yield serializers.serialize(
        object.minRegionBaseline,
        specifiedType: const FullType(num),
      );
    }
    if (object.velocity != null) {
      yield r'velocity';
      yield serializers.serialize(
        object.velocity,
        specifiedType: const FullType(SocialSettingsVelocity),
      );
    }
    if (object.llmClaimMinPosts != null) {
      yield r'llmClaimMinPosts';
      yield serializers.serialize(
        object.llmClaimMinPosts,
        specifiedType: const FullType(int),
      );
    }
    if (object.llmClaimMinEvidenceGroups != null) {
      yield r'llmClaimMinEvidenceGroups';
      yield serializers.serialize(
        object.llmClaimMinEvidenceGroups,
        specifiedType: const FullType(int),
      );
    }
    if (object.keepMedia != null) {
      yield r'keepMedia';
      yield serializers.serialize(
        object.keepMedia,
        specifiedType: const FullType(bool),
      );
    }
    if (object.trackRecord != null) {
      yield r'trackRecord';
      yield serializers.serialize(
        object.trackRecord,
        specifiedType: const FullType(SocialSettingsTrackRecord),
      );
    }
    if (object.compare != null) {
      yield r'compare';
      yield serializers.serialize(
        object.compare,
        specifiedType: const FullType(SocialSettingsCompare),
      );
    }
    if (object.attentionGap != null) {
      yield r'attentionGap';
      yield serializers.serialize(
        object.attentionGap,
        specifiedType: const FullType(SocialSettingsAttentionGap),
      );
    }
    if (object.cues != null) {
      yield r'cues';
      yield serializers.serialize(
        object.cues,
        specifiedType: const FullType(SocialSettingsCues),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettings object, {
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
    required SocialSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'minRegionBaseline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minRegionBaseline = valueDes;
          break;
        case r'velocity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialSettingsVelocity),
          ) as SocialSettingsVelocity?;
          if (valueDes == null) continue;
          result.velocity.replace(valueDes);
          break;
        case r'llmClaimMinPosts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.llmClaimMinPosts = valueDes;
          break;
        case r'llmClaimMinEvidenceGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.llmClaimMinEvidenceGroups = valueDes;
          break;
        case r'keepMedia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.keepMedia = valueDes;
          break;
        case r'trackRecord':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialSettingsTrackRecord),
          ) as SocialSettingsTrackRecord?;
          if (valueDes == null) continue;
          result.trackRecord.replace(valueDes);
          break;
        case r'compare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialSettingsCompare),
          ) as SocialSettingsCompare?;
          if (valueDes == null) continue;
          result.compare.replace(valueDes);
          break;
        case r'attentionGap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialSettingsAttentionGap),
          ) as SocialSettingsAttentionGap?;
          if (valueDes == null) continue;
          result.attentionGap.replace(valueDes);
          break;
        case r'cues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialSettingsCues),
          ) as SocialSettingsCues?;
          if (valueDes == null) continue;
          result.cues.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsBuilder();
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
