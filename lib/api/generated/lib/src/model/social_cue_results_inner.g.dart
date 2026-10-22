// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_cue_results_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialCueResultsInner extends SocialCueResultsInner {
  @override
  final SocialPlatformId platform;
  @override
  final int posts;
  @override
  final int? newPosts;
  @override
  final num? costUsd;
  @override
  final String? error;

  factory _$SocialCueResultsInner([
    void Function(SocialCueResultsInnerBuilder)? updates,
  ]) => (SocialCueResultsInnerBuilder()..update(updates))._build();

  _$SocialCueResultsInner._({
    required this.platform,
    required this.posts,
    this.newPosts,
    this.costUsd,
    this.error,
  }) : super._();
  @override
  SocialCueResultsInner rebuild(
    void Function(SocialCueResultsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialCueResultsInnerBuilder toBuilder() =>
      SocialCueResultsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCueResultsInner &&
        platform == other.platform &&
        posts == other.posts &&
        newPosts == other.newPosts &&
        costUsd == other.costUsd &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, posts.hashCode);
    _$hash = $jc(_$hash, newPosts.hashCode);
    _$hash = $jc(_$hash, costUsd.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCueResultsInner')
          ..add('platform', platform)
          ..add('posts', posts)
          ..add('newPosts', newPosts)
          ..add('costUsd', costUsd)
          ..add('error', error))
        .toString();
  }
}

class SocialCueResultsInnerBuilder
    implements Builder<SocialCueResultsInner, SocialCueResultsInnerBuilder> {
  _$SocialCueResultsInner? _$v;

  SocialPlatformId? _platform;
  SocialPlatformId? get platform => _$this._platform;
  set platform(SocialPlatformId? platform) => _$this._platform = platform;

  int? _posts;
  int? get posts => _$this._posts;
  set posts(int? posts) => _$this._posts = posts;

  int? _newPosts;
  int? get newPosts => _$this._newPosts;
  set newPosts(int? newPosts) => _$this._newPosts = newPosts;

  num? _costUsd;
  num? get costUsd => _$this._costUsd;
  set costUsd(num? costUsd) => _$this._costUsd = costUsd;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  SocialCueResultsInnerBuilder() {
    SocialCueResultsInner._defaults(this);
  }

  SocialCueResultsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _posts = $v.posts;
      _newPosts = $v.newPosts;
      _costUsd = $v.costUsd;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCueResultsInner other) {
    _$v = other as _$SocialCueResultsInner;
  }

  @override
  void update(void Function(SocialCueResultsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCueResultsInner build() => _build();

  _$SocialCueResultsInner _build() {
    final _$result =
        _$v ??
        _$SocialCueResultsInner._(
          platform: BuiltValueNullFieldError.checkNotNull(
            platform,
            r'SocialCueResultsInner',
            'platform',
          ),
          posts: BuiltValueNullFieldError.checkNotNull(
            posts,
            r'SocialCueResultsInner',
            'posts',
          ),
          newPosts: newPosts,
          costUsd: costUsd,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
