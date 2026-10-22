// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityRecord extends EntityRecord {
  @override
  final Record record;
  @override
  final EntityLink link;

  factory _$EntityRecord([void Function(EntityRecordBuilder)? updates]) =>
      (EntityRecordBuilder()..update(updates))._build();

  _$EntityRecord._({required this.record, required this.link}) : super._();
  @override
  EntityRecord rebuild(void Function(EntityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityRecordBuilder toBuilder() => EntityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityRecord &&
        record == other.record &&
        link == other.link;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityRecord')
          ..add('record', record)
          ..add('link', link))
        .toString();
  }
}

class EntityRecordBuilder
    implements Builder<EntityRecord, EntityRecordBuilder> {
  _$EntityRecord? _$v;

  RecordBuilder? _record;
  RecordBuilder get record => _$this._record ??= RecordBuilder();
  set record(RecordBuilder? record) => _$this._record = record;

  EntityLinkBuilder? _link;
  EntityLinkBuilder get link => _$this._link ??= EntityLinkBuilder();
  set link(EntityLinkBuilder? link) => _$this._link = link;

  EntityRecordBuilder() {
    EntityRecord._defaults(this);
  }

  EntityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _record = $v.record.toBuilder();
      _link = $v.link.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityRecord other) {
    _$v = other as _$EntityRecord;
  }

  @override
  void update(void Function(EntityRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityRecord build() => _build();

  _$EntityRecord _build() {
    _$EntityRecord _$result;
    try {
      _$result = _$v ??
          _$EntityRecord._(
            record: record.build(),
            link: link.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'record';
        record.build();
        _$failedField = 'link';
        link.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EntityRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
