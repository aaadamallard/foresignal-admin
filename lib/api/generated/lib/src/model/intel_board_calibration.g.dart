// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board_calibration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelBoardCalibration extends IntelBoardCalibration {
  @override
  final String? window;
  @override
  final IntelBoardCalibrationEnsemble? ensemble;
  @override
  final IntelBoardCalibrationOperator? operator_;

  factory _$IntelBoardCalibration([
    void Function(IntelBoardCalibrationBuilder)? updates,
  ]) => (IntelBoardCalibrationBuilder()..update(updates))._build();

  _$IntelBoardCalibration._({this.window, this.ensemble, this.operator_})
    : super._();
  @override
  IntelBoardCalibration rebuild(
    void Function(IntelBoardCalibrationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelBoardCalibrationBuilder toBuilder() =>
      IntelBoardCalibrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoardCalibration &&
        window == other.window &&
        ensemble == other.ensemble &&
        operator_ == other.operator_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, ensemble.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelBoardCalibration')
          ..add('window', window)
          ..add('ensemble', ensemble)
          ..add('operator_', operator_))
        .toString();
  }
}

class IntelBoardCalibrationBuilder
    implements Builder<IntelBoardCalibration, IntelBoardCalibrationBuilder> {
  _$IntelBoardCalibration? _$v;

  String? _window;
  String? get window => _$this._window;
  set window(String? window) => _$this._window = window;

  IntelBoardCalibrationEnsembleBuilder? _ensemble;
  IntelBoardCalibrationEnsembleBuilder get ensemble =>
      _$this._ensemble ??= IntelBoardCalibrationEnsembleBuilder();
  set ensemble(IntelBoardCalibrationEnsembleBuilder? ensemble) =>
      _$this._ensemble = ensemble;

  IntelBoardCalibrationOperatorBuilder? _operator_;
  IntelBoardCalibrationOperatorBuilder get operator_ =>
      _$this._operator_ ??= IntelBoardCalibrationOperatorBuilder();
  set operator_(IntelBoardCalibrationOperatorBuilder? operator_) =>
      _$this._operator_ = operator_;

  IntelBoardCalibrationBuilder() {
    IntelBoardCalibration._defaults(this);
  }

  IntelBoardCalibrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window;
      _ensemble = $v.ensemble?.toBuilder();
      _operator_ = $v.operator_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelBoardCalibration other) {
    _$v = other as _$IntelBoardCalibration;
  }

  @override
  void update(void Function(IntelBoardCalibrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoardCalibration build() => _build();

  _$IntelBoardCalibration _build() {
    _$IntelBoardCalibration _$result;
    try {
      _$result =
          _$v ??
          _$IntelBoardCalibration._(
            window: window,
            ensemble: _ensemble?.build(),
            operator_: _operator_?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ensemble';
        _ensemble?.build();
        _$failedField = 'operator_';
        _operator_?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelBoardCalibration',
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
