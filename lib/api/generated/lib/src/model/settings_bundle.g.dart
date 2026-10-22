// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_bundle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsBundle extends SettingsBundle {
  @override
  final DateTime? exportedAt;
  @override
  final String? foresignalVersion;
  @override
  final BuiltMap<String, SourceSettingsUpdate> sources;
  @override
  final RetentionSettings? retention;
  @override
  final CorsSettings? cors;
  @override
  final SecuritySettings? security;
  @override
  final ServerSettings? server;
  @override
  final BuiltList<TriggerRule>? triggers;
  @override
  final BuiltList<SettingsBundleChannelsInner>? channels;
  @override
  final BuiltList<Briefing>? briefings;
  @override
  final BuiltList<CustomSourceInput>? customSources;
  @override
  final BuiltList<LlmProviderInput>? llmProviders;
  @override
  final LlmSettings? llmSettings;
  @override
  final NotificationSettings? notifications;
  @override
  final WatchdogSettings? watchdog;
  @override
  final BuiltList<PushProvider>? pushProviders;
  @override
  final BuiltList<Place>? places;
  @override
  final BuiltList<SavedView>? views;
  @override
  final BuiltList<SettingsBundleWatchlistsInner>? watchlists;
  @override
  final BuiltList<String>? warnings;

  factory _$SettingsBundle([void Function(SettingsBundleBuilder)? updates]) =>
      (SettingsBundleBuilder()..update(updates))._build();

  _$SettingsBundle._({
    this.exportedAt,
    this.foresignalVersion,
    required this.sources,
    this.retention,
    this.cors,
    this.security,
    this.server,
    this.triggers,
    this.channels,
    this.briefings,
    this.customSources,
    this.llmProviders,
    this.llmSettings,
    this.notifications,
    this.watchdog,
    this.pushProviders,
    this.places,
    this.views,
    this.watchlists,
    this.warnings,
  }) : super._();
  @override
  SettingsBundle rebuild(void Function(SettingsBundleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsBundleBuilder toBuilder() => SettingsBundleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsBundle &&
        exportedAt == other.exportedAt &&
        foresignalVersion == other.foresignalVersion &&
        sources == other.sources &&
        retention == other.retention &&
        cors == other.cors &&
        security == other.security &&
        server == other.server &&
        triggers == other.triggers &&
        channels == other.channels &&
        briefings == other.briefings &&
        customSources == other.customSources &&
        llmProviders == other.llmProviders &&
        llmSettings == other.llmSettings &&
        notifications == other.notifications &&
        watchdog == other.watchdog &&
        pushProviders == other.pushProviders &&
        places == other.places &&
        views == other.views &&
        watchlists == other.watchlists &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportedAt.hashCode);
    _$hash = $jc(_$hash, foresignalVersion.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, cors.hashCode);
    _$hash = $jc(_$hash, security.hashCode);
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, triggers.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, briefings.hashCode);
    _$hash = $jc(_$hash, customSources.hashCode);
    _$hash = $jc(_$hash, llmProviders.hashCode);
    _$hash = $jc(_$hash, llmSettings.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jc(_$hash, watchdog.hashCode);
    _$hash = $jc(_$hash, pushProviders.hashCode);
    _$hash = $jc(_$hash, places.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jc(_$hash, watchlists.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingsBundle')
          ..add('exportedAt', exportedAt)
          ..add('foresignalVersion', foresignalVersion)
          ..add('sources', sources)
          ..add('retention', retention)
          ..add('cors', cors)
          ..add('security', security)
          ..add('server', server)
          ..add('triggers', triggers)
          ..add('channels', channels)
          ..add('briefings', briefings)
          ..add('customSources', customSources)
          ..add('llmProviders', llmProviders)
          ..add('llmSettings', llmSettings)
          ..add('notifications', notifications)
          ..add('watchdog', watchdog)
          ..add('pushProviders', pushProviders)
          ..add('places', places)
          ..add('views', views)
          ..add('watchlists', watchlists)
          ..add('warnings', warnings))
        .toString();
  }
}

