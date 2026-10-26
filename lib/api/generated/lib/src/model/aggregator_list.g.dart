// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregator_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregatorList extends AggregatorList {
  @override
  final BuiltList<Aggregator> items;

  factory _$AggregatorList([void Function(AggregatorListBuilder)? updates]) =>
      (AggregatorListBuilder()..update(updates))._build();

  _$AggregatorList._({required this.items}) : super._();
  @override
  AggregatorList rebuild(void Function(AggregatorListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregatorListBuilder toBuilder() => AggregatorListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregatorList && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AggregatorList',
    )..add('items', items)).toString();
  }
}

class AggregatorListBuilder
    implements Builder<AggregatorList, AggregatorListBuilder> {
  _$AggregatorList? _$v;

  ListBuilder<Aggregator>? _items;
  ListBuilder<Aggregator> get items =>
      _$this._items ??= ListBuilder<Aggregator>();
  set items(ListBuilder<Aggregator>? items) => _$this._items = items;

  AggregatorListBuilder() {
    AggregatorList._defaults(this);
  }

  AggregatorListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregatorList other) {
    _$v = other as _$AggregatorList;
  }

  @override
  void update(void Function(AggregatorListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregatorList build() => _build();

  _$AggregatorList _build() {
    _$AggregatorList _$result;
    try {
      _$result = _$v ?? _$AggregatorList._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AggregatorList',
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
