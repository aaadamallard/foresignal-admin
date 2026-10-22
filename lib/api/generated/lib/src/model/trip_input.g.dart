// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TripInput extends TripInput {
  @override
  final String name;
  @override
  final String? routePlaceId;
  @override
  final Geometry? route;
  @override
  final int? bufferMeters;
  @override
  final TripSchedule schedule;
  @override
  final String expectedDuration;
  @override
  final String? leadTime;
  @override
  final BuiltList<String>? hazardKinds;
  @override
  final Severity? minSeverity;
  @override
  final BuiltList<String>? channelIds;
  @override
  final String? anchor;
  @override
  final bool? notifyWhenClear;
  @override
  final bool? enabled;

  factory _$TripInput([void Function(TripInputBuilder)? updates]) =>
      (TripInputBuilder()..update(updates))._build();

  _$TripInput._({
    required this.name,
    this.routePlaceId,
    this.route,
    this.bufferMeters,
    required this.schedule,
    required this.expectedDuration,
    this.leadTime,
    this.hazardKinds,
    this.minSeverity,
    this.channelIds,
    this.anchor,
    this.notifyWhenClear,
    this.enabled,
  }) : super._();
  @override
  TripInput rebuild(void Function(TripInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripInputBuilder toBuilder() => TripInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripInput &&
        name == other.name &&
        routePlaceId == other.routePlaceId &&
        route == other.route &&
        bufferMeters == other.bufferMeters &&
        schedule == other.schedule &&
        expectedDuration == other.expectedDuration &&
        leadTime == other.leadTime &&
        hazardKinds == other.hazardKinds &&
        minSeverity == other.minSeverity &&
        channelIds == other.channelIds &&
        anchor == other.anchor &&
        notifyWhenClear == other.notifyWhenClear &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, routePlaceId.hashCode);
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jc(_$hash, bufferMeters.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, expectedDuration.hashCode);
    _$hash = $jc(_$hash, leadTime.hashCode);
    _$hash = $jc(_$hash, hazardKinds.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jc(_$hash, anchor.hashCode);
    _$hash = $jc(_$hash, notifyWhenClear.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TripInput')
          ..add('name', name)
          ..add('routePlaceId', routePlaceId)
          ..add('route', route)
          ..add('bufferMeters', bufferMeters)
          ..add('schedule', schedule)
          ..add('expectedDuration', expectedDuration)
          ..add('leadTime', leadTime)
          ..add('hazardKinds', hazardKinds)
          ..add('minSeverity', minSeverity)
          ..add('channelIds', channelIds)
          ..add('anchor', anchor)
          ..add('notifyWhenClear', notifyWhenClear)
          ..add('enabled', enabled))
        .toString();
  }
}

class TripInputBuilder implements Builder<TripInput, TripInputBuilder> {
  _$TripInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _routePlaceId;
  String? get routePlaceId => _$this._routePlaceId;
  set routePlaceId(String? routePlaceId) => _$this._routePlaceId = routePlaceId;

  GeometryBuilder? _route;
  GeometryBuilder get route => _$this._route ??= GeometryBuilder();
  set route(GeometryBuilder? route) => _$this._route = route;

  int? _bufferMeters;
  int? get bufferMeters => _$this._bufferMeters;
  set bufferMeters(int? bufferMeters) => _$this._bufferMeters = bufferMeters;

  TripScheduleBuilder? _schedule;
  TripScheduleBuilder get schedule =>
      _$this._schedule ??= TripScheduleBuilder();
  set schedule(TripScheduleBuilder? schedule) => _$this._schedule = schedule;

  String? _expectedDuration;
  String? get expectedDuration => _$this._expectedDuration;
  set expectedDuration(String? expectedDuration) =>
      _$this._expectedDuration = expectedDuration;

  String? _leadTime;
  String? get leadTime => _$this._leadTime;
  set leadTime(String? leadTime) => _$this._leadTime = leadTime;

  ListBuilder<String>? _hazardKinds;
  ListBuilder<String> get hazardKinds =>
      _$this._hazardKinds ??= ListBuilder<String>();
  set hazardKinds(ListBuilder<String>? hazardKinds) =>
      _$this._hazardKinds = hazardKinds;

  Severity? _minSeverity;
  Severity? get minSeverity => _$this._minSeverity;
  set minSeverity(Severity? minSeverity) => _$this._minSeverity = minSeverity;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  String? _anchor;
  String? get anchor => _$this._anchor;
  set anchor(String? anchor) => _$this._anchor = anchor;

  bool? _notifyWhenClear;
  bool? get notifyWhenClear => _$this._notifyWhenClear;
  set notifyWhenClear(bool? notifyWhenClear) =>
      _$this._notifyWhenClear = notifyWhenClear;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  TripInputBuilder() {
    TripInput._defaults(this);
  }

  TripInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _routePlaceId = $v.routePlaceId;
      _route = $v.route?.toBuilder();
      _bufferMeters = $v.bufferMeters;
      _schedule = $v.schedule.toBuilder();
      _expectedDuration = $v.expectedDuration;
      _leadTime = $v.leadTime;
      _hazardKinds = $v.hazardKinds?.toBuilder();
      _minSeverity = $v.minSeverity;
      _channelIds = $v.channelIds?.toBuilder();
      _anchor = $v.anchor;
      _notifyWhenClear = $v.notifyWhenClear;
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripInput other) {
    _$v = other as _$TripInput;
  }

  @override
  void update(void Function(TripInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripInput build() => _build();

  _$TripInput _build() {
    _$TripInput _$result;
    try {
      _$result =
          _$v ??
          _$TripInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'TripInput',
              'name',
            ),
            routePlaceId: routePlaceId,
            route: _route?.build(),
            bufferMeters: bufferMeters,
            schedule: schedule.build(),
            expectedDuration: BuiltValueNullFieldError.checkNotNull(
              expectedDuration,
              r'TripInput',
              'expectedDuration',
            ),
            leadTime: leadTime,
            hazardKinds: _hazardKinds?.build(),
            minSeverity: minSeverity,
            channelIds: _channelIds?.build(),
            anchor: anchor,
            notifyWhenClear: notifyWhenClear,
            enabled: enabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'route';
        _route?.build();

        _$failedField = 'schedule';
        schedule.build();

        _$failedField = 'hazardKinds';
        _hazardKinds?.build();

        _$failedField = 'channelIds';
        _channelIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TripInput',
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
