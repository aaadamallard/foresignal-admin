// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NarrativePage extends NarrativePage {
  @override
  final BuiltList<NarrativeSummary> items;
  @override
  final String? nextCursor;

  factory _$NarrativePage([void Function(NarrativePageBuilder)? updates]) =>
      (NarrativePageBuilder()..update(updates))._build();

  _$NarrativePage._({required this.items, this.nextCursor}) : super._();
  @override
  NarrativePage rebuild(void Function(NarrativePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativePageBuilder toBuilder() => NarrativePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativePage &&
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
    return (newBuiltValueToStringHelper(r'NarrativePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class NarrativePageBuilder
    implements Builder<NarrativePage, NarrativePageBuilder> {
  _$NarrativePage? _$v;

  ListBuilder<NarrativeSummary>? _items;
  ListBuilder<NarrativeSummary> get items =>
      _$this._items ??= ListBuilder<NarrativeSummary>();
  set items(ListBuilder<NarrativeSummary>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  NarrativePageBuilder() {
    NarrativePage._defaults(this);
  }

  NarrativePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativePage other) {
    _$v = other as _$NarrativePage;
  }

  @override
  void update(void Function(NarrativePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativePage build() => _build();

  _$NarrativePage _build() {
    _$NarrativePage _$result;
    try {
      _$result = _$v ??
          _$NarrativePage._(
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
            r'NarrativePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
