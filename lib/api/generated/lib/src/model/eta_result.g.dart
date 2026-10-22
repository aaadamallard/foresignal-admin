// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eta_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EtaResult extends EtaResult {
  @override
  final KinematicState record;
  @override
  final EtaResultTarget target;
  @override
  final num distanceMeters;
  @override
  final num? bearingDeg;
  @override
  final num? bearingDiffDeg;
  @override
  final bool approaching;
  @override
  final num? etaSeconds;
  @override
  final DateTime? etaAt;
  @override
  final DateTime asOf;
  @override
  final bool stale;

  factory _$EtaResult([void Function(EtaResultBuilder)? updates]) =>
      (EtaResultBuilder()..update(updates))._build();

  _$EtaResult._(
      {required this.record,
      required this.target,
      required this.distanceMeters,
      this.bearingDeg,
      this.bearingDiffDeg,
      required this.approaching,
      this.etaSeconds,
      this.etaAt,
      required this.asOf,
      required this.stale})
      : super._();
  @override
  EtaResult rebuild(void Function(EtaResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EtaResultBuilder toBuilder() => EtaResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EtaResult &&
        record == other.record &&
        target == other.target &&
        distanceMeters == other.distanceMeters &&
        bearingDeg == other.bearingDeg &&
        bearingDiffDeg == other.bearingDiffDeg &&
        approaching == other.approaching &&
        etaSeconds == other.etaSeconds &&
        etaAt == other.etaAt &&
        asOf == other.asOf &&
        stale == other.stale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, distanceMeters.hashCode);
    _$hash = $jc(_$hash, bearingDeg.hashCode);
    _$hash = $jc(_$hash, bearingDiffDeg.hashCode);
    _$hash = $jc(_$hash, approaching.hashCode);
    _$hash = $jc(_$hash, etaSeconds.hashCode);
    _$hash = $jc(_$hash, etaAt.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, stale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EtaResult')
          ..add('record', record)
          ..add('target', target)
          ..add('distanceMeters', distanceMeters)
          ..add('bearingDeg', bearingDeg)
          ..add('bearingDiffDeg', bearingDiffDeg)
          ..add('approaching', approaching)
          ..add('etaSeconds', etaSeconds)
          ..add('etaAt', etaAt)
          ..add('asOf', asOf)
          ..add('stale', stale))
        .toString();
  }
}

class EtaResultBuilder implements Builder<EtaResult, EtaResultBuilder> {
  _$EtaResult? _$v;

  KinematicStateBuilder? _record;
  KinematicStateBuilder get record =>
      _$this._record ??= KinematicStateBuilder();
  set record(KinematicStateBuilder? record) => _$this._record = record;

  EtaResultTargetBuilder? _target;
  EtaResultTargetBuilder get target =>
      _$this._target ??= EtaResultTargetBuilder();
  set target(EtaResultTargetBuilder? target) => _$this._target = target;

  num? _distanceMeters;
  num? get distanceMeters => _$this._distanceMeters;
  set distanceMeters(num? distanceMeters) =>
      _$this._distanceMeters = distanceMeters;

  num? _bearingDeg;
  num? get bearingDeg => _$this._bearingDeg;
  set bearingDeg(num? bearingDeg) => _$this._bearingDeg = bearingDeg;

  num? _bearingDiffDeg;
  num? get bearingDiffDeg => _$this._bearingDiffDeg;
  set bearingDiffDeg(num? bearingDiffDeg) =>
      _$this._bearingDiffDeg = bearingDiffDeg;

  bool? _approaching;
  bool? get approaching => _$this._approaching;
  set approaching(bool? approaching) => _$this._approaching = approaching;

  num? _etaSeconds;
  num? get etaSeconds => _$this._etaSeconds;
  set etaSeconds(num? etaSeconds) => _$this._etaSeconds = etaSeconds;

  DateTime? _etaAt;
  DateTime? get etaAt => _$this._etaAt;
  set etaAt(DateTime? etaAt) => _$this._etaAt = etaAt;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  bool? _stale;
  bool? get stale => _$this._stale;
  set stale(bool? stale) => _$this._stale = stale;

  EtaResultBuilder() {
    EtaResult._defaults(this);
  }

  EtaResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _record = $v.record.toBuilder();
      _target = $v.target.toBuilder();
      _distanceMeters = $v.distanceMeters;
      _bearingDeg = $v.bearingDeg;
      _bearingDiffDeg = $v.bearingDiffDeg;
      _approaching = $v.approaching;
      _etaSeconds = $v.etaSeconds;
      _etaAt = $v.etaAt;
      _asOf = $v.asOf;
      _stale = $v.stale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EtaResult other) {
    _$v = other as _$EtaResult;
  }

  @override
  void update(void Function(EtaResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EtaResult build() => _build();

  _$EtaResult _build() {
    _$EtaResult _$result;
    try {
      _$result = _$v ??
          _$EtaResult._(
            record: record.build(),
            target: target.build(),
            distanceMeters: BuiltValueNullFieldError.checkNotNull(
                distanceMeters, r'EtaResult', 'distanceMeters'),
            bearingDeg: bearingDeg,
            bearingDiffDeg: bearingDiffDeg,
            approaching: BuiltValueNullFieldError.checkNotNull(
                approaching, r'EtaResult', 'approaching'),
            etaSeconds: etaSeconds,
            etaAt: etaAt,
            asOf: BuiltValueNullFieldError.checkNotNull(
                asOf, r'EtaResult', 'asOf'),
            stale: BuiltValueNullFieldError.checkNotNull(
                stale, r'EtaResult', 'stale'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'record';
        record.build();
        _$failedField = 'target';
        target.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EtaResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
