// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorecard_entry_recalibration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScorecardEntryRecalibration extends ScorecardEntryRecalibration {
  @override
  final num a;
  @override
  final num b;
  @override
  final int n;
  @override
  final DateTime? fittedAt;

  factory _$ScorecardEntryRecalibration(
          [void Function(ScorecardEntryRecalibrationBuilder)? updates]) =>
      (ScorecardEntryRecalibrationBuilder()..update(updates))._build();

  _$ScorecardEntryRecalibration._(
      {required this.a, required this.b, required this.n, this.fittedAt})
      : super._();
  @override
  ScorecardEntryRecalibration rebuild(
          void Function(ScorecardEntryRecalibrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScorecardEntryRecalibrationBuilder toBuilder() =>
      ScorecardEntryRecalibrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScorecardEntryRecalibration &&
        a == other.a &&
        b == other.b &&
        n == other.n &&
        fittedAt == other.fittedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, b.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, fittedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScorecardEntryRecalibration')
          ..add('a', a)
          ..add('b', b)
          ..add('n', n)
          ..add('fittedAt', fittedAt))
        .toString();
  }
}

class ScorecardEntryRecalibrationBuilder
    implements
        Builder<ScorecardEntryRecalibration,
            ScorecardEntryRecalibrationBuilder> {
  _$ScorecardEntryRecalibration? _$v;

  num? _a;
  num? get a => _$this._a;
  set a(num? a) => _$this._a = a;

  num? _b;
  num? get b => _$this._b;
  set b(num? b) => _$this._b = b;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  DateTime? _fittedAt;
  DateTime? get fittedAt => _$this._fittedAt;
  set fittedAt(DateTime? fittedAt) => _$this._fittedAt = fittedAt;

  ScorecardEntryRecalibrationBuilder() {
    ScorecardEntryRecalibration._defaults(this);
  }

  ScorecardEntryRecalibrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _a = $v.a;
      _b = $v.b;
      _n = $v.n;
      _fittedAt = $v.fittedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScorecardEntryRecalibration other) {
    _$v = other as _$ScorecardEntryRecalibration;
  }

  @override
  void update(void Function(ScorecardEntryRecalibrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScorecardEntryRecalibration build() => _build();

  _$ScorecardEntryRecalibration _build() {
    final _$result = _$v ??
        _$ScorecardEntryRecalibration._(
          a: BuiltValueNullFieldError.checkNotNull(
              a, r'ScorecardEntryRecalibration', 'a'),
          b: BuiltValueNullFieldError.checkNotNull(
              b, r'ScorecardEntryRecalibration', 'b'),
          n: BuiltValueNullFieldError.checkNotNull(
              n, r'ScorecardEntryRecalibration', 'n'),
          fittedAt: fittedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
