// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_records.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoRecords extends SystemInfoRecords {
  @override
  final int? current;
  @override
  final int? versions;
  @override
  final int? lastSeq;

  factory _$SystemInfoRecords(
          [void Function(SystemInfoRecordsBuilder)? updates]) =>
      (SystemInfoRecordsBuilder()..update(updates))._build();

  _$SystemInfoRecords._({this.current, this.versions, this.lastSeq})
      : super._();
  @override
  SystemInfoRecords rebuild(void Function(SystemInfoRecordsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoRecordsBuilder toBuilder() =>
      SystemInfoRecordsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoRecords &&
        current == other.current &&
        versions == other.versions &&
        lastSeq == other.lastSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jc(_$hash, lastSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoRecords')
          ..add('current', current)
          ..add('versions', versions)
          ..add('lastSeq', lastSeq))
        .toString();
  }
}

class SystemInfoRecordsBuilder
    implements Builder<SystemInfoRecords, SystemInfoRecordsBuilder> {
  _$SystemInfoRecords? _$v;

  int? _current;
  int? get current => _$this._current;
  set current(int? current) => _$this._current = current;

  int? _versions;
  int? get versions => _$this._versions;
  set versions(int? versions) => _$this._versions = versions;

  int? _lastSeq;
  int? get lastSeq => _$this._lastSeq;
  set lastSeq(int? lastSeq) => _$this._lastSeq = lastSeq;

  SystemInfoRecordsBuilder() {
    SystemInfoRecords._defaults(this);
  }

  SystemInfoRecordsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current = $v.current;
      _versions = $v.versions;
      _lastSeq = $v.lastSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoRecords other) {
    _$v = other as _$SystemInfoRecords;
  }

  @override
  void update(void Function(SystemInfoRecordsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoRecords build() => _build();

  _$SystemInfoRecords _build() {
    final _$result = _$v ??
        _$SystemInfoRecords._(
          current: current,
          versions: versions,
          lastSeq: lastSeq,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
