// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_item_rejection_schema_errors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpItemRejectionSchemaErrorsInner
    extends EdpItemRejectionSchemaErrorsInner {
  @override
  final String? path;
  @override
  final String? message;

  factory _$EdpItemRejectionSchemaErrorsInner(
          [void Function(EdpItemRejectionSchemaErrorsInnerBuilder)? updates]) =>
      (EdpItemRejectionSchemaErrorsInnerBuilder()..update(updates))._build();

  _$EdpItemRejectionSchemaErrorsInner._({this.path, this.message}) : super._();
  @override
  EdpItemRejectionSchemaErrorsInner rebuild(
          void Function(EdpItemRejectionSchemaErrorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpItemRejectionSchemaErrorsInnerBuilder toBuilder() =>
      EdpItemRejectionSchemaErrorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpItemRejectionSchemaErrorsInner &&
        path == other.path &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpItemRejectionSchemaErrorsInner')
          ..add('path', path)
          ..add('message', message))
        .toString();
  }
}

class EdpItemRejectionSchemaErrorsInnerBuilder
    implements
        Builder<EdpItemRejectionSchemaErrorsInner,
            EdpItemRejectionSchemaErrorsInnerBuilder> {
  _$EdpItemRejectionSchemaErrorsInner? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  EdpItemRejectionSchemaErrorsInnerBuilder() {
    EdpItemRejectionSchemaErrorsInner._defaults(this);
  }

  EdpItemRejectionSchemaErrorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpItemRejectionSchemaErrorsInner other) {
    _$v = other as _$EdpItemRejectionSchemaErrorsInner;
  }

  @override
  void update(
      void Function(EdpItemRejectionSchemaErrorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpItemRejectionSchemaErrorsInner build() => _build();

  _$EdpItemRejectionSchemaErrorsInner _build() {
    final _$result = _$v ??
        _$EdpItemRejectionSchemaErrorsInner._(
          path: path,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
