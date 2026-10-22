// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_revision_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisRevisionPage extends HypothesisRevisionPage {
  @override
  final BuiltList<HypothesisRevision> items;
  @override
  final String? nextCursor;

  factory _$HypothesisRevisionPage([
    void Function(HypothesisRevisionPageBuilder)? updates,
  ]) => (HypothesisRevisionPageBuilder()..update(updates))._build();

  _$HypothesisRevisionPage._({required this.items, this.nextCursor})
    : super._();
  @override
  HypothesisRevisionPage rebuild(
    void Function(HypothesisRevisionPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisRevisionPageBuilder toBuilder() =>
      HypothesisRevisionPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisRevisionPage &&
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
    return (newBuiltValueToStringHelper(r'HypothesisRevisionPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class HypothesisRevisionPageBuilder
    implements Builder<HypothesisRevisionPage, HypothesisRevisionPageBuilder> {
  _$HypothesisRevisionPage? _$v;

  ListBuilder<HypothesisRevision>? _items;
  ListBuilder<HypothesisRevision> get items =>
      _$this._items ??= ListBuilder<HypothesisRevision>();
  set items(ListBuilder<HypothesisRevision>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  HypothesisRevisionPageBuilder() {
    HypothesisRevisionPage._defaults(this);
  }

  HypothesisRevisionPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisRevisionPage other) {
    _$v = other as _$HypothesisRevisionPage;
  }

  @override
  void update(void Function(HypothesisRevisionPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisRevisionPage build() => _build();

  _$HypothesisRevisionPage _build() {
    _$HypothesisRevisionPage _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisRevisionPage._(
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
          r'HypothesisRevisionPage',
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
