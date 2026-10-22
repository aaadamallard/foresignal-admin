// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_callback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisCallback extends AnalysisCallback {
  @override
  final String correlationId;
  @override
  final num? probability;
  @override
  final BuiltMap<String, num>? quantiles;

  factory _$AnalysisCallback(
          [void Function(AnalysisCallbackBuilder)? updates]) =>
      (AnalysisCallbackBuilder()..update(updates))._build();

  _$AnalysisCallback._(
      {required this.correlationId, this.probability, this.quantiles})
      : super._();
  @override
  AnalysisCallback rebuild(void Function(AnalysisCallbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisCallbackBuilder toBuilder() =>
      AnalysisCallbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisCallback &&
        correlationId == other.correlationId &&
        probability == other.probability &&
        quantiles == other.quantiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, quantiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisCallback')
          ..add('correlationId', correlationId)
          ..add('probability', probability)
          ..add('quantiles', quantiles))
        .toString();
  }
}

class AnalysisCallbackBuilder
    implements Builder<AnalysisCallback, AnalysisCallbackBuilder> {
  _$AnalysisCallback? _$v;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  MapBuilder<String, num>? _quantiles;
  MapBuilder<String, num> get quantiles =>
      _$this._quantiles ??= MapBuilder<String, num>();
  set quantiles(MapBuilder<String, num>? quantiles) =>
      _$this._quantiles = quantiles;

  AnalysisCallbackBuilder() {
    AnalysisCallback._defaults(this);
  }

  AnalysisCallbackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _correlationId = $v.correlationId;
      _probability = $v.probability;
      _quantiles = $v.quantiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisCallback other) {
    _$v = other as _$AnalysisCallback;
  }

  @override
  void update(void Function(AnalysisCallbackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisCallback build() => _build();

  _$AnalysisCallback _build() {
    _$AnalysisCallback _$result;
    try {
      _$result = _$v ??
          _$AnalysisCallback._(
            correlationId: BuiltValueNullFieldError.checkNotNull(
                correlationId, r'AnalysisCallback', 'correlationId'),
            probability: probability,
            quantiles: _quantiles?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quantiles';
        _quantiles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalysisCallback', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
