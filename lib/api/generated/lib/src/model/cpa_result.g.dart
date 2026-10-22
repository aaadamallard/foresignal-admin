// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpa_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CpaResult extends CpaResult {
  @override
  final KinematicState a;
  @override
  final KinematicState b;
  @override
  final DateTime t0;
  @override
  final num tcpaSeconds;
  @override
  final DateTime cpaAt;
  @override
  final num dcpaMeters;
  @override
  final num? verticalSeparationM;
  @override
  final String? horizon;
  @override
  final DateTime asOf;
  @override
  final bool stale;

  factory _$CpaResult([void Function(CpaResultBuilder)? updates]) =>
      (CpaResultBuilder()..update(updates))._build();

  _$CpaResult._(
      {required this.a,
      required this.b,
      required this.t0,
      required this.tcpaSeconds,
      required this.cpaAt,
      required this.dcpaMeters,
      this.verticalSeparationM,
      this.horizon,
      required this.asOf,
      required this.stale})
      : super._();
  @override
  CpaResult rebuild(void Function(CpaResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpaResultBuilder toBuilder() => CpaResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpaResult &&
        a == other.a &&
        b == other.b &&
        t0 == other.t0 &&
        tcpaSeconds == other.tcpaSeconds &&
        cpaAt == other.cpaAt &&
        dcpaMeters == other.dcpaMeters &&
        verticalSeparationM == other.verticalSeparationM &&
        horizon == other.horizon &&
        asOf == other.asOf &&
        stale == other.stale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, b.hashCode);
    _$hash = $jc(_$hash, t0.hashCode);
    _$hash = $jc(_$hash, tcpaSeconds.hashCode);
    _$hash = $jc(_$hash, cpaAt.hashCode);
    _$hash = $jc(_$hash, dcpaMeters.hashCode);
    _$hash = $jc(_$hash, verticalSeparationM.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, stale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CpaResult')
          ..add('a', a)
          ..add('b', b)
          ..add('t0', t0)
          ..add('tcpaSeconds', tcpaSeconds)
          ..add('cpaAt', cpaAt)
          ..add('dcpaMeters', dcpaMeters)
          ..add('verticalSeparationM', verticalSeparationM)
          ..add('horizon', horizon)
          ..add('asOf', asOf)
          ..add('stale', stale))
        .toString();
  }
}

class CpaResultBuilder implements Builder<CpaResult, CpaResultBuilder> {
  _$CpaResult? _$v;

  KinematicStateBuilder? _a;
  KinematicStateBuilder get a => _$this._a ??= KinematicStateBuilder();
  set a(KinematicStateBuilder? a) => _$this._a = a;

  KinematicStateBuilder? _b;
  KinematicStateBuilder get b => _$this._b ??= KinematicStateBuilder();
  set b(KinematicStateBuilder? b) => _$this._b = b;

  DateTime? _t0;
  DateTime? get t0 => _$this._t0;
  set t0(DateTime? t0) => _$this._t0 = t0;

  num? _tcpaSeconds;
  num? get tcpaSeconds => _$this._tcpaSeconds;
  set tcpaSeconds(num? tcpaSeconds) => _$this._tcpaSeconds = tcpaSeconds;

  DateTime? _cpaAt;
  DateTime? get cpaAt => _$this._cpaAt;
  set cpaAt(DateTime? cpaAt) => _$this._cpaAt = cpaAt;

  num? _dcpaMeters;
  num? get dcpaMeters => _$this._dcpaMeters;
  set dcpaMeters(num? dcpaMeters) => _$this._dcpaMeters = dcpaMeters;

  num? _verticalSeparationM;
  num? get verticalSeparationM => _$this._verticalSeparationM;
  set verticalSeparationM(num? verticalSeparationM) =>
      _$this._verticalSeparationM = verticalSeparationM;

  String? _horizon;
  String? get horizon => _$this._horizon;
  set horizon(String? horizon) => _$this._horizon = horizon;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  bool? _stale;
  bool? get stale => _$this._stale;
  set stale(bool? stale) => _$this._stale = stale;

  CpaResultBuilder() {
    CpaResult._defaults(this);
  }

  CpaResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _a = $v.a.toBuilder();
      _b = $v.b.toBuilder();
      _t0 = $v.t0;
      _tcpaSeconds = $v.tcpaSeconds;
      _cpaAt = $v.cpaAt;
      _dcpaMeters = $v.dcpaMeters;
      _verticalSeparationM = $v.verticalSeparationM;
      _horizon = $v.horizon;
      _asOf = $v.asOf;
      _stale = $v.stale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpaResult other) {
    _$v = other as _$CpaResult;
  }

  @override
  void update(void Function(CpaResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CpaResult build() => _build();

  _$CpaResult _build() {
    _$CpaResult _$result;
    try {
      _$result = _$v ??
          _$CpaResult._(
            a: a.build(),
            b: b.build(),
            t0: BuiltValueNullFieldError.checkNotNull(t0, r'CpaResult', 't0'),
            tcpaSeconds: BuiltValueNullFieldError.checkNotNull(
                tcpaSeconds, r'CpaResult', 'tcpaSeconds'),
            cpaAt: BuiltValueNullFieldError.checkNotNull(
                cpaAt, r'CpaResult', 'cpaAt'),
            dcpaMeters: BuiltValueNullFieldError.checkNotNull(
                dcpaMeters, r'CpaResult', 'dcpaMeters'),
            verticalSeparationM: verticalSeparationM,
            horizon: horizon,
            asOf: BuiltValueNullFieldError.checkNotNull(
                asOf, r'CpaResult', 'asOf'),
            stale: BuiltValueNullFieldError.checkNotNull(
                stale, r'CpaResult', 'stale'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'a';
        a.build();
        _$failedField = 'b';
        b.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CpaResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
