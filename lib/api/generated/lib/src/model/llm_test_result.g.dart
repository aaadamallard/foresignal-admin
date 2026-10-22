// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmTestResult extends LlmTestResult {
  @override
  final bool success;
  @override
  final LlmTestResultChat? chat;
  @override
  final LlmTestResultEmbedding? embedding;
  @override
  final String? error;
  @override
  final String? refusalCategory;

  factory _$LlmTestResult([void Function(LlmTestResultBuilder)? updates]) =>
      (LlmTestResultBuilder()..update(updates))._build();

  _$LlmTestResult._({
    required this.success,
    this.chat,
    this.embedding,
    this.error,
    this.refusalCategory,
  }) : super._();
  @override
  LlmTestResult rebuild(void Function(LlmTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmTestResultBuilder toBuilder() => LlmTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmTestResult &&
        success == other.success &&
        chat == other.chat &&
        embedding == other.embedding &&
        error == other.error &&
        refusalCategory == other.refusalCategory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, chat.hashCode);
    _$hash = $jc(_$hash, embedding.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, refusalCategory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmTestResult')
          ..add('success', success)
          ..add('chat', chat)
          ..add('embedding', embedding)
          ..add('error', error)
          ..add('refusalCategory', refusalCategory))
        .toString();
  }
}

class LlmTestResultBuilder
    implements Builder<LlmTestResult, LlmTestResultBuilder> {
  _$LlmTestResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  LlmTestResultChatBuilder? _chat;
  LlmTestResultChatBuilder get chat =>
      _$this._chat ??= LlmTestResultChatBuilder();
  set chat(LlmTestResultChatBuilder? chat) => _$this._chat = chat;

  LlmTestResultEmbeddingBuilder? _embedding;
  LlmTestResultEmbeddingBuilder get embedding =>
      _$this._embedding ??= LlmTestResultEmbeddingBuilder();
  set embedding(LlmTestResultEmbeddingBuilder? embedding) =>
      _$this._embedding = embedding;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _refusalCategory;
  String? get refusalCategory => _$this._refusalCategory;
  set refusalCategory(String? refusalCategory) =>
      _$this._refusalCategory = refusalCategory;

  LlmTestResultBuilder() {
    LlmTestResult._defaults(this);
  }

  LlmTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _chat = $v.chat?.toBuilder();
      _embedding = $v.embedding?.toBuilder();
      _error = $v.error;
      _refusalCategory = $v.refusalCategory;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmTestResult other) {
    _$v = other as _$LlmTestResult;
  }

  @override
  void update(void Function(LlmTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmTestResult build() => _build();

  _$LlmTestResult _build() {
    _$LlmTestResult _$result;
    try {
      _$result =
          _$v ??
          _$LlmTestResult._(
            success: BuiltValueNullFieldError.checkNotNull(
              success,
              r'LlmTestResult',
              'success',
            ),
            chat: _chat?.build(),
            embedding: _embedding?.build(),
            error: error,
            refusalCategory: refusalCategory,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chat';
        _chat?.build();
        _$failedField = 'embedding';
        _embedding?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LlmTestResult',
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
