// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityPage extends EntityPage {
  @override
  final BuiltList<Entity> items;
  @override
  final String? nextCursor;

  factory _$EntityPage([void Function(EntityPageBuilder)? updates]) =>
      (EntityPageBuilder()..update(updates))._build();

  _$EntityPage._({required this.items, this.nextCursor}) : super._();
  @override
  EntityPage rebuild(void Function(EntityPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityPageBuilder toBuilder() => EntityPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityPage &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class EntityPageBuilder implements Builder<EntityPage, EntityPageBuilder> {
  _$EntityPage? _$v;

  ListBuilder<Entity>? _items;
  ListBuilder<Entity> get items => _$this._items ??= ListBuilder<Entity>();
  set items(ListBuilder<Entity>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  EntityPageBuilder() {
    EntityPage._defaults(this);
  }

  EntityPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityPage other) {
    _$v = other as _$EntityPage;
  }

  @override
  void update(void Function(EntityPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityPage build() => _build();

  _$EntityPage _build() {
    _$EntityPage _$result;
    try {
      _$result =
          _$v ?? _$EntityPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityPage',
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
