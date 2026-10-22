//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/custom_source_input.dart';
import 'package:foresignal_api/src/model/llm_settings.dart';
import 'package:foresignal_api/src/model/trigger_rule.dart';
import 'package:foresignal_api/src/model/security_settings.dart';
import 'package:foresignal_api/src/model/settings_bundle_watchlists_inner.dart';
import 'package:foresignal_api/src/model/watchdog_settings.dart';
import 'package:foresignal_api/src/model/push_provider.dart';
import 'package:foresignal_api/src/model/briefing.dart';
import 'package:foresignal_api/src/model/settings_bundle_channels_inner.dart';
import 'package:foresignal_api/src/model/llm_provider_input.dart';
import 'package:foresignal_api/src/model/notification_settings.dart';
import 'package:foresignal_api/src/model/source_settings_update.dart';
import 'package:foresignal_api/src/model/retention_settings.dart';
import 'package:foresignal_api/src/model/server_settings.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/saved_view.dart';
import 'package:foresignal_api/src/model/cors_settings.dart';
import 'package:foresignal_api/src/model/place.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_bundle.g.dart';

/// SettingsBundle
///
/// Properties:
/// * [exportedAt]
/// * [foresignalVersion]
/// * [sources]
/// * [retention]
/// * [cors]
/// * [security]
/// * [server]
/// * [triggers] - Trigger rules with their ids; import upserts by id
/// * [channels] - Channels without secrets: ChannelInput plus id. Import upserts by id; a channel imported without secrets keeps the ones it has.
/// * [briefings]
/// * [customSources]
/// * [llmProviders]
/// * [llmSettings]
/// * [notifications]
/// * [watchdog]
/// * [pushProviders] - Without secrets (032). Import upserts by id: an existing provider keeps its key; a new one is stored disabled until an admin sets its key.
/// * [places] - Only with includePlaces=true (036)
/// * [views] - 036
/// * [watchlists] - Only with includeWatchlists=true (036)
/// * [warnings] - Export warnings (036): places reveal locations; watchlists identify what is followed
@BuiltValue()
abstract class SettingsBundle
    implements Built<SettingsBundle, SettingsBundleBuilder> {
  @BuiltValueField(wireName: r'exportedAt')
  DateTime? get exportedAt;

  @BuiltValueField(wireName: r'foresignalVersion')
  String? get foresignalVersion;

  @BuiltValueField(wireName: r'sources')
  BuiltMap<String, SourceSettingsUpdate> get sources;

  @BuiltValueField(wireName: r'retention')
  RetentionSettings? get retention;

  @BuiltValueField(wireName: r'cors')
  CorsSettings? get cors;

  @BuiltValueField(wireName: r'security')
  SecuritySettings? get security;

  @BuiltValueField(wireName: r'server')
  ServerSettings? get server;

  /// Trigger rules with their ids; import upserts by id
  @BuiltValueField(wireName: r'triggers')
  BuiltList<TriggerRule>? get triggers;

  /// Channels without secrets: ChannelInput plus id. Import upserts by id; a channel imported without secrets keeps the ones it has.
  @BuiltValueField(wireName: r'channels')
  BuiltList<SettingsBundleChannelsInner>? get channels;

  @BuiltValueField(wireName: r'briefings')
  BuiltList<Briefing>? get briefings;

  @BuiltValueField(wireName: r'customSources')
  BuiltList<CustomSourceInput>? get customSources;

  @BuiltValueField(wireName: r'llmProviders')
  BuiltList<LlmProviderInput>? get llmProviders;

  @BuiltValueField(wireName: r'llmSettings')
  LlmSettings? get llmSettings;

  @BuiltValueField(wireName: r'notifications')
  NotificationSettings? get notifications;

  @BuiltValueField(wireName: r'watchdog')
  WatchdogSettings? get watchdog;

  /// Without secrets (032). Import upserts by id: an existing provider keeps its key; a new one is stored disabled until an admin sets its key.
  @BuiltValueField(wireName: r'pushProviders')
  BuiltList<PushProvider>? get pushProviders;

  /// Only with includePlaces=true (036)
  @BuiltValueField(wireName: r'places')
  BuiltList<Place>? get places;

  /// 036
  @BuiltValueField(wireName: r'views')
  BuiltList<SavedView>? get views;

  /// Only with includeWatchlists=true (036)
  @BuiltValueField(wireName: r'watchlists')
  BuiltList<SettingsBundleWatchlistsInner>? get watchlists;

  /// Export warnings (036): places reveal locations; watchlists identify what is followed
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  SettingsBundle._();

  factory SettingsBundle([void updates(SettingsBundleBuilder b)]) =
      _$SettingsBundle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsBundleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsBundle> get serializer =>
      _$SettingsBundleSerializer();
}

