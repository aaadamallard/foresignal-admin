// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_pricing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmPricing extends LlmPricing {
  @override
  final num? inputUsdPerMillionTokens;
  @override
  final num? outputUsdPerMillionTokens;
  @override
  final num? cachedInputUsdPerMillionTokens;
  @override
  final num? embeddingUsdPerMillionTokens;

  factory _$LlmPricing([void Function(LlmPricingBuilder)? updates]) =>
      (LlmPricingBuilder()..update(updates))._build();

  _$LlmPricing._({
    this.inputUsdPerMillionTokens,
    this.outputUsdPerMillionTokens,
    this.cachedInputUsdPerMillionTokens,
    this.embeddingUsdPerMillionTokens,
  }) : super._();
  @override
  LlmPricing rebuild(void Function(LlmPricingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmPricingBuilder toBuilder() => LlmPricingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmPricing &&
        inputUsdPerMillionTokens == other.inputUsdPerMillionTokens &&
        outputUsdPerMillionTokens == other.outputUsdPerMillionTokens &&
        cachedInputUsdPerMillionTokens ==
            other.cachedInputUsdPerMillionTokens &&
        embeddingUsdPerMillionTokens == other.embeddingUsdPerMillionTokens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inputUsdPerMillionTokens.hashCode);
    _$hash = $jc(_$hash, outputUsdPerMillionTokens.hashCode);
    _$hash = $jc(_$hash, cachedInputUsdPerMillionTokens.hashCode);
    _$hash = $jc(_$hash, embeddingUsdPerMillionTokens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmPricing')
          ..add('inputUsdPerMillionTokens', inputUsdPerMillionTokens)
          ..add('outputUsdPerMillionTokens', outputUsdPerMillionTokens)
          ..add(
            'cachedInputUsdPerMillionTokens',
            cachedInputUsdPerMillionTokens,
          )
          ..add('embeddingUsdPerMillionTokens', embeddingUsdPerMillionTokens))
        .toString();
  }
}

class LlmPricingBuilder implements Builder<LlmPricing, LlmPricingBuilder> {
  _$LlmPricing? _$v;

  num? _inputUsdPerMillionTokens;
  num? get inputUsdPerMillionTokens => _$this._inputUsdPerMillionTokens;
  set inputUsdPerMillionTokens(num? inputUsdPerMillionTokens) =>
      _$this._inputUsdPerMillionTokens = inputUsdPerMillionTokens;

  num? _outputUsdPerMillionTokens;
  num? get outputUsdPerMillionTokens => _$this._outputUsdPerMillionTokens;
  set outputUsdPerMillionTokens(num? outputUsdPerMillionTokens) =>
      _$this._outputUsdPerMillionTokens = outputUsdPerMillionTokens;

  num? _cachedInputUsdPerMillionTokens;
  num? get cachedInputUsdPerMillionTokens =>
      _$this._cachedInputUsdPerMillionTokens;
  set cachedInputUsdPerMillionTokens(num? cachedInputUsdPerMillionTokens) =>
      _$this._cachedInputUsdPerMillionTokens = cachedInputUsdPerMillionTokens;

  num? _embeddingUsdPerMillionTokens;
  num? get embeddingUsdPerMillionTokens => _$this._embeddingUsdPerMillionTokens;
  set embeddingUsdPerMillionTokens(num? embeddingUsdPerMillionTokens) =>
      _$this._embeddingUsdPerMillionTokens = embeddingUsdPerMillionTokens;

  LlmPricingBuilder() {
    LlmPricing._defaults(this);
  }

  LlmPricingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inputUsdPerMillionTokens = $v.inputUsdPerMillionTokens;
      _outputUsdPerMillionTokens = $v.outputUsdPerMillionTokens;
      _cachedInputUsdPerMillionTokens = $v.cachedInputUsdPerMillionTokens;
      _embeddingUsdPerMillionTokens = $v.embeddingUsdPerMillionTokens;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmPricing other) {
    _$v = other as _$LlmPricing;
  }

  @override
  void update(void Function(LlmPricingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmPricing build() => _build();

  _$LlmPricing _build() {
    final _$result =
        _$v ??
        _$LlmPricing._(
          inputUsdPerMillionTokens: inputUsdPerMillionTokens,
          outputUsdPerMillionTokens: outputUsdPerMillionTokens,
          cachedInputUsdPerMillionTokens: cachedInputUsdPerMillionTokens,
          embeddingUsdPerMillionTokens: embeddingUsdPerMillionTokens,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
