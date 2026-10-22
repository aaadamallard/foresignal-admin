// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_terms.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPlatformTerms extends SocialPlatformTerms {
  @override
  final String? summary;
  @override
  final String? url;
  @override
  final String? costs;

  factory _$SocialPlatformTerms([
    void Function(SocialPlatformTermsBuilder)? updates,
  ]) => (SocialPlatformTermsBuilder()..update(updates))._build();

  _$SocialPlatformTerms._({this.summary, this.url, this.costs}) : super._();
  @override
  SocialPlatformTerms rebuild(
    void Function(SocialPlatformTermsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialPlatformTermsBuilder toBuilder() =>
      SocialPlatformTermsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformTerms &&
        summary == other.summary &&
        url == other.url &&
        costs == other.costs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, costs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformTerms')
          ..add('summary', summary)
          ..add('url', url)
          ..add('costs', costs))
        .toString();
  }
}

class SocialPlatformTermsBuilder
    implements Builder<SocialPlatformTerms, SocialPlatformTermsBuilder> {
  _$SocialPlatformTerms? _$v;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _costs;
  String? get costs => _$this._costs;
  set costs(String? costs) => _$this._costs = costs;

  SocialPlatformTermsBuilder() {
    SocialPlatformTerms._defaults(this);
  }

  SocialPlatformTermsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summary = $v.summary;
      _url = $v.url;
      _costs = $v.costs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformTerms other) {
    _$v = other as _$SocialPlatformTerms;
  }

  @override
  void update(void Function(SocialPlatformTermsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformTerms build() => _build();

  _$SocialPlatformTerms _build() {
    final _$result =
        _$v ??
        _$SocialPlatformTerms._(summary: summary, url: url, costs: costs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
