// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_import_result_invalid_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WatchlistImportResultInvalidInner
    extends WatchlistImportResultInvalidInner {
  @override
  final int? row;
  @override
  final String? value;
  @override
  final String reason;

  factory _$WatchlistImportResultInvalidInner([
    void Function(WatchlistImportResultInvalidInnerBuilder)? updates,
  ]) => (WatchlistImportResultInvalidInnerBuilder()..update(updates))._build();

  _$WatchlistImportResultInvalidInner._({
    this.row,
    this.value,
    required this.reason,
  }) : super._();
  @override
  WatchlistImportResultInvalidInner rebuild(
    void Function(WatchlistImportResultInvalidInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WatchlistImportResultInvalidInnerBuilder toBuilder() =>
      WatchlistImportResultInvalidInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistImportResultInvalidInner &&
        row == other.row &&
        value == other.value &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, row.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchlistImportResultInvalidInner')
          ..add('row', row)
          ..add('value', value)
          ..add('reason', reason))
        .toString();
  }
}

class WatchlistImportResultInvalidInnerBuilder
    implements
        Builder<
          WatchlistImportResultInvalidInner,
          WatchlistImportResultInvalidInnerBuilder
        > {
  _$WatchlistImportResultInvalidInner? _$v;

  int? _row;
  int? get row => _$this._row;
  set row(int? row) => _$this._row = row;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  WatchlistImportResultInvalidInnerBuilder() {
    WatchlistImportResultInvalidInner._defaults(this);
  }

  WatchlistImportResultInvalidInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _row = $v.row;
      _value = $v.value;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistImportResultInvalidInner other) {
    _$v = other as _$WatchlistImportResultInvalidInner;
  }

  @override
  void update(
    void Function(WatchlistImportResultInvalidInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistImportResultInvalidInner build() => _build();

  _$WatchlistImportResultInvalidInner _build() {
    final _$result =
        _$v ??
        _$WatchlistImportResultInvalidInner._(
          row: row,
          value: value,
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'WatchlistImportResultInvalidInner',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
