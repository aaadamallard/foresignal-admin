// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ensemble_refit_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnsembleRefitResult extends EnsembleRefitResult {
  @override
  final DateTime fittedAt;
  @override
  final EnsembleRefitResultExtremizing extremizing;
  @override
  final BuiltList<EnsembleRefitResultPlattInner> platt;
  @override
  final BuiltList<EnsembleRefitResultWeightsInner> weights;

  factory _$EnsembleRefitResult([
    void Function(EnsembleRefitResultBuilder)? updates,
  ]) => (EnsembleRefitResultBuilder()..update(updates))._build();

  _$EnsembleRefitResult._({
    required this.fittedAt,
    required this.extremizing,
    required this.platt,
    required this.weights,
  }) : super._();
  @override
  EnsembleRefitResult rebuild(
    void Function(EnsembleRefitResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EnsembleRefitResultBuilder toBuilder() =>
      EnsembleRefitResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnsembleRefitResult &&
        fittedAt == other.fittedAt &&
        extremizing == other.extremizing &&
        platt == other.platt &&
        weights == other.weights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fittedAt.hashCode);
    _$hash = $jc(_$hash, extremizing.hashCode);
    _$hash = $jc(_$hash, platt.hashCode);
    _$hash = $jc(_$hash, weights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnsembleRefitResult')
          ..add('fittedAt', fittedAt)
          ..add('extremizing', extremizing)
          ..add('platt', platt)
          ..add('weights', weights))
        .toString();
  }
}

class EnsembleRefitResultBuilder
    implements Builder<EnsembleRefitResult, EnsembleRefitResultBuilder> {
  _$EnsembleRefitResult? _$v;

  DateTime? _fittedAt;
  DateTime? get fittedAt => _$this._fittedAt;
  set fittedAt(DateTime? fittedAt) => _$this._fittedAt = fittedAt;

  EnsembleRefitResultExtremizingBuilder? _extremizing;
  EnsembleRefitResultExtremizingBuilder get extremizing =>
      _$this._extremizing ??= EnsembleRefitResultExtremizingBuilder();
  set extremizing(EnsembleRefitResultExtremizingBuilder? extremizing) =>
      _$this._extremizing = extremizing;

  ListBuilder<EnsembleRefitResultPlattInner>? _platt;
  ListBuilder<EnsembleRefitResultPlattInner> get platt =>
      _$this._platt ??= ListBuilder<EnsembleRefitResultPlattInner>();
  set platt(ListBuilder<EnsembleRefitResultPlattInner>? platt) =>
      _$this._platt = platt;

  ListBuilder<EnsembleRefitResultWeightsInner>? _weights;
  ListBuilder<EnsembleRefitResultWeightsInner> get weights =>
      _$this._weights ??= ListBuilder<EnsembleRefitResultWeightsInner>();
  set weights(ListBuilder<EnsembleRefitResultWeightsInner>? weights) =>
      _$this._weights = weights;

  EnsembleRefitResultBuilder() {
    EnsembleRefitResult._defaults(this);
  }

  EnsembleRefitResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fittedAt = $v.fittedAt;
      _extremizing = $v.extremizing.toBuilder();
      _platt = $v.platt.toBuilder();
      _weights = $v.weights.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnsembleRefitResult other) {
    _$v = other as _$EnsembleRefitResult;
  }

  @override
  void update(void Function(EnsembleRefitResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnsembleRefitResult build() => _build();

  _$EnsembleRefitResult _build() {
    _$EnsembleRefitResult _$result;
    try {
      _$result =
          _$v ??
          _$EnsembleRefitResult._(
            fittedAt: BuiltValueNullFieldError.checkNotNull(
              fittedAt,
              r'EnsembleRefitResult',
              'fittedAt',
            ),
            extremizing: extremizing.build(),
            platt: platt.build(),
            weights: weights.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extremizing';
        extremizing.build();
        _$failedField = 'platt';
        platt.build();
        _$failedField = 'weights';
        weights.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EnsembleRefitResult',
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
