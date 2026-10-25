// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GlanceStatusEnum _$glanceStatusEnum_ok = const GlanceStatusEnum._('ok');
const GlanceStatusEnum _$glanceStatusEnum_degraded = const GlanceStatusEnum._(
  'degraded',
);
const GlanceStatusEnum _$glanceStatusEnum_failing = const GlanceStatusEnum._(
  'failing',
);
const GlanceStatusEnum _$glanceStatusEnum_unknownDefaultOpenApi =
    const GlanceStatusEnum._('unknownDefaultOpenApi');

GlanceStatusEnum _$glanceStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$glanceStatusEnum_ok;
    case 'degraded':
      return _$glanceStatusEnum_degraded;
    case 'failing':
      return _$glanceStatusEnum_failing;
    case 'unknownDefaultOpenApi':
      return _$glanceStatusEnum_unknownDefaultOpenApi;
    default:
      return _$glanceStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<GlanceStatusEnum> _$glanceStatusEnumValues =
    BuiltSet<GlanceStatusEnum>(const <GlanceStatusEnum>[
      _$glanceStatusEnum_ok,
      _$glanceStatusEnum_degraded,
      _$glanceStatusEnum_failing,
      _$glanceStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<GlanceStatusEnum> _$glanceStatusEnumSerializer =
    _$GlanceStatusEnumSerializer();

class _$GlanceStatusEnumSerializer
    implements PrimitiveSerializer<GlanceStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'degraded': 'degraded',
    'failing': 'failing',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'degraded': 'degraded',
    'failing': 'failing',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[GlanceStatusEnum];
  @override
  final String wireName = 'GlanceStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    GlanceStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GlanceStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GlanceStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Glance extends Glance {
  @override
  final DateTime serverTime;
  @override
  final GlanceStatusEnum status;
  @override
  final GlanceAlerts? alerts;
  @override
  final GlanceSources? sources;
  @override
  final GlanceBriefing? briefing;
  @override
  final GlanceActivity? activity;
  @override
  final int lastSeq;
  @override
  final BuiltMap<String, String>? links;
  @override
  final BuiltMap<String, JsonObject?>? sections;

  factory _$Glance([void Function(GlanceBuilder)? updates]) =>
      (GlanceBuilder()..update(updates))._build();

  _$Glance._({
    required this.serverTime,
    required this.status,
    this.alerts,
    this.sources,
    this.briefing,
    this.activity,
    required this.lastSeq,
    this.links,
    this.sections,
  }) : super._();
  @override
  Glance rebuild(void Function(GlanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlanceBuilder toBuilder() => GlanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Glance &&
        serverTime == other.serverTime &&
        status == other.status &&
        alerts == other.alerts &&
        sources == other.sources &&
        briefing == other.briefing &&
        activity == other.activity &&
        lastSeq == other.lastSeq &&
        links == other.links &&
        sections == other.sections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, briefing.hashCode);
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jc(_$hash, lastSeq.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Glance')
          ..add('serverTime', serverTime)
          ..add('status', status)
          ..add('alerts', alerts)
          ..add('sources', sources)
          ..add('briefing', briefing)
          ..add('activity', activity)
          ..add('lastSeq', lastSeq)
          ..add('links', links)
          ..add('sections', sections))
        .toString();
  }
}

class GlanceBuilder implements Builder<Glance, GlanceBuilder> {
  _$Glance? _$v;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  GlanceStatusEnum? _status;
  GlanceStatusEnum? get status => _$this._status;
  set status(GlanceStatusEnum? status) => _$this._status = status;

  GlanceAlertsBuilder? _alerts;
  GlanceAlertsBuilder get alerts => _$this._alerts ??= GlanceAlertsBuilder();
  set alerts(GlanceAlertsBuilder? alerts) => _$this._alerts = alerts;

  GlanceSourcesBuilder? _sources;
  GlanceSourcesBuilder get sources =>
      _$this._sources ??= GlanceSourcesBuilder();
  set sources(GlanceSourcesBuilder? sources) => _$this._sources = sources;

  GlanceBriefingBuilder? _briefing;
  GlanceBriefingBuilder get briefing =>
      _$this._briefing ??= GlanceBriefingBuilder();
  set briefing(GlanceBriefingBuilder? briefing) => _$this._briefing = briefing;

  GlanceActivityBuilder? _activity;
  GlanceActivityBuilder get activity =>
      _$this._activity ??= GlanceActivityBuilder();
  set activity(GlanceActivityBuilder? activity) => _$this._activity = activity;

  int? _lastSeq;
  int? get lastSeq => _$this._lastSeq;
  set lastSeq(int? lastSeq) => _$this._lastSeq = lastSeq;

  MapBuilder<String, String>? _links;
  MapBuilder<String, String> get links =>
      _$this._links ??= MapBuilder<String, String>();
  set links(MapBuilder<String, String>? links) => _$this._links = links;

  MapBuilder<String, JsonObject?>? _sections;
  MapBuilder<String, JsonObject?> get sections =>
      _$this._sections ??= MapBuilder<String, JsonObject?>();
  set sections(MapBuilder<String, JsonObject?>? sections) =>
      _$this._sections = sections;

  GlanceBuilder() {
    Glance._defaults(this);
  }

  GlanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverTime = $v.serverTime;
      _status = $v.status;
      _alerts = $v.alerts?.toBuilder();
      _sources = $v.sources?.toBuilder();
      _briefing = $v.briefing?.toBuilder();
      _activity = $v.activity?.toBuilder();
      _lastSeq = $v.lastSeq;
      _links = $v.links?.toBuilder();
      _sections = $v.sections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Glance other) {
    _$v = other as _$Glance;
  }

  @override
  void update(void Function(GlanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Glance build() => _build();

  _$Glance _build() {
    _$Glance _$result;
    try {
      _$result =
          _$v ??
          _$Glance._(
            serverTime: BuiltValueNullFieldError.checkNotNull(
              serverTime,
              r'Glance',
              'serverTime',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Glance',
              'status',
            ),
            alerts: _alerts?.build(),
            sources: _sources?.build(),
            briefing: _briefing?.build(),
            activity: _activity?.build(),
            lastSeq: BuiltValueNullFieldError.checkNotNull(
              lastSeq,
              r'Glance',
              'lastSeq',
            ),
            links: _links?.build(),
            sections: _sections?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alerts';
        _alerts?.build();
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'briefing';
        _briefing?.build();
        _$failedField = 'activity';
        _activity?.build();

        _$failedField = 'links';
        _links?.build();
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Glance',
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