class SettingsBundleBuilder
    implements Builder<SettingsBundle, SettingsBundleBuilder> {
  _$SettingsBundle? _$v;

  DateTime? _exportedAt;
  DateTime? get exportedAt => _$this._exportedAt;
  set exportedAt(DateTime? exportedAt) => _$this._exportedAt = exportedAt;

  String? _foresignalVersion;
  String? get foresignalVersion => _$this._foresignalVersion;
  set foresignalVersion(String? foresignalVersion) =>
      _$this._foresignalVersion = foresignalVersion;

  MapBuilder<String, SourceSettingsUpdate>? _sources;
  MapBuilder<String, SourceSettingsUpdate> get sources =>
      _$this._sources ??= MapBuilder<String, SourceSettingsUpdate>();
  set sources(MapBuilder<String, SourceSettingsUpdate>? sources) =>
      _$this._sources = sources;

  RetentionSettingsBuilder? _retention;
  RetentionSettingsBuilder get retention =>
      _$this._retention ??= RetentionSettingsBuilder();
  set retention(RetentionSettingsBuilder? retention) =>
      _$this._retention = retention;

  CorsSettingsBuilder? _cors;
  CorsSettingsBuilder get cors => _$this._cors ??= CorsSettingsBuilder();
  set cors(CorsSettingsBuilder? cors) => _$this._cors = cors;

  SecuritySettingsBuilder? _security;
  SecuritySettingsBuilder get security =>
      _$this._security ??= SecuritySettingsBuilder();
  set security(SecuritySettingsBuilder? security) =>
      _$this._security = security;

  ServerSettingsBuilder? _server;
  ServerSettingsBuilder get server =>
      _$this._server ??= ServerSettingsBuilder();
  set server(ServerSettingsBuilder? server) => _$this._server = server;

  ListBuilder<TriggerRule>? _triggers;
  ListBuilder<TriggerRule> get triggers =>
      _$this._triggers ??= ListBuilder<TriggerRule>();
  set triggers(ListBuilder<TriggerRule>? triggers) =>
      _$this._triggers = triggers;

  ListBuilder<SettingsBundleChannelsInner>? _channels;
  ListBuilder<SettingsBundleChannelsInner> get channels =>
      _$this._channels ??= ListBuilder<SettingsBundleChannelsInner>();
  set channels(ListBuilder<SettingsBundleChannelsInner>? channels) =>
      _$this._channels = channels;

  ListBuilder<Briefing>? _briefings;
  ListBuilder<Briefing> get briefings =>
      _$this._briefings ??= ListBuilder<Briefing>();
  set briefings(ListBuilder<Briefing>? briefings) =>
      _$this._briefings = briefings;

  ListBuilder<CustomSourceInput>? _customSources;
  ListBuilder<CustomSourceInput> get customSources =>
      _$this._customSources ??= ListBuilder<CustomSourceInput>();
  set customSources(ListBuilder<CustomSourceInput>? customSources) =>
      _$this._customSources = customSources;

  ListBuilder<LlmProviderInput>? _llmProviders;
  ListBuilder<LlmProviderInput> get llmProviders =>
      _$this._llmProviders ??= ListBuilder<LlmProviderInput>();
  set llmProviders(ListBuilder<LlmProviderInput>? llmProviders) =>
      _$this._llmProviders = llmProviders;

  LlmSettingsBuilder? _llmSettings;
  LlmSettingsBuilder get llmSettings =>
      _$this._llmSettings ??= LlmSettingsBuilder();
  set llmSettings(LlmSettingsBuilder? llmSettings) =>
      _$this._llmSettings = llmSettings;

  NotificationSettingsBuilder? _notifications;
  NotificationSettingsBuilder get notifications =>
      _$this._notifications ??= NotificationSettingsBuilder();
  set notifications(NotificationSettingsBuilder? notifications) =>
      _$this._notifications = notifications;

  WatchdogSettingsBuilder? _watchdog;
  WatchdogSettingsBuilder get watchdog =>
      _$this._watchdog ??= WatchdogSettingsBuilder();
  set watchdog(WatchdogSettingsBuilder? watchdog) =>
      _$this._watchdog = watchdog;

  ListBuilder<PushProvider>? _pushProviders;
  ListBuilder<PushProvider> get pushProviders =>
      _$this._pushProviders ??= ListBuilder<PushProvider>();
  set pushProviders(ListBuilder<PushProvider>? pushProviders) =>
      _$this._pushProviders = pushProviders;

  ListBuilder<Place>? _places;
  ListBuilder<Place> get places => _$this._places ??= ListBuilder<Place>();
  set places(ListBuilder<Place>? places) => _$this._places = places;

  ListBuilder<SavedView>? _views;
  ListBuilder<SavedView> get views =>
      _$this._views ??= ListBuilder<SavedView>();
  set views(ListBuilder<SavedView>? views) => _$this._views = views;

  ListBuilder<SettingsBundleWatchlistsInner>? _watchlists;
  ListBuilder<SettingsBundleWatchlistsInner> get watchlists =>
      _$this._watchlists ??= ListBuilder<SettingsBundleWatchlistsInner>();
  set watchlists(ListBuilder<SettingsBundleWatchlistsInner>? watchlists) =>
      _$this._watchlists = watchlists;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  SettingsBundleBuilder() {
    SettingsBundle._defaults(this);
  }

  SettingsBundleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportedAt = $v.exportedAt;
      _foresignalVersion = $v.foresignalVersion;
      _sources = $v.sources.toBuilder();
      _retention = $v.retention?.toBuilder();
      _cors = $v.cors?.toBuilder();
      _security = $v.security?.toBuilder();
      _server = $v.server?.toBuilder();
      _triggers = $v.triggers?.toBuilder();
      _channels = $v.channels?.toBuilder();
      _briefings = $v.briefings?.toBuilder();
      _customSources = $v.customSources?.toBuilder();
      _llmProviders = $v.llmProviders?.toBuilder();
      _llmSettings = $v.llmSettings?.toBuilder();
      _notifications = $v.notifications?.toBuilder();
      _watchdog = $v.watchdog?.toBuilder();
      _pushProviders = $v.pushProviders?.toBuilder();
      _places = $v.places?.toBuilder();
      _views = $v.views?.toBuilder();
      _watchlists = $v.watchlists?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsBundle other) {
    _$v = other as _$SettingsBundle;
  }

  @override
  void update(void Function(SettingsBundleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsBundle build() => _build();

  _$SettingsBundle _build() {
    _$SettingsBundle _$result;
    try {
      _$result =
          _$v ??
          _$SettingsBundle._(
            exportedAt: exportedAt,
            foresignalVersion: foresignalVersion,
            sources: sources.build(),
            retention: _retention?.build(),
            cors: _cors?.build(),
            security: _security?.build(),
            server: _server?.build(),
            triggers: _triggers?.build(),
            channels: _channels?.build(),
            briefings: _briefings?.build(),
            customSources: _customSources?.build(),
            llmProviders: _llmProviders?.build(),
            llmSettings: _llmSettings?.build(),
            notifications: _notifications?.build(),
            watchdog: _watchdog?.build(),
            pushProviders: _pushProviders?.build(),
            places: _places?.build(),
            views: _views?.build(),
            watchlists: _watchlists?.build(),
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
        _$failedField = 'retention';
        _retention?.build();
        _$failedField = 'cors';
        _cors?.build();
        _$failedField = 'security';
        _security?.build();
        _$failedField = 'server';
        _server?.build();
        _$failedField = 'triggers';
        _triggers?.build();
        _$failedField = 'channels';
        _channels?.build();
        _$failedField = 'briefings';
        _briefings?.build();
        _$failedField = 'customSources';
        _customSources?.build();
        _$failedField = 'llmProviders';
        _llmProviders?.build();
        _$failedField = 'llmSettings';
        _llmSettings?.build();
        _$failedField = 'notifications';
        _notifications?.build();
        _$failedField = 'watchdog';
        _watchdog?.build();
        _$failedField = 'pushProviders';
        _pushProviders?.build();
        _$failedField = 'places';
        _places?.build();
        _$failedField = 'views';
        _views?.build();
        _$failedField = 'watchlists';
        _watchlists?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SettingsBundle',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
