// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'received_package_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReceivedPackagePage extends ReceivedPackagePage {
  @override
  final BuiltList<ReceivedPackage> items;
  @override
  final String? nextCursor;

  factory _$ReceivedPackagePage([
    void Function(ReceivedPackagePageBuilder)? updates,
  ]) => (ReceivedPackagePageBuilder()..update(updates))._build();

  _$ReceivedPackagePage._({required this.items, this.nextCursor}) : super._();
  @override
  ReceivedPackagePage rebuild(
    void Function(ReceivedPackagePageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReceivedPackagePageBuilder toBuilder() =>
      ReceivedPackagePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceivedPackagePage &&
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
    return (newBuiltValueToStringHelper(r'ReceivedPackagePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ReceivedPackagePageBuilder
    implements Builder<ReceivedPackagePage, ReceivedPackagePageBuilder> {
  _$ReceivedPackagePage? _$v;

  ListBuilder<ReceivedPackage>? _items;
  ListBuilder<ReceivedPackage> get items =>
      _$this._items ??= ListBuilder<ReceivedPackage>();
  set items(ListBuilder<ReceivedPackage>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ReceivedPackagePageBuilder() {
    ReceivedPackagePage._defaults(this);
  }

  ReceivedPackagePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceivedPackagePage other) {
    _$v = other as _$ReceivedPackagePage;
  }

  @override
  void update(void Function(ReceivedPackagePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceivedPackagePage build() => _build();

  _$ReceivedPackagePage _build() {
    _$ReceivedPackagePage _$result;
    try {
      _$result =
          _$v ??
          _$ReceivedPackagePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReceivedPackagePage',
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
