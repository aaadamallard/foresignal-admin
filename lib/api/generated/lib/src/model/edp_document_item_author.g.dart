// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_document_item_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpDocumentItemAuthor extends EdpDocumentItemAuthor {
  @override
  final String? handle;
  @override
  final String? name;
  @override
  final String? accountId;

  factory _$EdpDocumentItemAuthor([
    void Function(EdpDocumentItemAuthorBuilder)? updates,
  ]) => (EdpDocumentItemAuthorBuilder()..update(updates))._build();

  _$EdpDocumentItemAuthor._({this.handle, this.name, this.accountId})
    : super._();
  @override
  EdpDocumentItemAuthor rebuild(
    void Function(EdpDocumentItemAuthorBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdpDocumentItemAuthorBuilder toBuilder() =>
      EdpDocumentItemAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpDocumentItemAuthor &&
        handle == other.handle &&
        name == other.name &&
        accountId == other.accountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpDocumentItemAuthor')
          ..add('handle', handle)
          ..add('name', name)
          ..add('accountId', accountId))
        .toString();
  }
}

class EdpDocumentItemAuthorBuilder
    implements Builder<EdpDocumentItemAuthor, EdpDocumentItemAuthorBuilder> {
  _$EdpDocumentItemAuthor? _$v;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  EdpDocumentItemAuthorBuilder() {
    EdpDocumentItemAuthor._defaults(this);
  }

  EdpDocumentItemAuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _handle = $v.handle;
      _name = $v.name;
      _accountId = $v.accountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpDocumentItemAuthor other) {
    _$v = other as _$EdpDocumentItemAuthor;
  }

  @override
  void update(void Function(EdpDocumentItemAuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpDocumentItemAuthor build() => _build();

  _$EdpDocumentItemAuthor _build() {
    final _$result =
        _$v ??
        _$EdpDocumentItemAuthor._(
          handle: handle,
          name: name,
          accountId: accountId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
