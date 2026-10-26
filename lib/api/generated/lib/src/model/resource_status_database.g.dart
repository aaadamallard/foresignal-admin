// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_status_database.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceStatusDatabase extends ResourceStatusDatabase {
  @override
  final int? sizeBytes;

  factory _$ResourceStatusDatabase([
    void Function(ResourceStatusDatabaseBuilder)? updates,
  ]) => (ResourceStatusDatabaseBuilder()..update(updates))._build();

  _$ResourceStatusDatabase._({this.sizeBytes}) : super._();
  @override
  ResourceStatusDatabase rebuild(
    void Function(ResourceStatusDatabaseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourceStatusDatabaseBuilder toBuilder() =>
      ResourceStatusDatabaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceStatusDatabase && sizeBytes == other.sizeBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ResourceStatusDatabase',
    )..add('sizeBytes', sizeBytes)).toString();
  }
}

class ResourceStatusDatabaseBuilder
    implements Builder<ResourceStatusDatabase, ResourceStatusDatabaseBuilder> {
  _$ResourceStatusDatabase? _$v;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  ResourceStatusDatabaseBuilder() {
    ResourceStatusDatabase._defaults(this);
  }

  ResourceStatusDatabaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sizeBytes = $v.sizeBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceStatusDatabase other) {
    _$v = other as _$ResourceStatusDatabase;
  }

  @override
  void update(void Function(ResourceStatusDatabaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceStatusDatabase build() => _build();

  _$ResourceStatusDatabase _build() {
    final _$result = _$v ?? _$ResourceStatusDatabase._(sizeBytes: sizeBytes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
