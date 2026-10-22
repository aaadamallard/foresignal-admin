// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Digest extends Digest {
  @override
  final int fromSeq;
  @override
  final int toSeq;
  @override
  final bool gap;
  @override
  final String? gapReason;
  @override
  final BuiltList<DigestCount> counts;
  @override
  final BuiltList<DigestActive>? active;
  @override
  final DigestAlerts? alerts;
  @override
  final BuiltList<DigestStatsNotableInner>? notable;
  @override
  final BuiltList<DigestHealthItem>? health;
  @override
  final bool? healthSnapshot;
  @override
  final BuiltMap<String, JsonObject?>? sections;
  @override
  final DateTime fromTime;
  @override
  final DateTime toTime;
  @override
  final DigestNext next;
  @override
  final BuiltList<PlaceWeatherDigest>? weatherAtPlaces;

  factory _$Digest([void Function(DigestBuilder)? updates]) =>
      (DigestBuilder()..update(updates))._build();

  _$Digest._({
    required this.fromSeq,
    required this.toSeq,
    required this.gap,
    this.gapReason,
    required this.counts,
    this.active,
    this.alerts,
    this.notable,
    this.health,
    this.healthSnapshot,
    this.sections,
    required this.fromTime,
    required this.toTime,
    required this.next,
    this.weatherAtPlaces,
  }) : super._();
  @override
  Digest rebuild(void Function(DigestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestBuilder toBuilder() => DigestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Digest &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        gap == other.gap &&
        gapReason == other.gapReason &&
        counts == other.counts &&
        active == other.active &&
        alerts == other.alerts &&
        notable == other.notable &&
        health == other.health &&
        healthSnapshot == other.healthSnapshot &&
        sections == other.sections &&
        fromTime == other.fromTime &&
        toTime == other.toTime &&
        next == other.next &&
        weatherAtPlaces == other.weatherAtPlaces;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, gap.hashCode);
    _$hash = $jc(_$hash, gapReason.hashCode);
    _$hash = $jc(_$hash, counts.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, notable.hashCode);
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jc(_$hash, healthSnapshot.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jc(_$hash, fromTime.hashCode);
    _$hash = $jc(_$hash, toTime.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, weatherAtPlaces.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Digest')
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('gap', gap)
          ..add('gapReason', gapReason)
          ..add('counts', counts)
          ..add('active', active)
          ..add('alerts', alerts)
          ..add('notable', notable)
          ..add('health', health)
          ..add('healthSnapshot', healthSnapshot)
          ..add('sections', sections)
          ..add('fromTime', fromTime)
          ..add('toTime', toTime)
          ..add('next', next)
          ..add('weatherAtPlaces', weatherAtPlaces))
        .toString();
  }
}

class DigestBuilder implements Builder<Digest, DigestBuilder> {
  _$Digest? _$v;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  bool? _gap;
  bool? get gap => _$this._gap;
  set gap(bool? gap) => _$this._gap = gap;

  String? _gapReason;
  String? get gapReason => _$this._gapReason;
  set gapReason(String? gapReason) => _$this._gapReason = gapReason;

  ListBuilder<DigestCount>? _counts;
  ListBuilder<DigestCount> get counts =>
      _$this._counts ??= ListBuilder<DigestCount>();
  set counts(ListBuilder<DigestCount>? counts) => _$this._counts = counts;

  ListBuilder<DigestActive>? _active;
  ListBuilder<DigestActive> get active =>
      _$this._active ??= ListBuilder<DigestActive>();
  set active(ListBuilder<DigestActive>? active) => _$this._active = active;

  DigestAlertsBuilder? _alerts;
  DigestAlertsBuilder get alerts => _$this._alerts ??= DigestAlertsBuilder();
  set alerts(DigestAlertsBuilder? alerts) => _$this._alerts = alerts;

  ListBuilder<DigestStatsNotableInner>? _notable;
  ListBuilder<DigestStatsNotableInner> get notable =>
      _$this._notable ??= ListBuilder<DigestStatsNotableInner>();
  set notable(ListBuilder<DigestStatsNotableInner>? notable) =>
      _$this._notable = notable;

