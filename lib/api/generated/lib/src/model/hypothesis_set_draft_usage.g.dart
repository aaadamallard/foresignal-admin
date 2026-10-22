// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_draft_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisSetDraftUsage extends HypothesisSetDraftUsage {
  @override
  final int? inputTokens;
  @override
  final int? outputTokens;
  @override
  final int? cachedTokens;

  factory _$HypothesisSetDraftUsage([
    void Function(HypothesisSetDraftUsageBuilder)? updates,
  ]) => (HypothesisSetDraftUsageBuilder()..update(updates))._build();

  _$HypothesisSetDraftUsage._({
    this.inputTokens,
    this.outputTokens,
    this.cachedTokens,
  }) : super._();
  @override
  HypothesisSetDraftUsage rebuild(
    void Function(HypothesisSetDraftUsageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisSetDraftUsageBuilder toBuilder() =>
      HypothesisSetDraftUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetDraftUsage &&
        inputTokens == other.inputTokens &&
        outputTokens == other.outputTokens &&
        cachedTokens == other.cachedTokens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inputTokens.hashCode);
    _$hash = $jc(_$hash, outputTokens.hashCode);
    _$hash = $jc(_$hash, cachedTokens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetDraftUsage')
          ..add('inputTokens', inputTokens)
          ..add('outputTokens', outputTokens)
          ..add('cachedTokens', cachedTokens))
        .toString();
  }
}

class HypothesisSetDraftUsageBuilder
    implements
        Builder<HypothesisSetDraftUsage, HypothesisSetDraftUsageBuilder> {
  _$HypothesisSetDraftUsage? _$v;

  int? _inputTokens;
  int? get inputTokens => _$this._inputTokens;
  set inputTokens(int? inputTokens) => _$this._inputTokens = inputTokens;

  int? _outputTokens;
  int? get outputTokens => _$this._outputTokens;
  set outputTokens(int? outputTokens) => _$this._outputTokens = outputTokens;

  int? _cachedTokens;
  int? get cachedTokens => _$this._cachedTokens;
  set cachedTokens(int? cachedTokens) => _$this._cachedTokens = cachedTokens;

  HypothesisSetDraftUsageBuilder() {
    HypothesisSetDraftUsage._defaults(this);
  }

  HypothesisSetDraftUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inputTokens = $v.inputTokens;
      _outputTokens = $v.outputTokens;
      _cachedTokens = $v.cachedTokens;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetDraftUsage other) {
    _$v = other as _$HypothesisSetDraftUsage;
  }

  @override
  void update(void Function(HypothesisSetDraftUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetDraftUsage build() => _build();

  _$HypothesisSetDraftUsage _build() {
    final _$result =
        _$v ??
        _$HypothesisSetDraftUsage._(
          inputTokens: inputTokens,
          outputTokens: outputTokens,
          cachedTokens: cachedTokens,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
