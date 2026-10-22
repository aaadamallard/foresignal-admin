//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/budget.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/social_platform_price.dart';
import 'package:foresignal_api/src/model/social_platform_settings_options.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_settings.g.dart';

/// Operator settings of one social platform adapter; replace semantics (135). Credentials use the existing source credential endpoints (013)
///
/// Properties:
/// * [enabled]
/// * [mode] - Adapter mode: x `counts` | `search` | `counts+search`; others null
/// * [channels] - Channels polled regardless of topics: subreddits, Mastodon instances or hashtags, YouTube channels
/// * [deletionSync] - Default on for X, Bluesky and Threads
/// * [postRetention] - Retention of this platform's posts (`social.postRetention`, default 30d)
/// * [budget] - Call budget (005)
/// * [monthlyCapUsd] - Money cap for paid platforms (X default 25)
/// * [prices] - X `social.x.prices`, seeded from the pricing page with its date
/// * [pricesAsOf]
/// * [options]
@BuiltValue()
abstract class SocialPlatformSettings
    implements Built<SocialPlatformSettings, SocialPlatformSettingsBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Adapter mode: x `counts` | `search` | `counts+search`; others null
  @BuiltValueField(wireName: r'mode')
  String? get mode;

  /// Channels polled regardless of topics: subreddits, Mastodon instances or hashtags, YouTube channels
  @BuiltValueField(wireName: r'channels')
  BuiltList<String>? get channels;

  /// Default on for X, Bluesky and Threads
  @BuiltValueField(wireName: r'deletionSync')
  bool? get deletionSync;

  /// Retention of this platform's posts (`social.postRetention`, default 30d)
  @BuiltValueField(wireName: r'postRetention')
  String? get postRetention;

  /// Call budget (005)
  @BuiltValueField(wireName: r'budget')
  Budget? get budget;

  /// Money cap for paid platforms (X default 25)
  @BuiltValueField(wireName: r'monthlyCapUsd')
  num? get monthlyCapUsd;

  /// X `social.x.prices`, seeded from the pricing page with its date
  @BuiltValueField(wireName: r'prices')
  BuiltList<SocialPlatformPrice>? get prices;

  @BuiltValueField(wireName: r'pricesAsOf')
  Date? get pricesAsOf;

  @BuiltValueField(wireName: r'options')
  SocialPlatformSettingsOptions? get options;

  SocialPlatformSettings._();

  factory SocialPlatformSettings([
    void updates(SocialPlatformSettingsBuilder b),
  ]) = _$SocialPlatformSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformSettings> get serializer =>
      _$SocialPlatformSettingsSerializer();
}

class _$SocialPlatformSettingsSerializer
    implements PrimitiveSerializer<SocialPlatformSettings> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformSettings,
    _$SocialPlatformSettings,
  ];

  @override
  final String wireName = r'SocialPlatformSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.channels != null) {
      yield r'channels';
      yield serializers.serialize(
        object.channels,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.deletionSync != null) {
      yield r'deletionSync';
      yield serializers.serialize(
        object.deletionSync,
        specifiedType: const FullType(bool),
      );
    }
    if (object.postRetention != null) {
      yield r'postRetention';
      yield serializers.serialize(
        object.postRetention,
        specifiedType: const FullType(String),
      );
    }
    if (object.budget != null) {
      yield r'budget';
      yield serializers.serialize(
        object.budget,
        specifiedType: const FullType.nullable(Budget),
      );
    }
    if (object.monthlyCapUsd != null) {
      yield r'monthlyCapUsd';
      yield serializers.serialize(
        object.monthlyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.prices != null) {
      yield r'prices';
      yield serializers.serialize(
        object.prices,
        specifiedType: const FullType(BuiltList, [
          FullType(SocialPlatformPrice),
        ]),
      );
    }
    if (object.pricesAsOf != null) {
      yield r'pricesAsOf';
      yield serializers.serialize(
        object.pricesAsOf,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(SocialPlatformSettingsOptions),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformSettings object, {
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
    required SocialPlatformSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'channels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channels.replace(valueDes);
          break;
        case r'deletionSync':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.deletionSync = valueDes;
          break;
        case r'postRetention':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.postRetention = valueDes;
          break;
        case r'budget':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Budget),
                  )
                  as Budget?;
          if (valueDes == null) continue;
          result.budget.replace(valueDes);
          break;
        case r'monthlyCapUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.monthlyCapUsd = valueDes;
          break;
        case r'prices':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SocialPlatformPrice),
                    ]),
                  )
                  as BuiltList<SocialPlatformPrice>?;
          if (valueDes == null) continue;
          result.prices.replace(valueDes);
          break;
        case r'pricesAsOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.pricesAsOf = valueDes;
          break;
        case r'options':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SocialPlatformSettingsOptions,
                    ),
                  )
                  as SocialPlatformSettingsOptions?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPlatformSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformSettingsBuilder();
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