  ListBuilder<DigestHealthItem>? _health;
  ListBuilder<DigestHealthItem> get health =>
      _$this._health ??= ListBuilder<DigestHealthItem>();
  set health(ListBuilder<DigestHealthItem>? health) => _$this._health = health;

  bool? _healthSnapshot;
  bool? get healthSnapshot => _$this._healthSnapshot;
  set healthSnapshot(bool? healthSnapshot) =>
      _$this._healthSnapshot = healthSnapshot;

  MapBuilder<String, JsonObject?>? _sections;
  MapBuilder<String, JsonObject?> get sections =>
      _$this._sections ??= MapBuilder<String, JsonObject?>();
  set sections(MapBuilder<String, JsonObject?>? sections) =>
      _$this._sections = sections;

  DateTime? _fromTime;
  DateTime? get fromTime => _$this._fromTime;
  set fromTime(DateTime? fromTime) => _$this._fromTime = fromTime;

  DateTime? _toTime;
  DateTime? get toTime => _$this._toTime;
  set toTime(DateTime? toTime) => _$this._toTime = toTime;

  DigestNextBuilder? _next;
  DigestNextBuilder get next => _$this._next ??= DigestNextBuilder();
  set next(DigestNextBuilder? next) => _$this._next = next;

  ListBuilder<PlaceWeatherDigest>? _weatherAtPlaces;
  ListBuilder<PlaceWeatherDigest> get weatherAtPlaces =>
      _$this._weatherAtPlaces ??= ListBuilder<PlaceWeatherDigest>();
  set weatherAtPlaces(ListBuilder<PlaceWeatherDigest>? weatherAtPlaces) =>
      _$this._weatherAtPlaces = weatherAtPlaces;

  DigestBuilder() {
    Digest._defaults(this);
  }

  DigestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _gap = $v.gap;
      _gapReason = $v.gapReason;
      _counts = $v.counts.toBuilder();
      _active = $v.active?.toBuilder();
      _alerts = $v.alerts?.toBuilder();
      _notable = $v.notable?.toBuilder();
      _health = $v.health?.toBuilder();
      _healthSnapshot = $v.healthSnapshot;
      _sections = $v.sections?.toBuilder();
      _fromTime = $v.fromTime;
      _toTime = $v.toTime;
      _next = $v.next.toBuilder();
      _weatherAtPlaces = $v.weatherAtPlaces?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Digest other) {
    _$v = other as _$Digest;
  }

  @override
  void update(void Function(DigestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Digest build() => _build();

  _$Digest _build() {
    _$Digest _$result;
    try {
      _$result =
          _$v ??
          _$Digest._(
            fromSeq: BuiltValueNullFieldError.checkNotNull(
              fromSeq,
              r'Digest',
              'fromSeq',
            ),
            toSeq: BuiltValueNullFieldError.checkNotNull(
              toSeq,
              r'Digest',
              'toSeq',
            ),
            gap: BuiltValueNullFieldError.checkNotNull(gap, r'Digest', 'gap'),
            gapReason: gapReason,
            counts: counts.build(),
            active: _active?.build(),
            alerts: _alerts?.build(),
            notable: _notable?.build(),
            health: _health?.build(),
            healthSnapshot: healthSnapshot,
            sections: _sections?.build(),
            fromTime: BuiltValueNullFieldError.checkNotNull(
              fromTime,
              r'Digest',
              'fromTime',
            ),
            toTime: BuiltValueNullFieldError.checkNotNull(
              toTime,
              r'Digest',
              'toTime',
            ),
            next: next.build(),
            weatherAtPlaces: _weatherAtPlaces?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'counts';
        counts.build();
        _$failedField = 'active';
        _active?.build();
        _$failedField = 'alerts';
        _alerts?.build();
        _$failedField = 'notable';
        _notable?.build();
        _$failedField = 'health';
        _health?.build();

        _$failedField = 'sections';
        _sections?.build();

        _$failedField = 'next';
        next.build();
        _$failedField = 'weatherAtPlaces';
        _weatherAtPlaces?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Digest',
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
