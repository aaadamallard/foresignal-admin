// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_link_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareLinkPage extends ShareLinkPage {
  @override
  final BuiltList<ShareLink> items;
  @override
  final String? nextCursor;

  factory _$ShareLinkPage([void Function(ShareLinkPageBuilder)? updates]) =>
      (ShareLinkPageBuilder()..update(updates))._build();

  _$ShareLinkPage._({required this.items, this.nextCursor}) : super._();
  @override
  ShareLinkPage rebuild(void Function(ShareLinkPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareLinkPageBuilder toBuilder() => ShareLinkPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareLinkPage &&
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
    return (newBuiltValueToStringHelper(r'ShareLinkPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ShareLinkPageBuilder
    implements Builder<ShareLinkPage, ShareLinkPageBuilder> {
  _$ShareLinkPage? _$v;

  ListBuilder<ShareLink>? _items;
  ListBuilder<ShareLink> get items =>
      _$this._items ??= ListBuilder<ShareLink>();
  set items(ListBuilder<ShareLink>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ShareLinkPageBuilder() {
    ShareLinkPage._defaults(this);
  }

  ShareLinkPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareLinkPage other) {
    _$v = other as _$ShareLinkPage;
  }

  @override
  void update(void Function(ShareLinkPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareLinkPage build() => _build();

  _$ShareLinkPage _build() {
    _$ShareLinkPage _$result;
    try {
      _$result = _$v ??
          _$ShareLinkPage._(
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
            r'ShareLinkPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
