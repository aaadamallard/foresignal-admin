//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_platform_id.dart';
import 'package:foresignal_api/src/model/social_settings_cues_xai_x_search.dart';
import 'package:foresignal_api/src/model/social_settings_cues_triggers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_cues.g.dart';

/// Automatic and manual cues
///
/// Properties:
/// * [enabled]
/// * [triggers]
/// * [maxPerDay]
/// * [maxCostUsdPerCue]
/// * [platforms] - Search-capable adapters cues may use; default all enabled
/// * [xaiXSearch]
@BuiltValue()
abstract class SocialSettingsCues
    implements Built<SocialSettingsCues, SocialSettingsCuesBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'triggers')
  SocialSettingsCuesTriggers? get triggers;

  @BuiltValueField(wireName: r'maxPerDay')
  int? get maxPerDay;

  @BuiltValueField(wireName: r'maxCostUsdPerCue')
  num? get maxCostUsdPerCue;

  /// Search-capable adapters cues may use; default all enabled
  @BuiltValueField(wireName: r'platforms')
  BuiltList<SocialPlatformId>? get platforms;

  @BuiltValueField(wireName: r'xaiXSearch')
  SocialSettingsCuesXaiXSearch? get xaiXSearch;

  SocialSettingsCues._();

  factory SocialSettingsCues([void updates(SocialSettingsCuesBuilder b)]) =
      _$SocialSettingsCues;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsCuesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsCues> get serializer =>
      _$SocialSettingsCuesSerializer();
}

class _$SocialSettingsCuesSerializer
    implements PrimitiveSerializer<SocialSettingsCues> {
  @override
  final Iterable<Type> types = const [SocialSettingsCues, _$SocialSettingsCues];

  @override
  final String wireName = r'SocialSettingsCues';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsCues object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.triggers != null) {
      yield r'triggers';
      yield serializers.serialize(
        object.triggers,
        specifiedType: const FullType(SocialSettingsCuesTriggers),
      );
    }
    if (object.maxPerDay != null) {
      yield r'maxPerDay';
      yield serializers.serialize(
        object.maxPerDay,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxCostUsdPerCue != null) {
      yield r'maxCostUsdPerCue';
      yield serializers.serialize(
        object.maxCostUsdPerCue,
        specifiedType: const FullType(num),
      );
    }
    if (object.platforms != null) {
      yield r'platforms';
      yield serializers.serialize(
        object.platforms,
        specifiedType: const FullType(BuiltList, [FullType(SocialPlatformId)]),
      );
    }
    if (object.xaiXSearch != null) {
      yield r'xaiXSearch';
      yield serializers.serialize(
        object.xaiXSearch,
        specifiedType: const FullType(SocialSettingsCuesXaiXSearch),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsCues object, {
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
    required SocialSettingsCuesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'triggers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialSettingsCuesTriggers),
          ) as SocialSettingsCuesTriggers?;
          if (valueDes == null) continue;
          result.triggers.replace(valueDes);
          break;
        case r'maxPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxPerDay = valueDes;
          break;
        case r'maxCostUsdPerCue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxCostUsdPerCue = valueDes;
          break;
        case r'platforms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SocialPlatformId)]),
          ) as BuiltList<SocialPlatformId>?;
          if (valueDes == null) continue;
          result.platforms.replace(valueDes);
          break;
        case r'xaiXSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(SocialSettingsCuesXaiXSearch),
          ) as SocialSettingsCuesXaiXSearch?;
          if (valueDes == null) continue;
          result.xaiXSearch.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsCues deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsCuesBuilder();
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
