// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_edge_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraEdgePage extends InfraEdgePage {
  @override
  final BuiltList<InfraEdge> items;
  @override
  final String? nextCursor;

  factory _$InfraEdgePage([void Function(InfraEdgePageBuilder)? updates]) =>
      (InfraEdgePageBuilder()..update(updates))._build();

  _$InfraEdgePage._({required this.items, this.nextCursor}) : super._();
  @override
  InfraEdgePage rebuild(void Function(InfraEdgePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraEdgePageBuilder toBuilder() => InfraEdgePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraEdgePage &&
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
    return (newBuiltValueToStringHelper(r'InfraEdgePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class InfraEdgePageBuilder
    implements Builder<InfraEdgePage, InfraEdgePageBuilder> {
  _$InfraEdgePage? _$v;

  ListBuilder<InfraEdge>? _items;
  ListBuilder<InfraEdge> get items =>
      _$this._items ??= ListBuilder<InfraEdge>();
  set items(ListBuilder<InfraEdge>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  InfraEdgePageBuilder() {
    InfraEdgePage._defaults(this);
  }

  InfraEdgePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraEdgePage other) {
    _$v = other as _$InfraEdgePage;
  }

  @override
  void update(void Function(InfraEdgePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraEdgePage build() => _build();

  _$InfraEdgePage _build() {
    _$InfraEdgePage _$result;
    try {
      _$result =
          _$v ??
          _$InfraEdgePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InfraEdgePage',
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
