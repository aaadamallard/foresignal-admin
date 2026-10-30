// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edition_site.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditionSite extends EditionSite {
  @override
  final String briefingId;
  @override
  final String url;
  @override
  final String? feedKeyUrl;
  @override
  final String? shareUrl;
  @override
  final String? latestRunId;
  @override
  final DateTime? updatedAt;

  factory _$EditionSite([void Function(EditionSiteBuilder)? updates]) =>
      (EditionSiteBuilder()..update(updates))._build();

  _$EditionSite._({
    required this.briefingId,
    required this.url,
    this.feedKeyUrl,
    this.shareUrl,
    this.latestRunId,
    this.updatedAt,
  }) : super._();
  @override
  EditionSite rebuild(void Function(EditionSiteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditionSiteBuilder toBuilder() => EditionSiteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditionSite &&
        briefingId == other.briefingId &&
        url == other.url &&
        feedKeyUrl == other.feedKeyUrl &&
        shareUrl == other.shareUrl &&
        latestRunId == other.latestRunId &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, briefingId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, feedKeyUrl.hashCode);
    _$hash = $jc(_$hash, shareUrl.hashCode);
    _$hash = $jc(_$hash, latestRunId.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditionSite')
          ..add('briefingId', briefingId)
          ..add('url', url)
          ..add('feedKeyUrl', feedKeyUrl)
          ..add('shareUrl', shareUrl)
          ..add('latestRunId', latestRunId)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class EditionSiteBuilder implements Builder<EditionSite, EditionSiteBuilder> {
  _$EditionSite? _$v;

  String? _briefingId;
  String? get briefingId => _$this._briefingId;
  set briefingId(String? briefingId) => _$this._briefingId = briefingId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _feedKeyUrl;
  String? get feedKeyUrl => _$this._feedKeyUrl;
  set feedKeyUrl(String? feedKeyUrl) => _$this._feedKeyUrl = feedKeyUrl;

  String? _shareUrl;
  String? get shareUrl => _$this._shareUrl;
  set shareUrl(String? shareUrl) => _$this._shareUrl = shareUrl;

  String? _latestRunId;
  String? get latestRunId => _$this._latestRunId;
  set latestRunId(String? latestRunId) => _$this._latestRunId = latestRunId;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  EditionSiteBuilder() {
    EditionSite._defaults(this);
  }

  EditionSiteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _briefingId = $v.briefingId;
      _url = $v.url;
      _feedKeyUrl = $v.feedKeyUrl;
      _shareUrl = $v.shareUrl;
      _latestRunId = $v.latestRunId;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditionSite other) {
    _$v = other as _$EditionSite;
  }

  @override
  void update(void Function(EditionSiteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditionSite build() => _build();

  _$EditionSite _build() {
    final _$result =
        _$v ??
        _$EditionSite._(
          briefingId: BuiltValueNullFieldError.checkNotNull(
            briefingId,
            r'EditionSite',
            'briefingId',
          ),
          url: BuiltValueNullFieldError.checkNotNull(
            url,
            r'EditionSite',
            'url',
          ),
          feedKeyUrl: feedKeyUrl,
          shareUrl: shareUrl,
          latestRunId: latestRunId,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
