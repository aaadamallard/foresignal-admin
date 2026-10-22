// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_timeline_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClusterTimelinePage extends ClusterTimelinePage {
  @override
  final BuiltList<ClusterTimelineItem> items;
  @override
  final String? nextCursor;

  factory _$ClusterTimelinePage([
    void Function(ClusterTimelinePageBuilder)? updates,
  ]) => (ClusterTimelinePageBuilder()..update(updates))._build();

  _$ClusterTimelinePage._({required this.items, this.nextCursor}) : super._();
  @override
  ClusterTimelinePage rebuild(
    void Function(ClusterTimelinePageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ClusterTimelinePageBuilder toBuilder() =>
      ClusterTimelinePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClusterTimelinePage &&
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
    return (newBuiltValueToStringHelper(r'ClusterTimelinePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ClusterTimelinePageBuilder
    implements Builder<ClusterTimelinePage, ClusterTimelinePageBuilder> {
  _$ClusterTimelinePage? _$v;

  ListBuilder<ClusterTimelineItem>? _items;
  ListBuilder<ClusterTimelineItem> get items =>
      _$this._items ??= ListBuilder<ClusterTimelineItem>();
  set items(ListBuilder<ClusterTimelineItem>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ClusterTimelinePageBuilder() {
    ClusterTimelinePage._defaults(this);
  }

  ClusterTimelinePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClusterTimelinePage other) {
    _$v = other as _$ClusterTimelinePage;
  }

  @override
  void update(void Function(ClusterTimelinePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClusterTimelinePage build() => _build();

  _$ClusterTimelinePage _build() {
    _$ClusterTimelinePage _$result;
    try {
      _$result =
          _$v ??
          _$ClusterTimelinePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ClusterTimelinePage',
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
