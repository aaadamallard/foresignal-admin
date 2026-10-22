// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_post_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NarrativePostPage extends NarrativePostPage {
  @override
  final BuiltList<NarrativePost> items;
  @override
  final String? nextCursor;

  factory _$NarrativePostPage([
    void Function(NarrativePostPageBuilder)? updates,
  ]) => (NarrativePostPageBuilder()..update(updates))._build();

  _$NarrativePostPage._({required this.items, this.nextCursor}) : super._();
  @override
  NarrativePostPage rebuild(void Function(NarrativePostPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativePostPageBuilder toBuilder() =>
      NarrativePostPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativePostPage &&
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
    return (newBuiltValueToStringHelper(r'NarrativePostPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class NarrativePostPageBuilder
    implements Builder<NarrativePostPage, NarrativePostPageBuilder> {
  _$NarrativePostPage? _$v;

  ListBuilder<NarrativePost>? _items;
  ListBuilder<NarrativePost> get items =>
      _$this._items ??= ListBuilder<NarrativePost>();
  set items(ListBuilder<NarrativePost>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  NarrativePostPageBuilder() {
    NarrativePostPage._defaults(this);
  }

  NarrativePostPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativePostPage other) {
    _$v = other as _$NarrativePostPage;
  }

  @override
  void update(void Function(NarrativePostPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativePostPage build() => _build();

  _$NarrativePostPage _build() {
    _$NarrativePostPage _$result;
    try {
      _$result =
          _$v ??
          _$NarrativePostPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NarrativePostPage',
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
