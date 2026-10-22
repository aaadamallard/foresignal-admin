// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board_calibration_ensemble.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelBoardCalibrationEnsemble extends IntelBoardCalibrationEnsemble {
  @override
  final num? brierSkill;
  @override
  final String? calibration;
  @override
  final int n;

  factory _$IntelBoardCalibrationEnsemble([
    void Function(IntelBoardCalibrationEnsembleBuilder)? updates,
  ]) => (IntelBoardCalibrationEnsembleBuilder()..update(updates))._build();

  _$IntelBoardCalibrationEnsemble._({
    this.brierSkill,
    this.calibration,
    required this.n,
  }) : super._();
  @override
  IntelBoardCalibrationEnsemble rebuild(
    void Function(IntelBoardCalibrationEnsembleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelBoardCalibrationEnsembleBuilder toBuilder() =>
      IntelBoardCalibrationEnsembleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoardCalibrationEnsemble &&
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
    return (newBuiltValueToStringHelper(r'IntelBoardCalibrationEnsemble')
          ..add('brierSkill', brierSkill)
          ..add('calibration', calibration)
          ..add('n', n))
        .toString();
  }
}

class IntelBoardCalibrationEnsembleBuilder
    implements
        Builder<
          IntelBoardCalibrationEnsemble,
          IntelBoardCalibrationEnsembleBuilder
        > {
  _$IntelBoardCalibrationEnsemble? _$v;

  num? _brierSkill;
  num? get brierSkill => _$this._brierSkill;
  set brierSkill(num? brierSkill) => _$this._brierSkill = brierSkill;

  String? _calibration;
  String? get calibration => _$this._calibration;
  set calibration(String? calibration) => _$this._calibration = calibration;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  IntelBoardCalibrationEnsembleBuilder() {
    IntelBoardCalibrationEnsemble._defaults(this);
  }

  IntelBoardCalibrationEnsembleBuilder get _$this {
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
  void replace(IntelBoardCalibrationEnsemble other) {
    _$v = other as _$IntelBoardCalibrationEnsemble;
  }

  @override
  void update(void Function(IntelBoardCalibrationEnsembleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoardCalibrationEnsemble build() => _build();

  _$IntelBoardCalibrationEnsemble _build() {
    final _$result =
        _$v ??
        _$IntelBoardCalibrationEnsemble._(
          brierSkill: brierSkill,
          calibration: calibration,
          n: BuiltValueNullFieldError.checkNotNull(
            n,
            r'IntelBoardCalibrationEnsemble',
            'n',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
