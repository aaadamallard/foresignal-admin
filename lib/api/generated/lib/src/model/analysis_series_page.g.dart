// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_series_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisSeriesPage extends AnalysisSeriesPage {
  @override
  final BuiltList<AnalysisSeries> items;
  @override
  final String? nextCursor;

  factory _$AnalysisSeriesPage([
    void Function(AnalysisSeriesPageBuilder)? updates,
  ]) => (AnalysisSeriesPageBuilder()..update(updates))._build();

  _$AnalysisSeriesPage._({required this.items, this.nextCursor}) : super._();
  @override
  AnalysisSeriesPage rebuild(
    void Function(AnalysisSeriesPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalysisSeriesPageBuilder toBuilder() =>
      AnalysisSeriesPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisSeriesPage &&
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
    return (newBuiltValueToStringHelper(r'AnalysisSeriesPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AnalysisSeriesPageBuilder
    implements Builder<AnalysisSeriesPage, AnalysisSeriesPageBuilder> {
  _$AnalysisSeriesPage? _$v;

  ListBuilder<AnalysisSeries>? _items;
  ListBuilder<AnalysisSeries> get items =>
      _$this._items ??= ListBuilder<AnalysisSeries>();
  set items(ListBuilder<AnalysisSeries>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AnalysisSeriesPageBuilder() {
    AnalysisSeriesPage._defaults(this);
  }

  AnalysisSeriesPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisSeriesPage other) {
    _$v = other as _$AnalysisSeriesPage;
  }

  @override
  void update(void Function(AnalysisSeriesPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisSeriesPage build() => _build();

  _$AnalysisSeriesPage _build() {
    _$AnalysisSeriesPage _$result;
    try {
      _$result =
          _$v ??
          _$AnalysisSeriesPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalysisSeriesPage',
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