class _$SettingsBundleSerializer
    implements PrimitiveSerializer<SettingsBundle> {
  @override
  final Iterable<Type> types = const [SettingsBundle, _$SettingsBundle];

  @override
  final String wireName = r'SettingsBundle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exportedAt != null) {
      yield r'exportedAt';
      yield serializers.serialize(
        object.exportedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.foresignalVersion != null) {
      yield r'foresignalVersion';
      yield serializers.serialize(
        object.foresignalVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(
          BuiltMap, [FullType(String), FullType(SourceSettingsUpdate)]),
    );
    if (object.retention != null) {
      yield r'retention';
      yield serializers.serialize(
        object.retention,
        specifiedType: const FullType(RetentionSettings),
      );
    }
    if (object.cors != null) {
      yield r'cors';
      yield serializers.serialize(
        object.cors,
        specifiedType: const FullType(CorsSettings),
      );
    }
    if (object.security != null) {
      yield r'security';
      yield serializers.serialize(
        object.security,
        specifiedType: const FullType(SecuritySettings),
      );
    }
    if (object.server != null) {
      yield r'server';
      yield serializers.serialize(
        object.server,
        specifiedType: const FullType(ServerSettings),
      );
    }
    if (object.triggers != null) {
      yield r'triggers';
      yield serializers.serialize(
        object.triggers,
        specifiedType: const FullType(BuiltList, [FullType(TriggerRule)]),
      );
    }
    if (object.channels != null) {
      yield r'channels';
      yield serializers.serialize(
        object.channels,
        specifiedType:
            const FullType(BuiltList, [FullType(SettingsBundleChannelsInner)]),
      );
    }
    if (object.briefings != null) {
      yield r'briefings';
      yield serializers.serialize(
        object.briefings,
        specifiedType: const FullType(BuiltList, [FullType(Briefing)]),
      );
    }
    if (object.customSources != null) {
      yield r'customSources';
      yield serializers.serialize(
        object.customSources,
        specifiedType: const FullType(BuiltList, [FullType(CustomSourceInput)]),
      );
    }
    if (object.llmProviders != null) {
      yield r'llmProviders';
      yield serializers.serialize(
        object.llmProviders,
        specifiedType: const FullType(BuiltList, [FullType(LlmProviderInput)]),
      );
    }
    if (object.llmSettings != null) {
      yield r'llmSettings';
      yield serializers.serialize(
        object.llmSettings,
        specifiedType: const FullType(LlmSettings),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(NotificationSettings),
      );
    }
    if (object.watchdog != null) {
      yield r'watchdog';
      yield serializers.serialize(
        object.watchdog,
        specifiedType: const FullType(WatchdogSettings),
      );
    }
    if (object.pushProviders != null) {
      yield r'pushProviders';
      yield serializers.serialize(
        object.pushProviders,
        specifiedType: const FullType(BuiltList, [FullType(PushProvider)]),
      );
    }
    if (object.places != null) {
      yield r'places';
      yield serializers.serialize(
        object.places,
        specifiedType: const FullType(BuiltList, [FullType(Place)]),
      );
    }
    if (object.views != null) {
      yield r'views';
      yield serializers.serialize(
        object.views,
        specifiedType: const FullType(BuiltList, [FullType(SavedView)]),
      );
    }
    if (object.watchlists != null) {
      yield r'watchlists';
      yield serializers.serialize(
        object.watchlists,
        specifiedType: const FullType(
            BuiltList, [FullType(SettingsBundleWatchlistsInner)]),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsBundle object, {
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
    required SettingsBundleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exportedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.exportedAt = valueDes;
          break;
        case r'foresignalVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.foresignalVersion = valueDes;
          break;
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType(SourceSettingsUpdate)]),
          ) as BuiltMap<String, SourceSettingsUpdate>;
          result.sources.replace(valueDes);
          break;
        case r'retention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RetentionSettings),
          ) as RetentionSettings?;
          if (valueDes == null) continue;
          result.retention.replace(valueDes);
          break;
        case r'cors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CorsSettings),
          ) as CorsSettings?;
          if (valueDes == null) continue;
          result.cors.replace(valueDes);
          break;
        case r'security':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SecuritySettings),
          ) as SecuritySettings?;
          if (valueDes == null) continue;
          result.security.replace(valueDes);
          break;
        case r'server':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ServerSettings),
          ) as ServerSettings?;
          if (valueDes == null) continue;
          result.server.replace(valueDes);
          break;
        case r'triggers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(TriggerRule)]),
          ) as BuiltList<TriggerRule>?;
          if (valueDes == null) continue;
          result.triggers.replace(valueDes);
          break;
        case r'channels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SettingsBundleChannelsInner)]),
          ) as BuiltList<SettingsBundleChannelsInner>?;
          if (valueDes == null) continue;
          result.channels.replace(valueDes);
          break;
        case r'briefings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Briefing)]),
          ) as BuiltList<Briefing>?;
          if (valueDes == null) continue;
          result.briefings.replace(valueDes);
          break;
        case r'customSources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CustomSourceInput)]),
          ) as BuiltList<CustomSourceInput>?;
          if (valueDes == null) continue;
          result.customSources.replace(valueDes);
          break;
        case r'llmProviders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(LlmProviderInput)]),
          ) as BuiltList<LlmProviderInput>?;
          if (valueDes == null) continue;
          result.llmProviders.replace(valueDes);
          break;
        case r'llmSettings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LlmSettings),
          ) as LlmSettings?;
          if (valueDes == null) continue;
          result.llmSettings.replace(valueDes);
          break;
        case r'notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationSettings),
          ) as NotificationSettings?;
          if (valueDes == null) continue;
          result.notifications.replace(valueDes);
          break;
        case r'watchdog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WatchdogSettings),
          ) as WatchdogSettings?;
          if (valueDes == null) continue;
          result.watchdog.replace(valueDes);
          break;
        case r'pushProviders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(PushProvider)]),
          ) as BuiltList<PushProvider>?;
          if (valueDes == null) continue;
          result.pushProviders.replace(valueDes);
          break;
        case r'places':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Place)]),
          ) as BuiltList<Place>?;
          if (valueDes == null) continue;
          result.places.replace(valueDes);
          break;
        case r'views':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(SavedView)]),
          ) as BuiltList<SavedView>?;
          if (valueDes == null) continue;
          result.views.replace(valueDes);
          break;
        case r'watchlists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SettingsBundleWatchlistsInner)]),
          ) as BuiltList<SettingsBundleWatchlistsInner>?;
          if (valueDes == null) continue;
          result.watchlists.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingsBundle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsBundleBuilder();
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
