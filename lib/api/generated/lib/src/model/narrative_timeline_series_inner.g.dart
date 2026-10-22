// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_timeline_series_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NarrativeTimelineSeriesInner extends NarrativeTimelineSeriesInner {
  @override
  final String platform;
  @override
  final BuiltList<NarrativeTimelineSeriesInnerPointsInner> points;

  factory _$NarrativeTimelineSeriesInner(
          [void Function(NarrativeTimelineSeriesInnerBuilder)? updates]) =>
      (NarrativeTimelineSeriesInnerBuilder()..update(updates))._build();

  _$NarrativeTimelineSeriesInner._(
      {required this.platform, required this.points})
      : super._();
  @override
  NarrativeTimelineSeriesInner rebuild(
          void Function(NarrativeTimelineSeriesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativeTimelineSeriesInnerBuilder toBuilder() =>
      NarrativeTimelineSeriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeTimelineSeriesInner &&
        platform == other.platform &&
        points == other.points;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativeTimelineSeriesInner')
          ..add('platform', platform)
          ..add('points', points))
        .toString();
  }
}

class NarrativeTimelineSeriesInnerBuilder
    implements
        Builder<NarrativeTimelineSeriesInner,
            NarrativeTimelineSeriesInnerBuilder> {
  _$NarrativeTimelineSeriesInner? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  ListBuilder<NarrativeTimelineSeriesInnerPointsInner>? _points;
  ListBuilder<NarrativeTimelineSeriesInnerPointsInner> get points =>
      _$this._points ??= ListBuilder<NarrativeTimelineSeriesInnerPointsInner>();
  set points(ListBuilder<NarrativeTimelineSeriesInnerPointsInner>? points) =>
      _$this._points = points;

  NarrativeTimelineSeriesInnerBuilder() {
    NarrativeTimelineSeriesInner._defaults(this);
  }

  NarrativeTimelineSeriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _points = $v.points.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeTimelineSeriesInner other) {
    _$v = other as _$NarrativeTimelineSeriesInner;
  }

  @override
  void update(void Function(NarrativeTimelineSeriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeTimelineSeriesInner build() => _build();

  _$NarrativeTimelineSeriesInner _build() {
    _$NarrativeTimelineSeriesInner _$result;
    try {
      _$result = _$v ??
          _$NarrativeTimelineSeriesInner._(
            platform: BuiltValueNullFieldError.checkNotNull(
                platform, r'NarrativeTimelineSeriesInner', 'platform'),
            points: points.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NarrativeTimelineSeriesInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
