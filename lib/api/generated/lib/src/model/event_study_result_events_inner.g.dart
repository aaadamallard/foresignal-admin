// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_result_events_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStudyResultEventsInner extends EventStudyResultEventsInner {
  @override
  final DateTime at;
  @override
  final String? ref;
  @override
  final int clusterId;
  @override
  final String? excluded;
  @override
  final int? estimationPoints;
  @override
  final BuiltList<EventStudyResultEventsInnerAbnormalInner>? abnormal;
  @override
  final EventStudyResultEventsInnerCar? car;

  factory _$EventStudyResultEventsInner(
          [void Function(EventStudyResultEventsInnerBuilder)? updates]) =>
      (EventStudyResultEventsInnerBuilder()..update(updates))._build();

  _$EventStudyResultEventsInner._(
      {required this.at,
      this.ref,
      required this.clusterId,
      this.excluded,
      this.estimationPoints,
      this.abnormal,
      this.car})
      : super._();
  @override
  EventStudyResultEventsInner rebuild(
          void Function(EventStudyResultEventsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStudyResultEventsInnerBuilder toBuilder() =>
      EventStudyResultEventsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyResultEventsInner &&
        at == other.at &&
        ref == other.ref &&
        clusterId == other.clusterId &&
        excluded == other.excluded &&
        estimationPoints == other.estimationPoints &&
        abnormal == other.abnormal &&
        car == other.car;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, clusterId.hashCode);
    _$hash = $jc(_$hash, excluded.hashCode);
    _$hash = $jc(_$hash, estimationPoints.hashCode);
    _$hash = $jc(_$hash, abnormal.hashCode);
    _$hash = $jc(_$hash, car.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStudyResultEventsInner')
          ..add('at', at)
          ..add('ref', ref)
          ..add('clusterId', clusterId)
          ..add('excluded', excluded)
          ..add('estimationPoints', estimationPoints)
          ..add('abnormal', abnormal)
          ..add('car', car))
        .toString();
  }
}

class EventStudyResultEventsInnerBuilder
    implements
        Builder<EventStudyResultEventsInner,
            EventStudyResultEventsInnerBuilder> {
  _$EventStudyResultEventsInner? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  int? _clusterId;
  int? get clusterId => _$this._clusterId;
  set clusterId(int? clusterId) => _$this._clusterId = clusterId;

  String? _excluded;
  String? get excluded => _$this._excluded;
  set excluded(String? excluded) => _$this._excluded = excluded;

  int? _estimationPoints;
  int? get estimationPoints => _$this._estimationPoints;
  set estimationPoints(int? estimationPoints) =>
      _$this._estimationPoints = estimationPoints;

  ListBuilder<EventStudyResultEventsInnerAbnormalInner>? _abnormal;
  ListBuilder<EventStudyResultEventsInnerAbnormalInner> get abnormal =>
      _$this._abnormal ??=
          ListBuilder<EventStudyResultEventsInnerAbnormalInner>();
  set abnormal(
          ListBuilder<EventStudyResultEventsInnerAbnormalInner>? abnormal) =>
      _$this._abnormal = abnormal;

  EventStudyResultEventsInnerCarBuilder? _car;
  EventStudyResultEventsInnerCarBuilder get car =>
      _$this._car ??= EventStudyResultEventsInnerCarBuilder();
  set car(EventStudyResultEventsInnerCarBuilder? car) => _$this._car = car;

  EventStudyResultEventsInnerBuilder() {
    EventStudyResultEventsInner._defaults(this);
  }

  EventStudyResultEventsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _ref = $v.ref;
      _clusterId = $v.clusterId;
      _excluded = $v.excluded;
      _estimationPoints = $v.estimationPoints;
      _abnormal = $v.abnormal?.toBuilder();
      _car = $v.car?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyResultEventsInner other) {
    _$v = other as _$EventStudyResultEventsInner;
  }

  @override
  void update(void Function(EventStudyResultEventsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyResultEventsInner build() => _build();

  _$EventStudyResultEventsInner _build() {
    _$EventStudyResultEventsInner _$result;
    try {
      _$result = _$v ??
          _$EventStudyResultEventsInner._(
            at: BuiltValueNullFieldError.checkNotNull(
                at, r'EventStudyResultEventsInner', 'at'),
            ref: ref,
            clusterId: BuiltValueNullFieldError.checkNotNull(
                clusterId, r'EventStudyResultEventsInner', 'clusterId'),
            excluded: excluded,
            estimationPoints: estimationPoints,
            abnormal: _abnormal?.build(),
            car: _car?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'abnormal';
        _abnormal?.build();
        _$failedField = 'car';
        _car?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EventStudyResultEventsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
