// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytic_finding_inference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticFindingInference extends AnalyticFindingInference {
  @override
  final DetectorRef detector;
  @override
  final BuiltMap<String, JsonObject?> stats;
  @override
  final FindingBaseRate baseRate;
  @override
  final String explanation;

  factory _$AnalyticFindingInference([
    void Function(AnalyticFindingInferenceBuilder)? updates,
  ]) => (AnalyticFindingInferenceBuilder()..update(updates))._build();

  _$AnalyticFindingInference._({
    required this.detector,
    required this.stats,
    required this.baseRate,
    required this.explanation,
  }) : super._();
  @override
  AnalyticFindingInference rebuild(
    void Function(AnalyticFindingInferenceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalyticFindingInferenceBuilder toBuilder() =>
      AnalyticFindingInferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticFindingInference &&
        detector == other.detector &&
        stats == other.stats &&
        baseRate == other.baseRate &&
        explanation == other.explanation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jc(_$hash, baseRate.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalyticFindingInference')
          ..add('detector', detector)
          ..add('stats', stats)
          ..add('baseRate', baseRate)
          ..add('explanation', explanation))
        .toString();
  }
}

class AnalyticFindingInferenceBuilder
    implements
        Builder<AnalyticFindingInference, AnalyticFindingInferenceBuilder> {
  _$AnalyticFindingInference? _$v;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  MapBuilder<String, JsonObject?>? _stats;
  MapBuilder<String, JsonObject?> get stats =>
      _$this._stats ??= MapBuilder<String, JsonObject?>();
  set stats(MapBuilder<String, JsonObject?>? stats) => _$this._stats = stats;

  FindingBaseRateBuilder? _baseRate;
  FindingBaseRateBuilder get baseRate =>
      _$this._baseRate ??= FindingBaseRateBuilder();
  set baseRate(FindingBaseRateBuilder? baseRate) => _$this._baseRate = baseRate;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  AnalyticFindingInferenceBuilder() {
    AnalyticFindingInference._defaults(this);
  }

  AnalyticFindingInferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _detector = $v.detector.toBuilder();
      _stats = $v.stats.toBuilder();
      _baseRate = $v.baseRate.toBuilder();
      _explanation = $v.explanation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticFindingInference other) {
    _$v = other as _$AnalyticFindingInference;
  }

  @override
  void update(void Function(AnalyticFindingInferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticFindingInference build() => _build();

  _$AnalyticFindingInference _build() {
    _$AnalyticFindingInference _$result;
    try {
      _$result =
          _$v ??
          _$AnalyticFindingInference._(
            detector: detector.build(),
            stats: stats.build(),
            baseRate: baseRate.build(),
            explanation: BuiltValueNullFieldError.checkNotNull(
              explanation,
              r'AnalyticFindingInference',
              'explanation',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();
        _$failedField = 'stats';
        stats.build();
        _$failedField = 'baseRate';
        baseRate.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalyticFindingInference',
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
