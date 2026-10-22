// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_timeline_series_inner_points_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NarrativeTimelineSeriesInnerPointsInner
    extends NarrativeTimelineSeriesInnerPointsInner {
  @override
  final DateTime t;
  @override
  final int posts;
  @override
  final int uniqueAuthors;

  factory _$NarrativeTimelineSeriesInnerPointsInner([
    void Function(NarrativeTimelineSeriesInnerPointsInnerBuilder)? updates,
  ]) => (NarrativeTimelineSeriesInnerPointsInnerBuilder()..update(updates))
      ._build();

  _$NarrativeTimelineSeriesInnerPointsInner._({
    required this.t,
    required this.posts,
    required this.uniqueAuthors,
  }) : super._();
  @override
  NarrativeTimelineSeriesInnerPointsInner rebuild(
    void Function(NarrativeTimelineSeriesInnerPointsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NarrativeTimelineSeriesInnerPointsInnerBuilder toBuilder() =>
      NarrativeTimelineSeriesInnerPointsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeTimelineSeriesInnerPointsInner &&
        t == other.t &&
        posts == other.posts &&
        uniqueAuthors == other.uniqueAuthors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, posts.hashCode);
    _$hash = $jc(_$hash, uniqueAuthors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'NarrativeTimelineSeriesInnerPointsInner',
          )
          ..add('t', t)
          ..add('posts', posts)
          ..add('uniqueAuthors', uniqueAuthors))
        .toString();
  }
}

class NarrativeTimelineSeriesInnerPointsInnerBuilder
    implements
        Builder<
          NarrativeTimelineSeriesInnerPointsInner,
          NarrativeTimelineSeriesInnerPointsInnerBuilder
        > {
  _$NarrativeTimelineSeriesInnerPointsInner? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  int? _posts;
  int? get posts => _$this._posts;
  set posts(int? posts) => _$this._posts = posts;

  int? _uniqueAuthors;
  int? get uniqueAuthors => _$this._uniqueAuthors;
  set uniqueAuthors(int? uniqueAuthors) =>
      _$this._uniqueAuthors = uniqueAuthors;

  NarrativeTimelineSeriesInnerPointsInnerBuilder() {
    NarrativeTimelineSeriesInnerPointsInner._defaults(this);
  }

  NarrativeTimelineSeriesInnerPointsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _posts = $v.posts;
      _uniqueAuthors = $v.uniqueAuthors;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeTimelineSeriesInnerPointsInner other) {
    _$v = other as _$NarrativeTimelineSeriesInnerPointsInner;
  }

  @override
  void update(
    void Function(NarrativeTimelineSeriesInnerPointsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeTimelineSeriesInnerPointsInner build() => _build();

  _$NarrativeTimelineSeriesInnerPointsInner _build() {
    final _$result =
        _$v ??
        _$NarrativeTimelineSeriesInnerPointsInner._(
          t: BuiltValueNullFieldError.checkNotNull(
            t,
            r'NarrativeTimelineSeriesInnerPointsInner',
            't',
          ),
          posts: BuiltValueNullFieldError.checkNotNull(
            posts,
            r'NarrativeTimelineSeriesInnerPointsInner',
            'posts',
          ),
          uniqueAuthors: BuiltValueNullFieldError.checkNotNull(
            uniqueAuthors,
            r'NarrativeTimelineSeriesInnerPointsInner',
            'uniqueAuthors',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
