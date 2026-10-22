// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_post_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPostLink extends SocialPostLink {
  @override
  final String platform;
  @override
  final String postId;
  @override
  final String? ref;
  @override
  final String? url;

  factory _$SocialPostLink([void Function(SocialPostLinkBuilder)? updates]) =>
      (SocialPostLinkBuilder()..update(updates))._build();

  _$SocialPostLink._({
    required this.platform,
    required this.postId,
    this.ref,
    this.url,
  }) : super._();
  @override
  SocialPostLink rebuild(void Function(SocialPostLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPostLinkBuilder toBuilder() => SocialPostLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPostLink &&
        platform == other.platform &&
        postId == other.postId &&
        ref == other.ref &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPostLink')
          ..add('platform', platform)
          ..add('postId', postId)
          ..add('ref', ref)
          ..add('url', url))
        .toString();
  }
}

class SocialPostLinkBuilder
    implements Builder<SocialPostLink, SocialPostLinkBuilder> {
  _$SocialPostLink? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  SocialPostLinkBuilder() {
    SocialPostLink._defaults(this);
  }

  SocialPostLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _postId = $v.postId;
      _ref = $v.ref;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPostLink other) {
    _$v = other as _$SocialPostLink;
  }

  @override
  void update(void Function(SocialPostLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPostLink build() => _build();

  _$SocialPostLink _build() {
    final _$result =
        _$v ??
        _$SocialPostLink._(
          platform: BuiltValueNullFieldError.checkNotNull(
            platform,
            r'SocialPostLink',
            'platform',
          ),
          postId: BuiltValueNullFieldError.checkNotNull(
            postId,
            r'SocialPostLink',
            'postId',
          ),
          ref: ref,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
