// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_node_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraNodePage extends InfraNodePage {
  @override
  final BuiltList<InfraNode> items;
  @override
  final String? nextCursor;

  factory _$InfraNodePage([void Function(InfraNodePageBuilder)? updates]) =>
      (InfraNodePageBuilder()..update(updates))._build();

  _$InfraNodePage._({required this.items, this.nextCursor}) : super._();
  @override
  InfraNodePage rebuild(void Function(InfraNodePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraNodePageBuilder toBuilder() => InfraNodePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraNodePage &&
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
    return (newBuiltValueToStringHelper(r'InfraNodePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class InfraNodePageBuilder
    implements Builder<InfraNodePage, InfraNodePageBuilder> {
  _$InfraNodePage? _$v;

  ListBuilder<InfraNode>? _items;
  ListBuilder<InfraNode> get items =>
      _$this._items ??= ListBuilder<InfraNode>();
  set items(ListBuilder<InfraNode>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  InfraNodePageBuilder() {
    InfraNodePage._defaults(this);
  }

  InfraNodePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraNodePage other) {
    _$v = other as _$InfraNodePage;
  }

  @override
  void update(void Function(InfraNodePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraNodePage build() => _build();

  _$InfraNodePage _build() {
    _$InfraNodePage _$result;
    try {
      _$result = _$v ??
          _$InfraNodePage._(
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InfraNodePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
