// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_media_ratings_request1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportMediaRatingsRequest1 extends ImportMediaRatingsRequest1 {
  @override
  final BuiltList<ImportMediaRatingsRequest1RowsInner> rows;

  factory _$ImportMediaRatingsRequest1([
    void Function(ImportMediaRatingsRequest1Builder)? updates,
  ]) => (ImportMediaRatingsRequest1Builder()..update(updates))._build();

  _$ImportMediaRatingsRequest1._({required this.rows}) : super._();
  @override
  ImportMediaRatingsRequest1 rebuild(
    void Function(ImportMediaRatingsRequest1Builder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ImportMediaRatingsRequest1Builder toBuilder() =>
      ImportMediaRatingsRequest1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportMediaRatingsRequest1 && rows == other.rows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ImportMediaRatingsRequest1',
    )..add('rows', rows)).toString();
  }
}

class ImportMediaRatingsRequest1Builder
    implements
        Builder<ImportMediaRatingsRequest1, ImportMediaRatingsRequest1Builder> {
  _$ImportMediaRatingsRequest1? _$v;

  ListBuilder<ImportMediaRatingsRequest1RowsInner>? _rows;
  ListBuilder<ImportMediaRatingsRequest1RowsInner> get rows =>
      _$this._rows ??= ListBuilder<ImportMediaRatingsRequest1RowsInner>();
  set rows(ListBuilder<ImportMediaRatingsRequest1RowsInner>? rows) =>
      _$this._rows = rows;

  ImportMediaRatingsRequest1Builder() {
    ImportMediaRatingsRequest1._defaults(this);
  }

  ImportMediaRatingsRequest1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rows = $v.rows.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportMediaRatingsRequest1 other) {
    _$v = other as _$ImportMediaRatingsRequest1;
  }

  @override
  void update(void Function(ImportMediaRatingsRequest1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportMediaRatingsRequest1 build() => _build();

  _$ImportMediaRatingsRequest1 _build() {
    _$ImportMediaRatingsRequest1 _$result;
    try {
      _$result = _$v ?? _$ImportMediaRatingsRequest1._(rows: rows.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rows';
        rows.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ImportMediaRatingsRequest1',
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
