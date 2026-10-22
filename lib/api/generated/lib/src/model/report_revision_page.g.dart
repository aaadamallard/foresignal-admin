// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_revision_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportRevisionPage extends ReportRevisionPage {
  @override
  final BuiltList<ReportRevision> items;
  @override
  final String? nextCursor;

  factory _$ReportRevisionPage(
          [void Function(ReportRevisionPageBuilder)? updates]) =>
      (ReportRevisionPageBuilder()..update(updates))._build();

  _$ReportRevisionPage._({required this.items, this.nextCursor}) : super._();
  @override
  ReportRevisionPage rebuild(
          void Function(ReportRevisionPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportRevisionPageBuilder toBuilder() =>
      ReportRevisionPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportRevisionPage &&
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
    return (newBuiltValueToStringHelper(r'ReportRevisionPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ReportRevisionPageBuilder
    implements Builder<ReportRevisionPage, ReportRevisionPageBuilder> {
  _$ReportRevisionPage? _$v;

  ListBuilder<ReportRevision>? _items;
  ListBuilder<ReportRevision> get items =>
      _$this._items ??= ListBuilder<ReportRevision>();
  set items(ListBuilder<ReportRevision>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ReportRevisionPageBuilder() {
    ReportRevisionPage._defaults(this);
  }

  ReportRevisionPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportRevisionPage other) {
    _$v = other as _$ReportRevisionPage;
  }

  @override
  void update(void Function(ReportRevisionPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportRevisionPage build() => _build();

  _$ReportRevisionPage _build() {
    _$ReportRevisionPage _$result;
    try {
      _$result = _$v ??
          _$ReportRevisionPage._(
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
            r'ReportRevisionPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
