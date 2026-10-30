// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_my_editions200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListMyEditions200Response extends ListMyEditions200Response {
  @override
  final BuiltList<EditionSummary> items;
  @override
  final String? nextCursor;

  factory _$ListMyEditions200Response([
    void Function(ListMyEditions200ResponseBuilder)? updates,
  ]) => (ListMyEditions200ResponseBuilder()..update(updates))._build();

  _$ListMyEditions200Response._({required this.items, this.nextCursor})
    : super._();
  @override
  ListMyEditions200Response rebuild(
    void Function(ListMyEditions200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ListMyEditions200ResponseBuilder toBuilder() =>
      ListMyEditions200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMyEditions200Response &&
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
    return (newBuiltValueToStringHelper(r'ListMyEditions200Response')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ListMyEditions200ResponseBuilder
    implements
        Builder<ListMyEditions200Response, ListMyEditions200ResponseBuilder> {
  _$ListMyEditions200Response? _$v;

  ListBuilder<EditionSummary>? _items;
  ListBuilder<EditionSummary> get items =>
      _$this._items ??= ListBuilder<EditionSummary>();
  set items(ListBuilder<EditionSummary>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ListMyEditions200ResponseBuilder() {
    ListMyEditions200Response._defaults(this);
  }

  ListMyEditions200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMyEditions200Response other) {
    _$v = other as _$ListMyEditions200Response;
  }

  @override
  void update(void Function(ListMyEditions200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMyEditions200Response build() => _build();

  _$ListMyEditions200Response _build() {
    _$ListMyEditions200Response _$result;
    try {
      _$result =
          _$v ??
          _$ListMyEditions200Response._(
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
          r'ListMyEditions200Response',
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
