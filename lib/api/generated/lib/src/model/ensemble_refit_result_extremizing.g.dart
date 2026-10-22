// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ensemble_refit_result_extremizing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnsembleRefitResultExtremizing extends EnsembleRefitResultExtremizing {
  @override
  final num a;
  @override
  final bool enabled;
  @override
  final int nResolutions;
  @override
  final int distinctForecasterTypes;
  @override
  final num? logScoreImprovement;

  factory _$EnsembleRefitResultExtremizing([
    void Function(EnsembleRefitResultExtremizingBuilder)? updates,
  ]) => (EnsembleRefitResultExtremizingBuilder()..update(updates))._build();

  _$EnsembleRefitResultExtremizing._({
    required this.a,
    required this.enabled,
    required this.nResolutions,
    required this.distinctForecasterTypes,
    this.logScoreImprovement,
  }) : super._();
  @override
  EnsembleRefitResultExtremizing rebuild(
    void Function(EnsembleRefitResultExtremizingBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EnsembleRefitResultExtremizingBuilder toBuilder() =>
      EnsembleRefitResultExtremizingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnsembleRefitResultExtremizing &&
        a == other.a &&
        enabled == other.enabled &&
        nResolutions == other.nResolutions &&
        distinctForecasterTypes == other.distinctForecasterTypes &&
        logScoreImprovement == other.logScoreImprovement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, nResolutions.hashCode);
    _$hash = $jc(_$hash, distinctForecasterTypes.hashCode);
    _$hash = $jc(_$hash, logScoreImprovement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnsembleRefitResultExtremizing')
          ..add('a', a)
          ..add('enabled', enabled)
          ..add('nResolutions', nResolutions)
          ..add('distinctForecasterTypes', distinctForecasterTypes)
          ..add('logScoreImprovement', logScoreImprovement))
        .toString();
  }
}

class EnsembleRefitResultExtremizingBuilder
    implements
        Builder<
          EnsembleRefitResultExtremizing,
          EnsembleRefitResultExtremizingBuilder
        > {
  _$EnsembleRefitResultExtremizing? _$v;

  num? _a;
  num? get a => _$this._a;
  set a(num? a) => _$this._a = a;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _nResolutions;
  int? get nResolutions => _$this._nResolutions;
  set nResolutions(int? nResolutions) => _$this._nResolutions = nResolutions;

  int? _distinctForecasterTypes;
  int? get distinctForecasterTypes => _$this._distinctForecasterTypes;
  set distinctForecasterTypes(int? distinctForecasterTypes) =>
      _$this._distinctForecasterTypes = distinctForecasterTypes;

  num? _logScoreImprovement;
  num? get logScoreImprovement => _$this._logScoreImprovement;
  set logScoreImprovement(num? logScoreImprovement) =>
      _$this._logScoreImprovement = logScoreImprovement;

  EnsembleRefitResultExtremizingBuilder() {
    EnsembleRefitResultExtremizing._defaults(this);
  }

  EnsembleRefitResultExtremizingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _a = $v.a;
      _enabled = $v.enabled;
      _nResolutions = $v.nResolutions;
      _distinctForecasterTypes = $v.distinctForecasterTypes;
      _logScoreImprovement = $v.logScoreImprovement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnsembleRefitResultExtremizing other) {
    _$v = other as _$EnsembleRefitResultExtremizing;
  }

  @override
  void update(void Function(EnsembleRefitResultExtremizingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnsembleRefitResultExtremizing build() => _build();

  _$EnsembleRefitResultExtremizing _build() {
    final _$result =
        _$v ??
        _$EnsembleRefitResultExtremizing._(
          a: BuiltValueNullFieldError.checkNotNull(
            a,
            r'EnsembleRefitResultExtremizing',
            'a',
          ),
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'EnsembleRefitResultExtremizing',
            'enabled',
          ),
          nResolutions: BuiltValueNullFieldError.checkNotNull(
            nResolutions,
            r'EnsembleRefitResultExtremizing',
            'nResolutions',
          ),
          distinctForecasterTypes: BuiltValueNullFieldError.checkNotNull(
            distinctForecasterTypes,
            r'EnsembleRefitResultExtremizing',
            'distinctForecasterTypes',
          ),
          logScoreImprovement: logScoreImprovement,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
