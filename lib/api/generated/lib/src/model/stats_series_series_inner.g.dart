// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_series_series_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatsSeriesSeriesInner extends StatsSeriesSeriesInner {
  @override
  final String? key;
  @override
  final BuiltList<StatsSeriesSeriesInnerPointsInner> points;

  factory _$StatsSeriesSeriesInner(
          [void Function(StatsSeriesSeriesInnerBuilder)? updates]) =>
      (StatsSeriesSeriesInnerBuilder()..update(updates))._build();

  _$StatsSeriesSeriesInner._({this.key, required this.points}) : super._();
  @override
  StatsSeriesSeriesInner rebuild(
          void Function(StatsSeriesSeriesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsSeriesSeriesInnerBuilder toBuilder() =>
      StatsSeriesSeriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsSeriesSeriesInner &&
        key == other.key &&
        points == other.points;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsSeriesSeriesInner')
          ..add('key', key)
          ..add('points', points))
        .toString();
  }
}

class StatsSeriesSeriesInnerBuilder
    implements Builder<StatsSeriesSeriesInner, StatsSeriesSeriesInnerBuilder> {
  _$StatsSeriesSeriesInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  ListBuilder<StatsSeriesSeriesInnerPointsInner>? _points;
  ListBuilder<StatsSeriesSeriesInnerPointsInner> get points =>
      _$this._points ??= ListBuilder<StatsSeriesSeriesInnerPointsInner>();
  set points(ListBuilder<StatsSeriesSeriesInnerPointsInner>? points) =>
      _$this._points = points;

  StatsSeriesSeriesInnerBuilder() {
    StatsSeriesSeriesInner._defaults(this);
  }

  StatsSeriesSeriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _points = $v.points.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsSeriesSeriesInner other) {
    _$v = other as _$StatsSeriesSeriesInner;
  }

  @override
  void update(void Function(StatsSeriesSeriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsSeriesSeriesInner build() => _build();

  _$StatsSeriesSeriesInner _build() {
    _$StatsSeriesSeriesInner _$result;
    try {
      _$result = _$v ??
          _$StatsSeriesSeriesInner._(
            key: key,
            points: points.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StatsSeriesSeriesInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
