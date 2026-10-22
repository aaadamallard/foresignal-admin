// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CoverageStatsScopeEnum _$coverageStatsScopeEnum_story =
    const CoverageStatsScopeEnum._('story');
const CoverageStatsScopeEnum _$coverageStatsScopeEnum_topic =
    const CoverageStatsScopeEnum._('topic');
const CoverageStatsScopeEnum _$coverageStatsScopeEnum_situation =
    const CoverageStatsScopeEnum._('situation');
const CoverageStatsScopeEnum _$coverageStatsScopeEnum_hypothesis =
    const CoverageStatsScopeEnum._('hypothesis');

CoverageStatsScopeEnum _$coverageStatsScopeEnumValueOf(String name) {
  switch (name) {
    case 'story':
      return _$coverageStatsScopeEnum_story;
    case 'topic':
      return _$coverageStatsScopeEnum_topic;
    case 'situation':
      return _$coverageStatsScopeEnum_situation;
    case 'hypothesis':
      return _$coverageStatsScopeEnum_hypothesis;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CoverageStatsScopeEnum> _$coverageStatsScopeEnumValues =
    BuiltSet<CoverageStatsScopeEnum>(const <CoverageStatsScopeEnum>[
  _$coverageStatsScopeEnum_story,
  _$coverageStatsScopeEnum_topic,
  _$coverageStatsScopeEnum_situation,
  _$coverageStatsScopeEnum_hypothesis,
]);

const CoverageStatsBlindspotEnum _$coverageStatsBlindspotEnum_left =
    const CoverageStatsBlindspotEnum._('left');
const CoverageStatsBlindspotEnum _$coverageStatsBlindspotEnum_right =
    const CoverageStatsBlindspotEnum._('right');

CoverageStatsBlindspotEnum _$coverageStatsBlindspotEnumValueOf(String name) {
  switch (name) {
    case 'left':
      return _$coverageStatsBlindspotEnum_left;
    case 'right':
      return _$coverageStatsBlindspotEnum_right;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CoverageStatsBlindspotEnum> _$coverageStatsBlindspotEnumValues =
    BuiltSet<CoverageStatsBlindspotEnum>(const <CoverageStatsBlindspotEnum>[
  _$coverageStatsBlindspotEnum_left,
  _$coverageStatsBlindspotEnum_right,
]);

Serializer<CoverageStatsScopeEnum> _$coverageStatsScopeEnumSerializer =
    _$CoverageStatsScopeEnumSerializer();
Serializer<CoverageStatsBlindspotEnum> _$coverageStatsBlindspotEnumSerializer =
    _$CoverageStatsBlindspotEnumSerializer();

class _$CoverageStatsScopeEnumSerializer
    implements PrimitiveSerializer<CoverageStatsScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'story': 'story',
    'topic': 'topic',
    'situation': 'situation',
    'hypothesis': 'hypothesis',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'story': 'story',
    'topic': 'topic',
    'situation': 'situation',
    'hypothesis': 'hypothesis',
  };

  @override
  final Iterable<Type> types = const <Type>[CoverageStatsScopeEnum];
  @override
  final String wireName = 'CoverageStatsScopeEnum';

  @override
  Object serialize(Serializers serializers, CoverageStatsScopeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CoverageStatsScopeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CoverageStatsScopeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CoverageStatsBlindspotEnumSerializer
    implements PrimitiveSerializer<CoverageStatsBlindspotEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'left': 'left',
    'right': 'right',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'left': 'left',
    'right': 'right',
  };

  @override
  final Iterable<Type> types = const <Type>[CoverageStatsBlindspotEnum];
  @override
  final String wireName = 'CoverageStatsBlindspotEnum';

  @override
  Object serialize(Serializers serializers, CoverageStatsBlindspotEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CoverageStatsBlindspotEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CoverageStatsBlindspotEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CoverageStats extends CoverageStats {
  @override
  final CoverageStatsScopeEnum? scope;
  @override
  final CoverageStatsArticles articles;
  @override
  final CoverageStatsArticles evidenceGroups;
  @override
  final BuiltMap<String, int>? byCountry;
  @override
  final BuiltMap<String, int>? byOutletType;
  @override
  final BuiltMap<String, int>? byFactuality;
  @override
  final CoverageStatsCoverageBalance coverageBalance;
  @override
  final num stateAffiliatedShare;
  @override
  final int nRated;
  @override
  final CoverageStatsBlindspotEnum? blindspot;
  @override
  final bool corroborated;
  @override
  final num? corroboratedShare;
  @override
  final bool? skewed;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final DetectorRef? analyzer;
  @override
  final String? manifestId;
  @override
  final DateTime? computedAt;

  factory _$CoverageStats([void Function(CoverageStatsBuilder)? updates]) =>
      (CoverageStatsBuilder()..update(updates))._build();

  _$CoverageStats._(
      {this.scope,
      required this.articles,
      required this.evidenceGroups,
      this.byCountry,
      this.byOutletType,
      this.byFactuality,
      required this.coverageBalance,
      required this.stateAffiliatedShare,
      required this.nRated,
      this.blindspot,
      required this.corroborated,
      this.corroboratedShare,
      this.skewed,
      this.caveats,
      this.analyzer,
      this.manifestId,
      this.computedAt})
      : super._();
  @override
  CoverageStats rebuild(void Function(CoverageStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverageStatsBuilder toBuilder() => CoverageStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoverageStats &&
        scope == other.scope &&
        articles == other.articles &&
        evidenceGroups == other.evidenceGroups &&
        byCountry == other.byCountry &&
        byOutletType == other.byOutletType &&
        byFactuality == other.byFactuality &&
        coverageBalance == other.coverageBalance &&
        stateAffiliatedShare == other.stateAffiliatedShare &&
        nRated == other.nRated &&
        blindspot == other.blindspot &&
        corroborated == other.corroborated &&
        corroboratedShare == other.corroboratedShare &&
        skewed == other.skewed &&
        caveats == other.caveats &&
        analyzer == other.analyzer &&
        manifestId == other.manifestId &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, articles.hashCode);
    _$hash = $jc(_$hash, evidenceGroups.hashCode);
    _$hash = $jc(_$hash, byCountry.hashCode);
    _$hash = $jc(_$hash, byOutletType.hashCode);
    _$hash = $jc(_$hash, byFactuality.hashCode);
    _$hash = $jc(_$hash, coverageBalance.hashCode);
    _$hash = $jc(_$hash, stateAffiliatedShare.hashCode);
    _$hash = $jc(_$hash, nRated.hashCode);
    _$hash = $jc(_$hash, blindspot.hashCode);
    _$hash = $jc(_$hash, corroborated.hashCode);
    _$hash = $jc(_$hash, corroboratedShare.hashCode);
    _$hash = $jc(_$hash, skewed.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, analyzer.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoverageStats')
          ..add('scope', scope)
          ..add('articles', articles)
          ..add('evidenceGroups', evidenceGroups)
          ..add('byCountry', byCountry)
          ..add('byOutletType', byOutletType)
          ..add('byFactuality', byFactuality)
          ..add('coverageBalance', coverageBalance)
          ..add('stateAffiliatedShare', stateAffiliatedShare)
          ..add('nRated', nRated)
          ..add('blindspot', blindspot)
          ..add('corroborated', corroborated)
          ..add('corroboratedShare', corroboratedShare)
          ..add('skewed', skewed)
          ..add('caveats', caveats)
          ..add('analyzer', analyzer)
          ..add('manifestId', manifestId)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class CoverageStatsBuilder
    implements Builder<CoverageStats, CoverageStatsBuilder> {
  _$CoverageStats? _$v;

  CoverageStatsScopeEnum? _scope;
  CoverageStatsScopeEnum? get scope => _$this._scope;
  set scope(CoverageStatsScopeEnum? scope) => _$this._scope = scope;

  CoverageStatsArticlesBuilder? _articles;
  CoverageStatsArticlesBuilder get articles =>
      _$this._articles ??= CoverageStatsArticlesBuilder();
  set articles(CoverageStatsArticlesBuilder? articles) =>
      _$this._articles = articles;

  CoverageStatsArticlesBuilder? _evidenceGroups;
  CoverageStatsArticlesBuilder get evidenceGroups =>
      _$this._evidenceGroups ??= CoverageStatsArticlesBuilder();
  set evidenceGroups(CoverageStatsArticlesBuilder? evidenceGroups) =>
      _$this._evidenceGroups = evidenceGroups;

  MapBuilder<String, int>? _byCountry;
  MapBuilder<String, int> get byCountry =>
      _$this._byCountry ??= MapBuilder<String, int>();
  set byCountry(MapBuilder<String, int>? byCountry) =>
      _$this._byCountry = byCountry;

  MapBuilder<String, int>? _byOutletType;
  MapBuilder<String, int> get byOutletType =>
      _$this._byOutletType ??= MapBuilder<String, int>();
  set byOutletType(MapBuilder<String, int>? byOutletType) =>
      _$this._byOutletType = byOutletType;

  MapBuilder<String, int>? _byFactuality;
  MapBuilder<String, int> get byFactuality =>
      _$this._byFactuality ??= MapBuilder<String, int>();
  set byFactuality(MapBuilder<String, int>? byFactuality) =>
      _$this._byFactuality = byFactuality;

  CoverageStatsCoverageBalanceBuilder? _coverageBalance;
  CoverageStatsCoverageBalanceBuilder get coverageBalance =>
      _$this._coverageBalance ??= CoverageStatsCoverageBalanceBuilder();
  set coverageBalance(CoverageStatsCoverageBalanceBuilder? coverageBalance) =>
      _$this._coverageBalance = coverageBalance;

  num? _stateAffiliatedShare;
  num? get stateAffiliatedShare => _$this._stateAffiliatedShare;
  set stateAffiliatedShare(num? stateAffiliatedShare) =>
      _$this._stateAffiliatedShare = stateAffiliatedShare;

  int? _nRated;
  int? get nRated => _$this._nRated;
  set nRated(int? nRated) => _$this._nRated = nRated;

  CoverageStatsBlindspotEnum? _blindspot;
  CoverageStatsBlindspotEnum? get blindspot => _$this._blindspot;
  set blindspot(CoverageStatsBlindspotEnum? blindspot) =>
      _$this._blindspot = blindspot;

  bool? _corroborated;
  bool? get corroborated => _$this._corroborated;
  set corroborated(bool? corroborated) => _$this._corroborated = corroborated;

  num? _corroboratedShare;
  num? get corroboratedShare => _$this._corroboratedShare;
  set corroboratedShare(num? corroboratedShare) =>
      _$this._corroboratedShare = corroboratedShare;

  bool? _skewed;
  bool? get skewed => _$this._skewed;
  set skewed(bool? skewed) => _$this._skewed = skewed;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  DetectorRefBuilder? _analyzer;
  DetectorRefBuilder get analyzer => _$this._analyzer ??= DetectorRefBuilder();
  set analyzer(DetectorRefBuilder? analyzer) => _$this._analyzer = analyzer;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  CoverageStatsBuilder() {
    CoverageStats._defaults(this);
  }

  CoverageStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scope = $v.scope;
      _articles = $v.articles.toBuilder();
      _evidenceGroups = $v.evidenceGroups.toBuilder();
      _byCountry = $v.byCountry?.toBuilder();
      _byOutletType = $v.byOutletType?.toBuilder();
      _byFactuality = $v.byFactuality?.toBuilder();
      _coverageBalance = $v.coverageBalance.toBuilder();
      _stateAffiliatedShare = $v.stateAffiliatedShare;
      _nRated = $v.nRated;
      _blindspot = $v.blindspot;
      _corroborated = $v.corroborated;
      _corroboratedShare = $v.corroboratedShare;
      _skewed = $v.skewed;
      _caveats = $v.caveats?.toBuilder();
      _analyzer = $v.analyzer?.toBuilder();
      _manifestId = $v.manifestId;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoverageStats other) {
    _$v = other as _$CoverageStats;
  }

  @override
  void update(void Function(CoverageStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoverageStats build() => _build();

  _$CoverageStats _build() {
    _$CoverageStats _$result;
    try {
      _$result = _$v ??
          _$CoverageStats._(
            scope: scope,
            articles: articles.build(),
            evidenceGroups: evidenceGroups.build(),
            byCountry: _byCountry?.build(),
            byOutletType: _byOutletType?.build(),
            byFactuality: _byFactuality?.build(),
            coverageBalance: coverageBalance.build(),
            stateAffiliatedShare: BuiltValueNullFieldError.checkNotNull(
                stateAffiliatedShare, r'CoverageStats', 'stateAffiliatedShare'),
            nRated: BuiltValueNullFieldError.checkNotNull(
                nRated, r'CoverageStats', 'nRated'),
            blindspot: blindspot,
            corroborated: BuiltValueNullFieldError.checkNotNull(
                corroborated, r'CoverageStats', 'corroborated'),
            corroboratedShare: corroboratedShare,
            skewed: skewed,
            caveats: _caveats?.build(),
            analyzer: _analyzer?.build(),
            manifestId: manifestId,
            computedAt: computedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
        _$failedField = 'evidenceGroups';
        evidenceGroups.build();
        _$failedField = 'byCountry';
        _byCountry?.build();
        _$failedField = 'byOutletType';
        _byOutletType?.build();
        _$failedField = 'byFactuality';
        _byFactuality?.build();
        _$failedField = 'coverageBalance';
        coverageBalance.build();

        _$failedField = 'caveats';
        _caveats?.build();
        _$failedField = 'analyzer';
        _analyzer?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CoverageStats', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
