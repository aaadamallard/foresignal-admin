// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_record_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityRecordList extends EntityRecordList {
  @override
  final String entityId;
  @override
  final DateTime? at;
  @override
  final BuiltList<EntityRecord> items;

  factory _$EntityRecordList([
    void Function(EntityRecordListBuilder)? updates,
  ]) => (EntityRecordListBuilder()..update(updates))._build();

  _$EntityRecordList._({required this.entityId, this.at, required this.items})
    : super._();
  @override
  EntityRecordList rebuild(void Function(EntityRecordListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityRecordListBuilder toBuilder() =>
      EntityRecordListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityRecordList &&
        entityId == other.entityId &&
        at == other.at &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityRecordList')
          ..add('entityId', entityId)
          ..add('at', at)
          ..add('items', items))
        .toString();
  }
}

class EntityRecordListBuilder
    implements Builder<EntityRecordList, EntityRecordListBuilder> {
  _$EntityRecordList? _$v;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(String? entityId) => _$this._entityId = entityId;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ListBuilder<EntityRecord>? _items;
  ListBuilder<EntityRecord> get items =>
      _$this._items ??= ListBuilder<EntityRecord>();
  set items(ListBuilder<EntityRecord>? items) => _$this._items = items;

  EntityRecordListBuilder() {
    EntityRecordList._defaults(this);
  }

  EntityRecordListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityId = $v.entityId;
      _at = $v.at;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityRecordList other) {
    _$v = other as _$EntityRecordList;
  }

  @override
  void update(void Function(EntityRecordListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityRecordList build() => _build();

  _$EntityRecordList _build() {
    _$EntityRecordList _$result;
    try {
      _$result =
          _$v ??
          _$EntityRecordList._(
            entityId: BuiltValueNullFieldError.checkNotNull(
              entityId,
              r'EntityRecordList',
              'entityId',
            ),
            at: at,
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityRecordList',
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
