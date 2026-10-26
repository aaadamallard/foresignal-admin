// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egress_route_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressRoutePage extends EgressRoutePage {
  @override
  final BuiltList<EgressRoute> items;
  @override
  final String? nextCursor;

  factory _$EgressRoutePage([void Function(EgressRoutePageBuilder)? updates]) =>
      (EgressRoutePageBuilder()..update(updates))._build();

  _$EgressRoutePage._({required this.items, this.nextCursor}) : super._();
  @override
  EgressRoutePage rebuild(void Function(EgressRoutePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EgressRoutePageBuilder toBuilder() => EgressRoutePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressRoutePage &&
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
    return (newBuiltValueToStringHelper(r'EgressRoutePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class EgressRoutePageBuilder
    implements Builder<EgressRoutePage, EgressRoutePageBuilder> {
  _$EgressRoutePage? _$v;

  ListBuilder<EgressRoute>? _items;
  ListBuilder<EgressRoute> get items =>
      _$this._items ??= ListBuilder<EgressRoute>();
  set items(ListBuilder<EgressRoute>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  EgressRoutePageBuilder() {
    EgressRoutePage._defaults(this);
  }

  EgressRoutePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressRoutePage other) {
    _$v = other as _$EgressRoutePage;
  }

  @override
  void update(void Function(EgressRoutePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressRoutePage build() => _build();

  _$EgressRoutePage _build() {
    _$EgressRoutePage _$result;
    try {
      _$result =
          _$v ??
          _$EgressRoutePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EgressRoutePage',
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
