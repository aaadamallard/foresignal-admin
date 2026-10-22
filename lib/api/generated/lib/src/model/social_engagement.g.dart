// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_engagement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialEngagement extends SocialEngagement {
  @override
  final int? replies;
  @override
  final int? reposts;
  @override
  final int? quotes;
  @override
  final int? likes;
  @override
  final int? views;

  factory _$SocialEngagement([
    void Function(SocialEngagementBuilder)? updates,
  ]) => (SocialEngagementBuilder()..update(updates))._build();

  _$SocialEngagement._({
    this.replies,
    this.reposts,
    this.quotes,
    this.likes,
    this.views,
  }) : super._();
  @override
  SocialEngagement rebuild(void Function(SocialEngagementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialEngagementBuilder toBuilder() =>
      SocialEngagementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialEngagement &&
        replies == other.replies &&
        reposts == other.reposts &&
        quotes == other.quotes &&
        likes == other.likes &&
        views == other.views;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replies.hashCode);
    _$hash = $jc(_$hash, reposts.hashCode);
    _$hash = $jc(_$hash, quotes.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialEngagement')
          ..add('replies', replies)
          ..add('reposts', reposts)
          ..add('quotes', quotes)
          ..add('likes', likes)
          ..add('views', views))
        .toString();
  }
}

class SocialEngagementBuilder
    implements Builder<SocialEngagement, SocialEngagementBuilder> {
  _$SocialEngagement? _$v;

  int? _replies;
  int? get replies => _$this._replies;
  set replies(int? replies) => _$this._replies = replies;

  int? _reposts;
  int? get reposts => _$this._reposts;
  set reposts(int? reposts) => _$this._reposts = reposts;

  int? _quotes;
  int? get quotes => _$this._quotes;
  set quotes(int? quotes) => _$this._quotes = quotes;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  int? _views;
  int? get views => _$this._views;
  set views(int? views) => _$this._views = views;

  SocialEngagementBuilder() {
    SocialEngagement._defaults(this);
  }

  SocialEngagementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replies = $v.replies;
      _reposts = $v.reposts;
      _quotes = $v.quotes;
      _likes = $v.likes;
      _views = $v.views;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialEngagement other) {
    _$v = other as _$SocialEngagement;
  }

  @override
  void update(void Function(SocialEngagementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialEngagement build() => _build();

  _$SocialEngagement _build() {
    final _$result =
        _$v ??
        _$SocialEngagement._(
          replies: replies,
          reposts: reposts,
          quotes: quotes,
          likes: likes,
          views: views,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
