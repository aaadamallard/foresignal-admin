// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing_run_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BriefingRunPage extends BriefingRunPage {
  @override
  final BuiltList<BriefingRun> items;
  @override
  final String? nextCursor;

  factory _$BriefingRunPage([void Function(BriefingRunPageBuilder)? updates]) =>
      (BriefingRunPageBuilder()..update(updates))._build();

  _$BriefingRunPage._({required this.items, this.nextCursor}) : super._();
  @override
  BriefingRunPage rebuild(void Function(BriefingRunPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BriefingRunPageBuilder toBuilder() => BriefingRunPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BriefingRunPage &&
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
    return (newBuiltValueToStringHelper(r'BriefingRunPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class BriefingRunPageBuilder
    implements Builder<BriefingRunPage, BriefingRunPageBuilder> {
  _$BriefingRunPage? _$v;

  ListBuilder<BriefingRun>? _items;
  ListBuilder<BriefingRun> get items =>
      _$this._items ??= ListBuilder<BriefingRun>();
  set items(ListBuilder<BriefingRun>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  BriefingRunPageBuilder() {
    BriefingRunPage._defaults(this);
  }

  BriefingRunPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BriefingRunPage other) {
    _$v = other as _$BriefingRunPage;
  }

  @override
  void update(void Function(BriefingRunPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BriefingRunPage build() => _build();

  _$BriefingRunPage _build() {
    _$BriefingRunPage _$result;
    try {
      _$result =
          _$v ??
          _$BriefingRunPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BriefingRunPage',
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
