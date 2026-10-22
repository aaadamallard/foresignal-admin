// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_timeline_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationTimelinePage extends SituationTimelinePage {
  @override
  final BuiltList<SituationTimelineEntry> items;
  @override
  final String? nextCursor;

  factory _$SituationTimelinePage([
    void Function(SituationTimelinePageBuilder)? updates,
  ]) => (SituationTimelinePageBuilder()..update(updates))._build();

  _$SituationTimelinePage._({required this.items, this.nextCursor}) : super._();
  @override
  SituationTimelinePage rebuild(
    void Function(SituationTimelinePageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationTimelinePageBuilder toBuilder() =>
      SituationTimelinePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationTimelinePage &&
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
    return (newBuiltValueToStringHelper(r'SituationTimelinePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SituationTimelinePageBuilder
    implements Builder<SituationTimelinePage, SituationTimelinePageBuilder> {
  _$SituationTimelinePage? _$v;

  ListBuilder<SituationTimelineEntry>? _items;
  ListBuilder<SituationTimelineEntry> get items =>
      _$this._items ??= ListBuilder<SituationTimelineEntry>();
  set items(ListBuilder<SituationTimelineEntry>? items) =>
      _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SituationTimelinePageBuilder() {
    SituationTimelinePage._defaults(this);
  }

  SituationTimelinePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationTimelinePage other) {
    _$v = other as _$SituationTimelinePage;
  }

  @override
  void update(void Function(SituationTimelinePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationTimelinePage build() => _build();

  _$SituationTimelinePage _build() {
    _$SituationTimelinePage _$result;
    try {
      _$result =
          _$v ??
          _$SituationTimelinePage._(
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
          r'SituationTimelinePage',
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
