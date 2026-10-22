// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_draft_warnings_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisSetDraftWarningsInner
    extends HypothesisSetDraftWarningsInner {
  @override
  final String code;
  @override
  final String message;
  @override
  final String? path;

  factory _$HypothesisSetDraftWarningsInner(
          [void Function(HypothesisSetDraftWarningsInnerBuilder)? updates]) =>
      (HypothesisSetDraftWarningsInnerBuilder()..update(updates))._build();

  _$HypothesisSetDraftWarningsInner._(
      {required this.code, required this.message, this.path})
      : super._();
  @override
  HypothesisSetDraftWarningsInner rebuild(
          void Function(HypothesisSetDraftWarningsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisSetDraftWarningsInnerBuilder toBuilder() =>
      HypothesisSetDraftWarningsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetDraftWarningsInner &&
        code == other.code &&
        message == other.message &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetDraftWarningsInner')
          ..add('code', code)
          ..add('message', message)
          ..add('path', path))
        .toString();
  }
}

class HypothesisSetDraftWarningsInnerBuilder
    implements
        Builder<HypothesisSetDraftWarningsInner,
            HypothesisSetDraftWarningsInnerBuilder> {
  _$HypothesisSetDraftWarningsInner? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  HypothesisSetDraftWarningsInnerBuilder() {
    HypothesisSetDraftWarningsInner._defaults(this);
  }

  HypothesisSetDraftWarningsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetDraftWarningsInner other) {
    _$v = other as _$HypothesisSetDraftWarningsInner;
  }

  @override
  void update(void Function(HypothesisSetDraftWarningsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetDraftWarningsInner build() => _build();

  _$HypothesisSetDraftWarningsInner _build() {
    final _$result = _$v ??
        _$HypothesisSetDraftWarningsInner._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'HypothesisSetDraftWarningsInner', 'code'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'HypothesisSetDraftWarningsInner', 'message'),
          path: path,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
