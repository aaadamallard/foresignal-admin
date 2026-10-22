// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_calibration_decomposition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastCalibrationDecomposition
    extends ForecastCalibrationDecomposition {
  @override
  final num score;
  @override
  final num miscalibration;
  @override
  final num discrimination;
  @override
  final num uncertainty;

  factory _$ForecastCalibrationDecomposition(
          [void Function(ForecastCalibrationDecompositionBuilder)? updates]) =>
      (ForecastCalibrationDecompositionBuilder()..update(updates))._build();

  _$ForecastCalibrationDecomposition._(
      {required this.score,
      required this.miscalibration,
      required this.discrimination,
      required this.uncertainty})
      : super._();
  @override
  ForecastCalibrationDecomposition rebuild(
          void Function(ForecastCalibrationDecompositionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastCalibrationDecompositionBuilder toBuilder() =>
      ForecastCalibrationDecompositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastCalibrationDecomposition &&
        score == other.score &&
        miscalibration == other.miscalibration &&
        discrimination == other.discrimination &&
        uncertainty == other.uncertainty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, miscalibration.hashCode);
    _$hash = $jc(_$hash, discrimination.hashCode);
    _$hash = $jc(_$hash, uncertainty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastCalibrationDecomposition')
          ..add('score', score)
          ..add('miscalibration', miscalibration)
          ..add('discrimination', discrimination)
          ..add('uncertainty', uncertainty))
        .toString();
  }
}

class ForecastCalibrationDecompositionBuilder
    implements
        Builder<ForecastCalibrationDecomposition,
            ForecastCalibrationDecompositionBuilder> {
  _$ForecastCalibrationDecomposition? _$v;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  num? _miscalibration;
  num? get miscalibration => _$this._miscalibration;
  set miscalibration(num? miscalibration) =>
      _$this._miscalibration = miscalibration;

  num? _discrimination;
  num? get discrimination => _$this._discrimination;
  set discrimination(num? discrimination) =>
      _$this._discrimination = discrimination;

  num? _uncertainty;
  num? get uncertainty => _$this._uncertainty;
  set uncertainty(num? uncertainty) => _$this._uncertainty = uncertainty;

  ForecastCalibrationDecompositionBuilder() {
    ForecastCalibrationDecomposition._defaults(this);
  }

  ForecastCalibrationDecompositionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _score = $v.score;
      _miscalibration = $v.miscalibration;
      _discrimination = $v.discrimination;
      _uncertainty = $v.uncertainty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastCalibrationDecomposition other) {
    _$v = other as _$ForecastCalibrationDecomposition;
  }

  @override
  void update(void Function(ForecastCalibrationDecompositionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastCalibrationDecomposition build() => _build();

  _$ForecastCalibrationDecomposition _build() {
    final _$result = _$v ??
        _$ForecastCalibrationDecomposition._(
          score: BuiltValueNullFieldError.checkNotNull(
              score, r'ForecastCalibrationDecomposition', 'score'),
          miscalibration: BuiltValueNullFieldError.checkNotNull(miscalibration,
              r'ForecastCalibrationDecomposition', 'miscalibration'),
          discrimination: BuiltValueNullFieldError.checkNotNull(discrimination,
              r'ForecastCalibrationDecomposition', 'discrimination'),
          uncertainty: BuiltValueNullFieldError.checkNotNull(
              uncertainty, r'ForecastCalibrationDecomposition', 'uncertainty'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
