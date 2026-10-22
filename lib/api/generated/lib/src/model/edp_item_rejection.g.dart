// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_item_rejection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpItemRejection extends EdpItemRejection {
  @override
  final int index;
  @override
  final String? stream;
  @override
  final String? id;
  @override
  final String reason;
  @override
  final BuiltList<EdpItemRejectionSchemaErrorsInner>? schemaErrors;

  factory _$EdpItemRejection(
          [void Function(EdpItemRejectionBuilder)? updates]) =>
      (EdpItemRejectionBuilder()..update(updates))._build();

  _$EdpItemRejection._(
      {required this.index,
      this.stream,
      this.id,
      required this.reason,
      this.schemaErrors})
      : super._();
  @override
  EdpItemRejection rebuild(void Function(EdpItemRejectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpItemRejectionBuilder toBuilder() =>
      EdpItemRejectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpItemRejection &&
        index == other.index &&
        stream == other.stream &&
        id == other.id &&
        reason == other.reason &&
        schemaErrors == other.schemaErrors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, schemaErrors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpItemRejection')
          ..add('index', index)
          ..add('stream', stream)
          ..add('id', id)
          ..add('reason', reason)
          ..add('schemaErrors', schemaErrors))
        .toString();
  }
}

class EdpItemRejectionBuilder
    implements Builder<EdpItemRejection, EdpItemRejectionBuilder> {
  _$EdpItemRejection? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ListBuilder<EdpItemRejectionSchemaErrorsInner>? _schemaErrors;
  ListBuilder<EdpItemRejectionSchemaErrorsInner> get schemaErrors =>
      _$this._schemaErrors ??= ListBuilder<EdpItemRejectionSchemaErrorsInner>();
  set schemaErrors(
          ListBuilder<EdpItemRejectionSchemaErrorsInner>? schemaErrors) =>
      _$this._schemaErrors = schemaErrors;

  EdpItemRejectionBuilder() {
    EdpItemRejection._defaults(this);
  }

  EdpItemRejectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _stream = $v.stream;
      _id = $v.id;
      _reason = $v.reason;
      _schemaErrors = $v.schemaErrors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpItemRejection other) {
    _$v = other as _$EdpItemRejection;
  }

  @override
  void update(void Function(EdpItemRejectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpItemRejection build() => _build();

  _$EdpItemRejection _build() {
    _$EdpItemRejection _$result;
    try {
      _$result = _$v ??
          _$EdpItemRejection._(
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'EdpItemRejection', 'index'),
            stream: stream,
            id: id,
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'EdpItemRejection', 'reason'),
            schemaErrors: _schemaErrors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schemaErrors';
        _schemaErrors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpItemRejection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
