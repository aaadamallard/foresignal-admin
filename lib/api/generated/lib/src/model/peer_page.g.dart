// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeerPage extends PeerPage {
  @override
  final BuiltList<Peer> items;
  @override
  final String? nextCursor;

  factory _$PeerPage([void Function(PeerPageBuilder)? updates]) =>
      (PeerPageBuilder()..update(updates))._build();

  _$PeerPage._({required this.items, this.nextCursor}) : super._();
  @override
  PeerPage rebuild(void Function(PeerPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeerPageBuilder toBuilder() => PeerPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeerPage &&
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
    return (newBuiltValueToStringHelper(r'PeerPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PeerPageBuilder implements Builder<PeerPage, PeerPageBuilder> {
  _$PeerPage? _$v;

  ListBuilder<Peer>? _items;
  ListBuilder<Peer> get items => _$this._items ??= ListBuilder<Peer>();
  set items(ListBuilder<Peer>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PeerPageBuilder() {
    PeerPage._defaults(this);
  }

  PeerPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeerPage other) {
    _$v = other as _$PeerPage;
  }

  @override
  void update(void Function(PeerPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeerPage build() => _build();

  _$PeerPage _build() {
    _$PeerPage _$result;
    try {
      _$result = _$v ??
          _$PeerPage._(
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
            r'PeerPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
