// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings_import_result_errors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingsImportResultErrorsInner extends RatingsImportResultErrorsInner {
  @override
  final int? row;
  @override
  final String message;

  factory _$RatingsImportResultErrorsInner([
    void Function(RatingsImportResultErrorsInnerBuilder)? updates,
  ]) => (RatingsImportResultErrorsInnerBuilder()..update(updates))._build();

  _$RatingsImportResultErrorsInner._({this.row, required this.message})
    : super._();
  @override
  RatingsImportResultErrorsInner rebuild(
    void Function(RatingsImportResultErrorsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RatingsImportResultErrorsInnerBuilder toBuilder() =>
      RatingsImportResultErrorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingsImportResultErrorsInner &&
        row == other.row &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, row.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingsImportResultErrorsInner')
          ..add('row', row)
          ..add('message', message))
        .toString();
  }
}

class RatingsImportResultErrorsInnerBuilder
    implements
        Builder<
          RatingsImportResultErrorsInner,
          RatingsImportResultErrorsInnerBuilder
        > {
  _$RatingsImportResultErrorsInner? _$v;

  int? _row;
  int? get row => _$this._row;
  set row(int? row) => _$this._row = row;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  RatingsImportResultErrorsInnerBuilder() {
    RatingsImportResultErrorsInner._defaults(this);
  }

  RatingsImportResultErrorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _row = $v.row;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingsImportResultErrorsInner other) {
    _$v = other as _$RatingsImportResultErrorsInner;
  }

  @override
  void update(void Function(RatingsImportResultErrorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingsImportResultErrorsInner build() => _build();

  _$RatingsImportResultErrorsInner _build() {
    final _$result =
        _$v ??
        _$RatingsImportResultErrorsInner._(
          row: row,
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'RatingsImportResultErrorsInner',
            'message',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
