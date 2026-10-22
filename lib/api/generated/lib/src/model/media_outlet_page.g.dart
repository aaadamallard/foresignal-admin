// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_outlet_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaOutletPage extends MediaOutletPage {
  @override
  final BuiltList<MediaOutlet> items;
  @override
  final String? nextCursor;

  factory _$MediaOutletPage([void Function(MediaOutletPageBuilder)? updates]) =>
      (MediaOutletPageBuilder()..update(updates))._build();

  _$MediaOutletPage._({required this.items, this.nextCursor}) : super._();
  @override
  MediaOutletPage rebuild(void Function(MediaOutletPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaOutletPageBuilder toBuilder() => MediaOutletPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaOutletPage &&
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
    return (newBuiltValueToStringHelper(r'MediaOutletPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class MediaOutletPageBuilder
    implements Builder<MediaOutletPage, MediaOutletPageBuilder> {
  _$MediaOutletPage? _$v;

  ListBuilder<MediaOutlet>? _items;
  ListBuilder<MediaOutlet> get items =>
      _$this._items ??= ListBuilder<MediaOutlet>();
  set items(ListBuilder<MediaOutlet>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  MediaOutletPageBuilder() {
    MediaOutletPage._defaults(this);
  }

  MediaOutletPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaOutletPage other) {
    _$v = other as _$MediaOutletPage;
  }

  @override
  void update(void Function(MediaOutletPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaOutletPage build() => _build();

  _$MediaOutletPage _build() {
    _$MediaOutletPage _$result;
    try {
      _$result =
          _$v ??
          _$MediaOutletPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MediaOutletPage',
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
