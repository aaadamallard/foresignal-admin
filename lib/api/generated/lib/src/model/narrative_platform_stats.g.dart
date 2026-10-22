// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_platform_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NarrativePlatformStats extends NarrativePlatformStats {
  @override
  final String platform;
  @override
  final int posts;
  @override
  final int uniqueAuthors;
  @override
  final DateTime firstObservedAt;
  @override
  final String earliestPostRef;

  factory _$NarrativePlatformStats(
          [void Function(NarrativePlatformStatsBuilder)? updates]) =>
      (NarrativePlatformStatsBuilder()..update(updates))._build();

  _$NarrativePlatformStats._(
      {required this.platform,
      required this.posts,
      required this.uniqueAuthors,
      required this.firstObservedAt,
      required this.earliestPostRef})
      : super._();
  @override
  NarrativePlatformStats rebuild(
          void Function(NarrativePlatformStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativePlatformStatsBuilder toBuilder() =>
      NarrativePlatformStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativePlatformStats &&
        platform == other.platform &&
        posts == other.posts &&
        uniqueAuthors == other.uniqueAuthors &&
        firstObservedAt == other.firstObservedAt &&
        earliestPostRef == other.earliestPostRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, posts.hashCode);
    _$hash = $jc(_$hash, uniqueAuthors.hashCode);
    _$hash = $jc(_$hash, firstObservedAt.hashCode);
    _$hash = $jc(_$hash, earliestPostRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativePlatformStats')
          ..add('platform', platform)
          ..add('posts', posts)
          ..add('uniqueAuthors', uniqueAuthors)
          ..add('firstObservedAt', firstObservedAt)
          ..add('earliestPostRef', earliestPostRef))
        .toString();
  }
}

class NarrativePlatformStatsBuilder
    implements Builder<NarrativePlatformStats, NarrativePlatformStatsBuilder> {
  _$NarrativePlatformStats? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  int? _posts;
  int? get posts => _$this._posts;
  set posts(int? posts) => _$this._posts = posts;

  int? _uniqueAuthors;
  int? get uniqueAuthors => _$this._uniqueAuthors;
  set uniqueAuthors(int? uniqueAuthors) =>
      _$this._uniqueAuthors = uniqueAuthors;

  DateTime? _firstObservedAt;
  DateTime? get firstObservedAt => _$this._firstObservedAt;
  set firstObservedAt(DateTime? firstObservedAt) =>
      _$this._firstObservedAt = firstObservedAt;

  String? _earliestPostRef;
  String? get earliestPostRef => _$this._earliestPostRef;
  set earliestPostRef(String? earliestPostRef) =>
      _$this._earliestPostRef = earliestPostRef;

  NarrativePlatformStatsBuilder() {
    NarrativePlatformStats._defaults(this);
  }

  NarrativePlatformStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _posts = $v.posts;
      _uniqueAuthors = $v.uniqueAuthors;
      _firstObservedAt = $v.firstObservedAt;
      _earliestPostRef = $v.earliestPostRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativePlatformStats other) {
    _$v = other as _$NarrativePlatformStats;
  }

  @override
  void update(void Function(NarrativePlatformStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativePlatformStats build() => _build();

  _$NarrativePlatformStats _build() {
    final _$result = _$v ??
        _$NarrativePlatformStats._(
          platform: BuiltValueNullFieldError.checkNotNull(
              platform, r'NarrativePlatformStats', 'platform'),
          posts: BuiltValueNullFieldError.checkNotNull(
              posts, r'NarrativePlatformStats', 'posts'),
          uniqueAuthors: BuiltValueNullFieldError.checkNotNull(
              uniqueAuthors, r'NarrativePlatformStats', 'uniqueAuthors'),
          firstObservedAt: BuiltValueNullFieldError.checkNotNull(
              firstObservedAt, r'NarrativePlatformStats', 'firstObservedAt'),
          earliestPostRef: BuiltValueNullFieldError.checkNotNull(
              earliestPostRef, r'NarrativePlatformStats', 'earliestPostRef'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
