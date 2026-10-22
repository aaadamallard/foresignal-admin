// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_objects.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelatedObjects extends RelatedObjects {
  @override
  final String ref;
  @override
  final DateTime? asOf;
  @override
  final BuiltList<RelatedObject> items;
  @override
  final bool? truncated;

  factory _$RelatedObjects([void Function(RelatedObjectsBuilder)? updates]) =>
      (RelatedObjectsBuilder()..update(updates))._build();

  _$RelatedObjects._({
    required this.ref,
    this.asOf,
    required this.items,
    this.truncated,
  }) : super._();
  @override
  RelatedObjects rebuild(void Function(RelatedObjectsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelatedObjectsBuilder toBuilder() => RelatedObjectsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelatedObjects &&
        ref == other.ref &&
        asOf == other.asOf &&
        items == other.items &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelatedObjects')
          ..add('ref', ref)
          ..add('asOf', asOf)
          ..add('items', items)
          ..add('truncated', truncated))
        .toString();
  }
}

class RelatedObjectsBuilder
    implements Builder<RelatedObjects, RelatedObjectsBuilder> {
  _$RelatedObjects? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  ListBuilder<RelatedObject>? _items;
  ListBuilder<RelatedObject> get items =>
      _$this._items ??= ListBuilder<RelatedObject>();
  set items(ListBuilder<RelatedObject>? items) => _$this._items = items;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  RelatedObjectsBuilder() {
    RelatedObjects._defaults(this);
  }

  RelatedObjectsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _asOf = $v.asOf;
      _items = $v.items.toBuilder();
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelatedObjects other) {
    _$v = other as _$RelatedObjects;
  }

  @override
  void update(void Function(RelatedObjectsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelatedObjects build() => _build();

  _$RelatedObjects _build() {
    _$RelatedObjects _$result;
    try {
      _$result =
          _$v ??
          _$RelatedObjects._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'RelatedObjects',
              'ref',
            ),
            asOf: asOf,
            items: items.build(),
            truncated: truncated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RelatedObjects',
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
