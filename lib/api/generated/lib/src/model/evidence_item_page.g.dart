// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidence_item_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvidenceItemPage extends EvidenceItemPage {
  @override
  final BuiltList<EvidenceItem> items;
  @override
  final String? nextCursor;

  factory _$EvidenceItemPage([
    void Function(EvidenceItemPageBuilder)? updates,
  ]) => (EvidenceItemPageBuilder()..update(updates))._build();

  _$EvidenceItemPage._({required this.items, this.nextCursor}) : super._();
  @override
  EvidenceItemPage rebuild(void Function(EvidenceItemPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvidenceItemPageBuilder toBuilder() =>
      EvidenceItemPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvidenceItemPage &&
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
    return (newBuiltValueToStringHelper(r'EvidenceItemPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class EvidenceItemPageBuilder
    implements Builder<EvidenceItemPage, EvidenceItemPageBuilder> {
  _$EvidenceItemPage? _$v;

  ListBuilder<EvidenceItem>? _items;
  ListBuilder<EvidenceItem> get items =>
      _$this._items ??= ListBuilder<EvidenceItem>();
  set items(ListBuilder<EvidenceItem>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  EvidenceItemPageBuilder() {
    EvidenceItemPage._defaults(this);
  }

  EvidenceItemPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvidenceItemPage other) {
    _$v = other as _$EvidenceItemPage;
  }

  @override
  void update(void Function(EvidenceItemPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvidenceItemPage build() => _build();

  _$EvidenceItemPage _build() {
    _$EvidenceItemPage _$result;
    try {
      _$result =
          _$v ??
          _$EvidenceItemPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EvidenceItemPage',
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
