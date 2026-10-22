// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Trip extends Trip {
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
  @override
  final String id;
  @override
  final Geometry corridor;
  @override
  final DateTime? nextOccurrence;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Trip([void Function(TripBuilder)? updates]) =>
      (TripBuilder()..update(updates))._build();

  _$Trip._({
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
    required this.id,
    required this.corridor,
    this.nextOccurrence,
    this.createdBy,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  Trip rebuild(void Function(TripBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripBuilder toBuilder() => TripBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Trip &&
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
        enabled == other.enabled &&
        id == other.id &&
        corridor == other.corridor &&
        nextOccurrence == other.nextOccurrence &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
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
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, corridor.hashCode);
    _$hash = $jc(_$hash, nextOccurrence.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Trip')
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
          ..add('enabled', enabled)
          ..add('id', id)
          ..add('corridor', corridor)
          ..add('nextOccurrence', nextOccurrence)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TripBuilder implements Builder<Trip, TripBuilder> {
  _$Trip? _$v;

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

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GeometryBuilder? _corridor;
  GeometryBuilder get corridor => _$this._corridor ??= GeometryBuilder();
  set corridor(GeometryBuilder? corridor) => _$this._corridor = corridor;

  DateTime? _nextOccurrence;
  DateTime? get nextOccurrence => _$this._nextOccurrence;
  set nextOccurrence(DateTime? nextOccurrence) =>
      _$this._nextOccurrence = nextOccurrence;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  TripBuilder() {
    Trip._defaults(this);
  }

  TripBuilder get _$this {
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
      _id = $v.id;
      _corridor = $v.corridor.toBuilder();
      _nextOccurrence = $v.nextOccurrence;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Trip other) {
    _$v = other as _$Trip;
  }

  @override
  void update(void Function(TripBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Trip build() => _build();

  _$Trip _build() {
    _$Trip _$result;
    try {
      _$result =
          _$v ??
          _$Trip._(
            name: BuiltValueNullFieldError.checkNotNull(name, r'Trip', 'name'),
            routePlaceId: routePlaceId,
            route: _route?.build(),
            bufferMeters: bufferMeters,
            schedule: schedule.build(),
            expectedDuration: BuiltValueNullFieldError.checkNotNull(
              expectedDuration,
              r'Trip',
              'expectedDuration',
            ),
            leadTime: leadTime,
            hazardKinds: _hazardKinds?.build(),
            minSeverity: minSeverity,
            channelIds: _channelIds?.build(),
            anchor: anchor,
            notifyWhenClear: notifyWhenClear,
            enabled: enabled,
            id: BuiltValueNullFieldError.checkNotNull(id, r'Trip', 'id'),
            corridor: corridor.build(),
            nextOccurrence: nextOccurrence,
            createdBy: createdBy,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Trip',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'Trip',
              'updatedAt',
            ),
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

        _$failedField = 'corridor';
        corridor.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Trip', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
