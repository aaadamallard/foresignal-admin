// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_test_result_embedding.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmTestResultEmbedding extends LlmTestResultEmbedding {
  @override
  final String? model;
  @override
  final int? dimensions;
  @override
  final int? latencyMs;

  factory _$LlmTestResultEmbedding(
          [void Function(LlmTestResultEmbeddingBuilder)? updates]) =>
      (LlmTestResultEmbeddingBuilder()..update(updates))._build();

  _$LlmTestResultEmbedding._({this.model, this.dimensions, this.latencyMs})
      : super._();
  @override
  LlmTestResultEmbedding rebuild(
          void Function(LlmTestResultEmbeddingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmTestResultEmbeddingBuilder toBuilder() =>
      LlmTestResultEmbeddingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmTestResultEmbedding &&
        model == other.model &&
        dimensions == other.dimensions &&
        latencyMs == other.latencyMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, dimensions.hashCode);
    _$hash = $jc(_$hash, latencyMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmTestResultEmbedding')
          ..add('model', model)
          ..add('dimensions', dimensions)
          ..add('latencyMs', latencyMs))
        .toString();
  }
}

class LlmTestResultEmbeddingBuilder
    implements Builder<LlmTestResultEmbedding, LlmTestResultEmbeddingBuilder> {
  _$LlmTestResultEmbedding? _$v;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  int? _dimensions;
  int? get dimensions => _$this._dimensions;
  set dimensions(int? dimensions) => _$this._dimensions = dimensions;

  int? _latencyMs;
  int? get latencyMs => _$this._latencyMs;
  set latencyMs(int? latencyMs) => _$this._latencyMs = latencyMs;

  LlmTestResultEmbeddingBuilder() {
    LlmTestResultEmbedding._defaults(this);
  }

  LlmTestResultEmbeddingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _model = $v.model;
      _dimensions = $v.dimensions;
      _latencyMs = $v.latencyMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmTestResultEmbedding other) {
    _$v = other as _$LlmTestResultEmbedding;
  }

  @override
  void update(void Function(LlmTestResultEmbeddingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmTestResultEmbedding build() => _build();

  _$LlmTestResultEmbedding _build() {
    final _$result = _$v ??
        _$LlmTestResultEmbedding._(
          model: model,
          dimensions: dimensions,
          latencyMs: latencyMs,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
