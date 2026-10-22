// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskRequest extends AskRequest {
  @override
  final String question;
  @override
  final String? threadId;
  @override
  final AskScope? scope;
  @override
  final bool? allowActions;

  factory _$AskRequest([void Function(AskRequestBuilder)? updates]) =>
      (AskRequestBuilder()..update(updates))._build();

  _$AskRequest._(
      {required this.question, this.threadId, this.scope, this.allowActions})
      : super._();
  @override
  AskRequest rebuild(void Function(AskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskRequestBuilder toBuilder() => AskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskRequest &&
        question == other.question &&
        threadId == other.threadId &&
        scope == other.scope &&
        allowActions == other.allowActions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, allowActions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskRequest')
          ..add('question', question)
          ..add('threadId', threadId)
          ..add('scope', scope)
          ..add('allowActions', allowActions))
        .toString();
  }
}

class AskRequestBuilder implements Builder<AskRequest, AskRequestBuilder> {
  _$AskRequest? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _threadId;
  String? get threadId => _$this._threadId;
  set threadId(String? threadId) => _$this._threadId = threadId;

  AskScopeBuilder? _scope;
  AskScopeBuilder get scope => _$this._scope ??= AskScopeBuilder();
  set scope(AskScopeBuilder? scope) => _$this._scope = scope;

  bool? _allowActions;
  bool? get allowActions => _$this._allowActions;
  set allowActions(bool? allowActions) => _$this._allowActions = allowActions;

  AskRequestBuilder() {
    AskRequest._defaults(this);
  }

  AskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _threadId = $v.threadId;
      _scope = $v.scope?.toBuilder();
      _allowActions = $v.allowActions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskRequest other) {
    _$v = other as _$AskRequest;
  }

  @override
  void update(void Function(AskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskRequest build() => _build();

  _$AskRequest _build() {
    _$AskRequest _$result;
    try {
      _$result = _$v ??
          _$AskRequest._(
            question: BuiltValueNullFieldError.checkNotNull(
                question, r'AskRequest', 'question'),
            threadId: threadId,
            scope: _scope?.build(),
            allowActions: allowActions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scope';
        _scope?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
