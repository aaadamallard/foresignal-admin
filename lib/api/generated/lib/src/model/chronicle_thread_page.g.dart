// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_thread_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleThreadPage extends ChronicleThreadPage {
  @override
  final BuiltList<ChronicleThreadItem> items;
  @override
  final String? nextCursor;
  @override
  final int? unreadCount;
  @override
  final int? readUpTo;

  factory _$ChronicleThreadPage([
    void Function(ChronicleThreadPageBuilder)? updates,
  ]) => (ChronicleThreadPageBuilder()..update(updates))._build();

  _$ChronicleThreadPage._({
    required this.items,
    this.nextCursor,
    this.unreadCount,
    this.readUpTo,
  }) : super._();
  @override
  ChronicleThreadPage rebuild(
    void Function(ChronicleThreadPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleThreadPageBuilder toBuilder() =>
      ChronicleThreadPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleThreadPage &&
        items == other.items &&
        nextCursor == other.nextCursor &&
        unreadCount == other.unreadCount &&
        readUpTo == other.readUpTo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, unreadCount.hashCode);
    _$hash = $jc(_$hash, readUpTo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleThreadPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor)
          ..add('unreadCount', unreadCount)
          ..add('readUpTo', readUpTo))
        .toString();
  }
}

class ChronicleThreadPageBuilder
    implements Builder<ChronicleThreadPage, ChronicleThreadPageBuilder> {
  _$ChronicleThreadPage? _$v;

  ListBuilder<ChronicleThreadItem>? _items;
  ListBuilder<ChronicleThreadItem> get items =>
      _$this._items ??= ListBuilder<ChronicleThreadItem>();
  set items(ListBuilder<ChronicleThreadItem>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  int? _unreadCount;
  int? get unreadCount => _$this._unreadCount;
  set unreadCount(int? unreadCount) => _$this._unreadCount = unreadCount;

  int? _readUpTo;
  int? get readUpTo => _$this._readUpTo;
  set readUpTo(int? readUpTo) => _$this._readUpTo = readUpTo;

  ChronicleThreadPageBuilder() {
    ChronicleThreadPage._defaults(this);
  }

  ChronicleThreadPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _unreadCount = $v.unreadCount;
      _readUpTo = $v.readUpTo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleThreadPage other) {
    _$v = other as _$ChronicleThreadPage;
  }

  @override
  void update(void Function(ChronicleThreadPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleThreadPage build() => _build();

  _$ChronicleThreadPage _build() {
    _$ChronicleThreadPage _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleThreadPage._(
            items: items.build(),
            nextCursor: nextCursor,
            unreadCount: unreadCount,
            readUpTo: readUpTo,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleThreadPage',
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
