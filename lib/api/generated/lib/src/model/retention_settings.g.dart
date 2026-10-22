// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionSettings extends RetentionSettings {
  @override
  final String default_;
  @override
  final String? alerts;
  @override
  final String? usage;
  @override
  final String? briefings;
  @override
  final String? ask;
  @override
  final BuiltMap<String, String>? sources;
  @override
  final String? trackWindow;
  @override
  final String? provenance;
  @override
  final String? notifications;
  @override
  final BuiltMap<String, String>? kinds;
  @override
  final String? audit;
  @override
  final RetentionSettingsStats? stats;
  @override
  final String? inbox;
  @override
  final String? trackRawWindow;
  @override
  final String? trackDownsampleInterval;
  @override
  final String? entityLinks;
  @override
  final RetentionSettingsSocial? social;

  factory _$RetentionSettings(
          [void Function(RetentionSettingsBuilder)? updates]) =>
      (RetentionSettingsBuilder()..update(updates))._build();

  _$RetentionSettings._(
      {required this.default_,
      this.alerts,
      this.usage,
      this.briefings,
      this.ask,
      this.sources,
      this.trackWindow,
      this.provenance,
      this.notifications,
      this.kinds,
      this.audit,
      this.stats,
      this.inbox,
      this.trackRawWindow,
      this.trackDownsampleInterval,
      this.entityLinks,
      this.social})
      : super._();
  @override
  RetentionSettings rebuild(void Function(RetentionSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetentionSettingsBuilder toBuilder() =>
      RetentionSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionSettings &&
        default_ == other.default_ &&
        alerts == other.alerts &&
        usage == other.usage &&
        briefings == other.briefings &&
        ask == other.ask &&
        sources == other.sources &&
        trackWindow == other.trackWindow &&
        provenance == other.provenance &&
        notifications == other.notifications &&
        kinds == other.kinds &&
        audit == other.audit &&
        stats == other.stats &&
        inbox == other.inbox &&
        trackRawWindow == other.trackRawWindow &&
        trackDownsampleInterval == other.trackDownsampleInterval &&
        entityLinks == other.entityLinks &&
        social == other.social;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jc(_$hash, briefings.hashCode);
    _$hash = $jc(_$hash, ask.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, trackWindow.hashCode);
    _$hash = $jc(_$hash, provenance.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, audit.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jc(_$hash, inbox.hashCode);
    _$hash = $jc(_$hash, trackRawWindow.hashCode);
    _$hash = $jc(_$hash, trackDownsampleInterval.hashCode);
    _$hash = $jc(_$hash, entityLinks.hashCode);
    _$hash = $jc(_$hash, social.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionSettings')
          ..add('default_', default_)
          ..add('alerts', alerts)
          ..add('usage', usage)
          ..add('briefings', briefings)
          ..add('ask', ask)
          ..add('sources', sources)
          ..add('trackWindow', trackWindow)
          ..add('provenance', provenance)
          ..add('notifications', notifications)
          ..add('kinds', kinds)
          ..add('audit', audit)
          ..add('stats', stats)
          ..add('inbox', inbox)
          ..add('trackRawWindow', trackRawWindow)
          ..add('trackDownsampleInterval', trackDownsampleInterval)
          ..add('entityLinks', entityLinks)
          ..add('social', social))
        .toString();
  }
}

class RetentionSettingsBuilder
    implements Builder<RetentionSettings, RetentionSettingsBuilder> {
  _$RetentionSettings? _$v;

  String? _default_;
  String? get default_ => _$this._default_;
  set default_(String? default_) => _$this._default_ = default_;

  String? _alerts;
  String? get alerts => _$this._alerts;
  set alerts(String? alerts) => _$this._alerts = alerts;

  String? _usage;
  String? get usage => _$this._usage;
  set usage(String? usage) => _$this._usage = usage;

  String? _briefings;
  String? get briefings => _$this._briefings;
  set briefings(String? briefings) => _$this._briefings = briefings;

  String? _ask;
  String? get ask => _$this._ask;
  set ask(String? ask) => _$this._ask = ask;

  MapBuilder<String, String>? _sources;
  MapBuilder<String, String> get sources =>
      _$this._sources ??= MapBuilder<String, String>();
  set sources(MapBuilder<String, String>? sources) => _$this._sources = sources;

  String? _trackWindow;
  String? get trackWindow => _$this._trackWindow;
  set trackWindow(String? trackWindow) => _$this._trackWindow = trackWindow;

  String? _provenance;
  String? get provenance => _$this._provenance;
  set provenance(String? provenance) => _$this._provenance = provenance;

  String? _notifications;
  String? get notifications => _$this._notifications;
  set notifications(String? notifications) =>
      _$this._notifications = notifications;

  MapBuilder<String, String>? _kinds;
  MapBuilder<String, String> get kinds =>
      _$this._kinds ??= MapBuilder<String, String>();
  set kinds(MapBuilder<String, String>? kinds) => _$this._kinds = kinds;

  String? _audit;
  String? get audit => _$this._audit;
  set audit(String? audit) => _$this._audit = audit;

  RetentionSettingsStatsBuilder? _stats;
  RetentionSettingsStatsBuilder get stats =>
      _$this._stats ??= RetentionSettingsStatsBuilder();
  set stats(RetentionSettingsStatsBuilder? stats) => _$this._stats = stats;

  String? _inbox;
  String? get inbox => _$this._inbox;
  set inbox(String? inbox) => _$this._inbox = inbox;

  String? _trackRawWindow;
  String? get trackRawWindow => _$this._trackRawWindow;
  set trackRawWindow(String? trackRawWindow) =>
      _$this._trackRawWindow = trackRawWindow;

  String? _trackDownsampleInterval;
  String? get trackDownsampleInterval => _$this._trackDownsampleInterval;
  set trackDownsampleInterval(String? trackDownsampleInterval) =>
      _$this._trackDownsampleInterval = trackDownsampleInterval;

  String? _entityLinks;
  String? get entityLinks => _$this._entityLinks;
  set entityLinks(String? entityLinks) => _$this._entityLinks = entityLinks;

  RetentionSettingsSocialBuilder? _social;
  RetentionSettingsSocialBuilder get social =>
      _$this._social ??= RetentionSettingsSocialBuilder();
  set social(RetentionSettingsSocialBuilder? social) => _$this._social = social;

  RetentionSettingsBuilder() {
    RetentionSettings._defaults(this);
  }

  RetentionSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _default_ = $v.default_;
      _alerts = $v.alerts;
      _usage = $v.usage;
      _briefings = $v.briefings;
      _ask = $v.ask;
      _sources = $v.sources?.toBuilder();
      _trackWindow = $v.trackWindow;
      _provenance = $v.provenance;
      _notifications = $v.notifications;
      _kinds = $v.kinds?.toBuilder();
      _audit = $v.audit;
      _stats = $v.stats?.toBuilder();
      _inbox = $v.inbox;
      _trackRawWindow = $v.trackRawWindow;
      _trackDownsampleInterval = $v.trackDownsampleInterval;
      _entityLinks = $v.entityLinks;
      _social = $v.social?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionSettings other) {
    _$v = other as _$RetentionSettings;
  }

  @override
  void update(void Function(RetentionSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionSettings build() => _build();

  _$RetentionSettings _build() {
    _$RetentionSettings _$result;
    try {
      _$result = _$v ??
          _$RetentionSettings._(
            default_: BuiltValueNullFieldError.checkNotNull(
                default_, r'RetentionSettings', 'default_'),
            alerts: alerts,
            usage: usage,
            briefings: briefings,
            ask: ask,
            sources: _sources?.build(),
            trackWindow: trackWindow,
            provenance: provenance,
            notifications: notifications,
            kinds: _kinds?.build(),
            audit: audit,
            stats: _stats?.build(),
            inbox: inbox,
            trackRawWindow: trackRawWindow,
            trackDownsampleInterval: trackDownsampleInterval,
            entityLinks: entityLinks,
            social: _social?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();

        _$failedField = 'kinds';
        _kinds?.build();

        _$failedField = 'stats';
        _stats?.build();

        _$failedField = 'social';
        _social?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RetentionSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
