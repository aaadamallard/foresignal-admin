// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board_calibration_operator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelBoardCalibrationOperator extends IntelBoardCalibrationOperator {
  @override
  final num? brierSkill;
  @override
  final String? calibration;
  @override
  final int n;

  factory _$IntelBoardCalibrationOperator([
    void Function(IntelBoardCalibrationOperatorBuilder)? updates,
  ]) => (IntelBoardCalibrationOperatorBuilder()..update(updates))._build();

  _$IntelBoardCalibrationOperator._({
    this.brierSkill,
    this.calibration,
    required this.n,
  }) : super._();
  @override
  IntelBoardCalibrationOperator rebuild(
    void Function(IntelBoardCalibrationOperatorBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelBoardCalibrationOperatorBuilder toBuilder() =>
      IntelBoardCalibrationOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoardCalibrationOperator &&
        brierSkill == other.brierSkill &&
        calibration == other.calibration &&
        n == other.n;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, brierSkill.hashCode);
    _$hash = $jc(_$hash, calibration.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelBoardCalibrationOperator')
          ..add('brierSkill', brierSkill)
          ..add('calibration', calibration)
          ..add('n', n))
        .toString();
  }
}

class IntelBoardCalibrationOperatorBuilder
    implements
        Builder<
          IntelBoardCalibrationOperator,
          IntelBoardCalibrationOperatorBuilder
        > {
  _$IntelBoardCalibrationOperator? _$v;

  num? _brierSkill;
  num? get brierSkill => _$this._brierSkill;
  set brierSkill(num? brierSkill) => _$this._brierSkill = brierSkill;

  String? _calibration;
  String? get calibration => _$this._calibration;
  set calibration(String? calibration) => _$this._calibration = calibration;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  IntelBoardCalibrationOperatorBuilder() {
    IntelBoardCalibrationOperator._defaults(this);
  }

  IntelBoardCalibrationOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _brierSkill = $v.brierSkill;
      _calibration = $v.calibration;
      _n = $v.n;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelBoardCalibrationOperator other) {
    _$v = other as _$IntelBoardCalibrationOperator;
  }

  @override
  void update(void Function(IntelBoardCalibrationOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoardCalibrationOperator build() => _build();

  _$IntelBoardCalibrationOperator _build() {
    final _$result =
        _$v ??
        _$IntelBoardCalibrationOperator._(
          brierSkill: brierSkill,
          calibration: calibration,
          n: BuiltValueNullFieldError.checkNotNull(
            n,
            r'IntelBoardCalibrationOperator',
            'n',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
