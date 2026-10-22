// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_point_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesPointPage extends SeriesPointPage {
  @override
  final SeriesCatalogEntry series;
  @override
  final BuiltList<SeriesPoint> items;
  @override
  final String? nextCursor;
  @override
  final bool? truncated;

  factory _$SeriesPointPage([void Function(SeriesPointPageBuilder)? updates]) =>
      (SeriesPointPageBuilder()..update(updates))._build();

  _$SeriesPointPage._(
      {required this.series,
      required this.items,
      this.nextCursor,
      this.truncated})
      : super._();
  @override
  SeriesPointPage rebuild(void Function(SeriesPointPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesPointPageBuilder toBuilder() => SeriesPointPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesPointPage &&
        series == other.series &&
        items == other.items &&
        nextCursor == other.nextCursor &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesPointPage')
          ..add('series', series)
          ..add('items', items)
          ..add('nextCursor', nextCursor)
          ..add('truncated', truncated))
        .toString();
  }
}

class SeriesPointPageBuilder
    implements Builder<SeriesPointPage, SeriesPointPageBuilder> {
  _$SeriesPointPage? _$v;

  SeriesCatalogEntryBuilder? _series;
  SeriesCatalogEntryBuilder get series =>
      _$this._series ??= SeriesCatalogEntryBuilder();
  set series(SeriesCatalogEntryBuilder? series) => _$this._series = series;

  ListBuilder<SeriesPoint>? _items;
  ListBuilder<SeriesPoint> get items =>
      _$this._items ??= ListBuilder<SeriesPoint>();
  set items(ListBuilder<SeriesPoint>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  SeriesPointPageBuilder() {
    SeriesPointPage._defaults(this);
  }

  SeriesPointPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _series = $v.series.toBuilder();
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesPointPage other) {
    _$v = other as _$SeriesPointPage;
  }

  @override
  void update(void Function(SeriesPointPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesPointPage build() => _build();

  _$SeriesPointPage _build() {
    _$SeriesPointPage _$result;
    try {
      _$result = _$v ??
          _$SeriesPointPage._(
            series: series.build(),
            items: items.build(),
            nextCursor: nextCursor,
            truncated: truncated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        series.build();
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeriesPointPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
