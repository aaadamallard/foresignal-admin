// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_changes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationChanges extends SituationChanges {
  @override
  final String situationId;
  @override
  final DateTime since;
  @override
  final Date? baselineDay;
  @override
  final DateTime now;
  @override
  final SituationChangesStatus status;
  @override
  final SituationChangesSeverity severity;
  @override
  final SituationChangesNewMembers newMembers;
  @override
  final SituationChangesArea? area;
  @override
  final BuiltList<String> regionsAdded;
  @override
  final BuiltList<String>? regionsRemoved;
  @override
  final BuiltList<SituationChangesKeyValuesInner>? keyValues;
  @override
  final String? manifestId;

  factory _$SituationChanges(
          [void Function(SituationChangesBuilder)? updates]) =>
      (SituationChangesBuilder()..update(updates))._build();

  _$SituationChanges._(
      {required this.situationId,
      required this.since,
      this.baselineDay,
      required this.now,
      required this.status,
      required this.severity,
      required this.newMembers,
      this.area,
      required this.regionsAdded,
      this.regionsRemoved,
      this.keyValues,
      this.manifestId})
      : super._();
  @override
  SituationChanges rebuild(void Function(SituationChangesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationChangesBuilder toBuilder() =>
      SituationChangesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationChanges &&
        situationId == other.situationId &&
        since == other.since &&
        baselineDay == other.baselineDay &&
        now == other.now &&
        status == other.status &&
        severity == other.severity &&
        newMembers == other.newMembers &&
        area == other.area &&
        regionsAdded == other.regionsAdded &&
        regionsRemoved == other.regionsRemoved &&
        keyValues == other.keyValues &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, baselineDay.hashCode);
    _$hash = $jc(_$hash, now.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, newMembers.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, regionsAdded.hashCode);
    _$hash = $jc(_$hash, regionsRemoved.hashCode);
    _$hash = $jc(_$hash, keyValues.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationChanges')
          ..add('situationId', situationId)
          ..add('since', since)
          ..add('baselineDay', baselineDay)
          ..add('now', now)
          ..add('status', status)
          ..add('severity', severity)
          ..add('newMembers', newMembers)
          ..add('area', area)
          ..add('regionsAdded', regionsAdded)
          ..add('regionsRemoved', regionsRemoved)
          ..add('keyValues', keyValues)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class SituationChangesBuilder
    implements Builder<SituationChanges, SituationChangesBuilder> {
  _$SituationChanges? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  Date? _baselineDay;
  Date? get baselineDay => _$this._baselineDay;
  set baselineDay(Date? baselineDay) => _$this._baselineDay = baselineDay;

  DateTime? _now;
  DateTime? get now => _$this._now;
  set now(DateTime? now) => _$this._now = now;

  SituationChangesStatusBuilder? _status;
  SituationChangesStatusBuilder get status =>
      _$this._status ??= SituationChangesStatusBuilder();
  set status(SituationChangesStatusBuilder? status) => _$this._status = status;

  SituationChangesSeverityBuilder? _severity;
  SituationChangesSeverityBuilder get severity =>
      _$this._severity ??= SituationChangesSeverityBuilder();
  set severity(SituationChangesSeverityBuilder? severity) =>
      _$this._severity = severity;

  SituationChangesNewMembersBuilder? _newMembers;
  SituationChangesNewMembersBuilder get newMembers =>
      _$this._newMembers ??= SituationChangesNewMembersBuilder();
  set newMembers(SituationChangesNewMembersBuilder? newMembers) =>
      _$this._newMembers = newMembers;

  SituationChangesAreaBuilder? _area;
  SituationChangesAreaBuilder get area =>
      _$this._area ??= SituationChangesAreaBuilder();
  set area(SituationChangesAreaBuilder? area) => _$this._area = area;

  ListBuilder<String>? _regionsAdded;
  ListBuilder<String> get regionsAdded =>
      _$this._regionsAdded ??= ListBuilder<String>();
  set regionsAdded(ListBuilder<String>? regionsAdded) =>
      _$this._regionsAdded = regionsAdded;

  ListBuilder<String>? _regionsRemoved;
  ListBuilder<String> get regionsRemoved =>
      _$this._regionsRemoved ??= ListBuilder<String>();
  set regionsRemoved(ListBuilder<String>? regionsRemoved) =>
      _$this._regionsRemoved = regionsRemoved;

  ListBuilder<SituationChangesKeyValuesInner>? _keyValues;
  ListBuilder<SituationChangesKeyValuesInner> get keyValues =>
      _$this._keyValues ??= ListBuilder<SituationChangesKeyValuesInner>();
  set keyValues(ListBuilder<SituationChangesKeyValuesInner>? keyValues) =>
      _$this._keyValues = keyValues;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  SituationChangesBuilder() {
    SituationChanges._defaults(this);
  }

  SituationChangesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _since = $v.since;
      _baselineDay = $v.baselineDay;
      _now = $v.now;
      _status = $v.status.toBuilder();
      _severity = $v.severity.toBuilder();
      _newMembers = $v.newMembers.toBuilder();
      _area = $v.area?.toBuilder();
      _regionsAdded = $v.regionsAdded.toBuilder();
      _regionsRemoved = $v.regionsRemoved?.toBuilder();
      _keyValues = $v.keyValues?.toBuilder();
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationChanges other) {
    _$v = other as _$SituationChanges;
  }

  @override
  void update(void Function(SituationChangesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationChanges build() => _build();

  _$SituationChanges _build() {
    _$SituationChanges _$result;
    try {
      _$result = _$v ??
          _$SituationChanges._(
            situationId: BuiltValueNullFieldError.checkNotNull(
                situationId, r'SituationChanges', 'situationId'),
            since: BuiltValueNullFieldError.checkNotNull(
                since, r'SituationChanges', 'since'),
            baselineDay: baselineDay,
            now: BuiltValueNullFieldError.checkNotNull(
                now, r'SituationChanges', 'now'),
            status: status.build(),
            severity: severity.build(),
            newMembers: newMembers.build(),
            area: _area?.build(),
            regionsAdded: regionsAdded.build(),
            regionsRemoved: _regionsRemoved?.build(),
            keyValues: _keyValues?.build(),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        status.build();
        _$failedField = 'severity';
        severity.build();
        _$failedField = 'newMembers';
        newMembers.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'regionsAdded';
        regionsAdded.build();
        _$failedField = 'regionsRemoved';
        _regionsRemoved?.build();
        _$failedField = 'keyValues';
        _keyValues?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationChanges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
