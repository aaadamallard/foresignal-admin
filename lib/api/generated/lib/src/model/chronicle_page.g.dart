// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChroniclePage extends ChroniclePage {
  @override
  final BuiltList<Chronicle> items;
  @override
  final String? nextCursor;

  factory _$ChroniclePage([void Function(ChroniclePageBuilder)? updates]) =>
      (ChroniclePageBuilder()..update(updates))._build();

  _$ChroniclePage._({required this.items, this.nextCursor}) : super._();
  @override
  ChroniclePage rebuild(void Function(ChroniclePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChroniclePageBuilder toBuilder() => ChroniclePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChroniclePage &&
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
    return (newBuiltValueToStringHelper(r'ChroniclePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ChroniclePageBuilder
    implements Builder<ChroniclePage, ChroniclePageBuilder> {
  _$ChroniclePage? _$v;

  ListBuilder<Chronicle>? _items;
  ListBuilder<Chronicle> get items =>
      _$this._items ??= ListBuilder<Chronicle>();
  set items(ListBuilder<Chronicle>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ChroniclePageBuilder() {
    ChroniclePage._defaults(this);
  }

  ChroniclePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChroniclePage other) {
    _$v = other as _$ChroniclePage;
  }

  @override
  void update(void Function(ChroniclePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChroniclePage build() => _build();

  _$ChroniclePage _build() {
    _$ChroniclePage _$result;
    try {
      _$result =
          _$v ??
          _$ChroniclePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChroniclePage',
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
