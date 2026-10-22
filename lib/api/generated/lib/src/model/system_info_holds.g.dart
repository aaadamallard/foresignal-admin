// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_holds.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoHolds extends SystemInfoHolds {
  @override
  final int? count;
  @override
  final int? rows;
  @override
  final int? bytes;

  factory _$SystemInfoHolds([void Function(SystemInfoHoldsBuilder)? updates]) =>
      (SystemInfoHoldsBuilder()..update(updates))._build();

  _$SystemInfoHolds._({this.count, this.rows, this.bytes}) : super._();
  @override
  SystemInfoHolds rebuild(void Function(SystemInfoHoldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoHoldsBuilder toBuilder() => SystemInfoHoldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoHolds &&
        count == other.count &&
        rows == other.rows &&
        bytes == other.bytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoHolds')
          ..add('count', count)
          ..add('rows', rows)
          ..add('bytes', bytes))
        .toString();
  }
}

class SystemInfoHoldsBuilder
    implements Builder<SystemInfoHolds, SystemInfoHoldsBuilder> {
  _$SystemInfoHolds? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  SystemInfoHoldsBuilder() {
    SystemInfoHolds._defaults(this);
  }

  SystemInfoHoldsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _rows = $v.rows;
      _bytes = $v.bytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoHolds other) {
    _$v = other as _$SystemInfoHolds;
  }

  @override
  void update(void Function(SystemInfoHoldsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoHolds build() => _build();

  _$SystemInfoHolds _build() {
    final _$result =
        _$v ?? _$SystemInfoHolds._(count: count, rows: rows, bytes: bytes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
