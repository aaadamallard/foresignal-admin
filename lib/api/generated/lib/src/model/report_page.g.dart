// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportPage extends ReportPage {
  @override
  final BuiltList<Report> items;
  @override
  final String? nextCursor;

  factory _$ReportPage([void Function(ReportPageBuilder)? updates]) =>
      (ReportPageBuilder()..update(updates))._build();

  _$ReportPage._({required this.items, this.nextCursor}) : super._();
  @override
  ReportPage rebuild(void Function(ReportPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportPageBuilder toBuilder() => ReportPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportPage &&
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
    return (newBuiltValueToStringHelper(r'ReportPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ReportPageBuilder implements Builder<ReportPage, ReportPageBuilder> {
  _$ReportPage? _$v;

  ListBuilder<Report>? _items;
  ListBuilder<Report> get items => _$this._items ??= ListBuilder<Report>();
  set items(ListBuilder<Report>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ReportPageBuilder() {
    ReportPage._defaults(this);
  }

  ReportPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportPage other) {
    _$v = other as _$ReportPage;
  }

  @override
  void update(void Function(ReportPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportPage build() => _build();

  _$ReportPage _build() {
    _$ReportPage _$result;
    try {
      _$result = _$v ??
          _$ReportPage._(
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
            r'ReportPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
