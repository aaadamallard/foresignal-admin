// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_cue_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialCueQuery extends SocialCueQuery {
  @override
  final SocialPlatformId platform;
  @override
  final String query;
  @override
  final String? language;
  @override
  final num? estimatedCostUsd;

  factory _$SocialCueQuery([void Function(SocialCueQueryBuilder)? updates]) =>
      (SocialCueQueryBuilder()..update(updates))._build();

  _$SocialCueQuery._({
    required this.platform,
    required this.query,
    this.language,
    this.estimatedCostUsd,
  }) : super._();
  @override
  SocialCueQuery rebuild(void Function(SocialCueQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCueQueryBuilder toBuilder() => SocialCueQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCueQuery &&
        platform == other.platform &&
        query == other.query &&
        language == other.language &&
        estimatedCostUsd == other.estimatedCostUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, estimatedCostUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCueQuery')
          ..add('platform', platform)
          ..add('query', query)
          ..add('language', language)
          ..add('estimatedCostUsd', estimatedCostUsd))
        .toString();
  }
}

class SocialCueQueryBuilder
    implements Builder<SocialCueQuery, SocialCueQueryBuilder> {
  _$SocialCueQuery? _$v;

  SocialPlatformId? _platform;
  SocialPlatformId? get platform => _$this._platform;
  set platform(SocialPlatformId? platform) => _$this._platform = platform;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  num? _estimatedCostUsd;
  num? get estimatedCostUsd => _$this._estimatedCostUsd;
  set estimatedCostUsd(num? estimatedCostUsd) =>
      _$this._estimatedCostUsd = estimatedCostUsd;

  SocialCueQueryBuilder() {
    SocialCueQuery._defaults(this);
  }

  SocialCueQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _query = $v.query;
      _language = $v.language;
      _estimatedCostUsd = $v.estimatedCostUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCueQuery other) {
    _$v = other as _$SocialCueQuery;
  }

  @override
  void update(void Function(SocialCueQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCueQuery build() => _build();

  _$SocialCueQuery _build() {
    final _$result =
        _$v ??
        _$SocialCueQuery._(
          platform: BuiltValueNullFieldError.checkNotNull(
            platform,
            r'SocialCueQuery',
            'platform',
          ),
          query: BuiltValueNullFieldError.checkNotNull(
            query,
            r'SocialCueQuery',
            'query',
          ),
          language: language,
          estimatedCostUsd: estimatedCostUsd,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
