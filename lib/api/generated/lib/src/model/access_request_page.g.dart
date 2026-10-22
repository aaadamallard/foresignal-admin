// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_request_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessRequestPage extends AccessRequestPage {
  @override
  final BuiltList<AccessRequest> items;
  @override
  final String? nextCursor;

  factory _$AccessRequestPage([
    void Function(AccessRequestPageBuilder)? updates,
  ]) => (AccessRequestPageBuilder()..update(updates))._build();

  _$AccessRequestPage._({required this.items, this.nextCursor}) : super._();
  @override
  AccessRequestPage rebuild(void Function(AccessRequestPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessRequestPageBuilder toBuilder() =>
      AccessRequestPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessRequestPage &&
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
    return (newBuiltValueToStringHelper(r'AccessRequestPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AccessRequestPageBuilder
    implements Builder<AccessRequestPage, AccessRequestPageBuilder> {
  _$AccessRequestPage? _$v;

  ListBuilder<AccessRequest>? _items;
  ListBuilder<AccessRequest> get items =>
      _$this._items ??= ListBuilder<AccessRequest>();
  set items(ListBuilder<AccessRequest>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AccessRequestPageBuilder() {
    AccessRequestPage._defaults(this);
  }

  AccessRequestPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessRequestPage other) {
    _$v = other as _$AccessRequestPage;
  }

  @override
  void update(void Function(AccessRequestPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessRequestPage build() => _build();

  _$AccessRequestPage _build() {
    _$AccessRequestPage _$result;
    try {
      _$result =
          _$v ??
          _$AccessRequestPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AccessRequestPage',
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
