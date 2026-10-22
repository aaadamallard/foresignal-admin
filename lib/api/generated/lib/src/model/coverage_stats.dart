//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/coverage_stats_coverage_balance.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/coverage_stats_articles.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coverage_stats.g.dart';

/// Coverage of a story, topic, situation or a hypothesis's news support (CoverageAnalyzer 1.0.0); describes reporting, never truth
///
/// Properties:
/// * [scope]
/// * [articles]
/// * [evidenceGroups]
/// * [byCountry] - ISO country → evidence groups
/// * [byOutletType] - Outlet type → evidence groups
/// * [byFactuality] - Factuality band (1–5, unrated) → evidence groups
/// * [coverageBalance]
/// * [stateAffiliatedShare]
/// * [nRated] - Rated evidence groups
/// * [blindspot] - ≥ 75% of rated evidence groups from one side with nRated ≥ 8
/// * [corroborated] - Linked to ≥ 1 non-news evidence group in the same place and window (116)
/// * [corroboratedShare] - Situations: share of news members corroborated
/// * [skewed] - ≥ 75% from one bucket or from state-affiliated outlets (SKEWED_COVERAGE)
/// * [caveats]
/// * [analyzer]
/// * [manifestId] - ULID identifier
/// * [computedAt]
@BuiltValue()
abstract class CoverageStats
    implements Built<CoverageStats, CoverageStatsBuilder> {
  @BuiltValueField(wireName: r'scope')
  CoverageStatsScopeEnum? get scope;
  // enum scopeEnum {  story,  topic,  situation,  hypothesis,  };

  @BuiltValueField(wireName: r'articles')
  CoverageStatsArticles get articles;

  @BuiltValueField(wireName: r'evidenceGroups')
  CoverageStatsArticles get evidenceGroups;

  /// ISO country → evidence groups
  @BuiltValueField(wireName: r'byCountry')
  BuiltMap<String, int>? get byCountry;

  /// Outlet type → evidence groups
  @BuiltValueField(wireName: r'byOutletType')
  BuiltMap<String, int>? get byOutletType;

  /// Factuality band (1–5, unrated) → evidence groups
  @BuiltValueField(wireName: r'byFactuality')
  BuiltMap<String, int>? get byFactuality;

  @BuiltValueField(wireName: r'coverageBalance')
  CoverageStatsCoverageBalance get coverageBalance;

  @BuiltValueField(wireName: r'stateAffiliatedShare')
  num get stateAffiliatedShare;

  /// Rated evidence groups
  @BuiltValueField(wireName: r'nRated')
  int get nRated;

  /// ≥ 75% of rated evidence groups from one side with nRated ≥ 8
  @BuiltValueField(wireName: r'blindspot')
  CoverageStatsBlindspotEnum? get blindspot;
  // enum blindspotEnum {  left,  right,  };

  /// Linked to ≥ 1 non-news evidence group in the same place and window (116)
  @BuiltValueField(wireName: r'corroborated')
  bool get corroborated;

  /// Situations: share of news members corroborated
  @BuiltValueField(wireName: r'corroboratedShare')
  num? get corroboratedShare;

  /// ≥ 75% from one bucket or from state-affiliated outlets (SKEWED_COVERAGE)
  @BuiltValueField(wireName: r'skewed')
  bool? get skewed;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  @BuiltValueField(wireName: r'analyzer')
  DetectorRef? get analyzer;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'computedAt')
  DateTime? get computedAt;

  CoverageStats._();

  factory CoverageStats([void updates(CoverageStatsBuilder b)]) =
      _$CoverageStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoverageStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoverageStats> get serializer =>
      _$CoverageStatsSerializer();
}

class _$CoverageStatsSerializer implements PrimitiveSerializer<CoverageStats> {
  @override
  final Iterable<Type> types = const [CoverageStats, _$CoverageStats];

  @override
  final String wireName = r'CoverageStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoverageStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(CoverageStatsScopeEnum),
      );
    }
    yield r'articles';
    yield serializers.serialize(
      object.articles,
      specifiedType: const FullType(CoverageStatsArticles),
    );
    yield r'evidenceGroups';
    yield serializers.serialize(
      object.evidenceGroups,
      specifiedType: const FullType(CoverageStatsArticles),
    );
    if (object.byCountry != null) {
      yield r'byCountry';
      yield serializers.serialize(
        object.byCountry,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.byOutletType != null) {
      yield r'byOutletType';
      yield serializers.serialize(
        object.byOutletType,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.byFactuality != null) {
      yield r'byFactuality';
      yield serializers.serialize(
        object.byFactuality,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    yield r'coverageBalance';
    yield serializers.serialize(
      object.coverageBalance,
      specifiedType: const FullType(CoverageStatsCoverageBalance),
    );
    yield r'stateAffiliatedShare';
    yield serializers.serialize(
      object.stateAffiliatedShare,
      specifiedType: const FullType(num),
    );
    yield r'nRated';
    yield serializers.serialize(
      object.nRated,
      specifiedType: const FullType(int),
    );
    if (object.blindspot != null) {
      yield r'blindspot';
      yield serializers.serialize(
        object.blindspot,
        specifiedType: const FullType.nullable(CoverageStatsBlindspotEnum),
      );
    }
    yield r'corroborated';
    yield serializers.serialize(
      object.corroborated,
      specifiedType: const FullType(bool),
    );
    if (object.corroboratedShare != null) {
      yield r'corroboratedShare';
      yield serializers.serialize(
        object.corroboratedShare,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.skewed != null) {
      yield r'skewed';
      yield serializers.serialize(
        object.skewed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    if (object.analyzer != null) {
      yield r'analyzer';
      yield serializers.serialize(
        object.analyzer,
        specifiedType: const FullType(DetectorRef),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.computedAt != null) {
      yield r'computedAt';
      yield serializers.serialize(
        object.computedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CoverageStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CoverageStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CoverageStatsScopeEnum),
          ) as CoverageStatsScopeEnum?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        case r'articles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CoverageStatsArticles),
          ) as CoverageStatsArticles;
          result.articles.replace(valueDes);
          break;
        case r'evidenceGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CoverageStatsArticles),
          ) as CoverageStatsArticles;
          result.evidenceGroups.replace(valueDes);
          break;
        case r'byCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byCountry.replace(valueDes);
          break;
        case r'byOutletType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byOutletType.replace(valueDes);
          break;
        case r'byFactuality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byFactuality.replace(valueDes);
          break;
        case r'coverageBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CoverageStatsCoverageBalance),
          ) as CoverageStatsCoverageBalance;
          result.coverageBalance.replace(valueDes);
          break;
        case r'stateAffiliatedShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.stateAffiliatedShare = valueDes;
          break;
        case r'nRated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nRated = valueDes;
          break;
        case r'blindspot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CoverageStatsBlindspotEnum),
          ) as CoverageStatsBlindspotEnum?;
          if (valueDes == null) continue;
          result.blindspot = valueDes;
          break;
        case r'corroborated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.corroborated = valueDes;
          break;
        case r'corroboratedShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.corroboratedShare = valueDes;
          break;
        case r'skewed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.skewed = valueDes;
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        case r'analyzer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DetectorRef),
          ) as DetectorRef?;
          if (valueDes == null) continue;
          result.analyzer.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CoverageStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoverageStatsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class CoverageStatsScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'story')
  static const CoverageStatsScopeEnum story = _$coverageStatsScopeEnum_story;
  @BuiltValueEnumConst(wireName: r'topic')
  static const CoverageStatsScopeEnum topic = _$coverageStatsScopeEnum_topic;
  @BuiltValueEnumConst(wireName: r'situation')
  static const CoverageStatsScopeEnum situation =
      _$coverageStatsScopeEnum_situation;
  @BuiltValueEnumConst(wireName: r'hypothesis')
  static const CoverageStatsScopeEnum hypothesis =
      _$coverageStatsScopeEnum_hypothesis;

  static Serializer<CoverageStatsScopeEnum> get serializer =>
      _$coverageStatsScopeEnumSerializer;

  const CoverageStatsScopeEnum._(String name) : super(name);

  static BuiltSet<CoverageStatsScopeEnum> get values =>
      _$coverageStatsScopeEnumValues;
  static CoverageStatsScopeEnum valueOf(String name) =>
      _$coverageStatsScopeEnumValueOf(name);
}

/// ≥ 75% of rated evidence groups from one side with nRated ≥ 8
class CoverageStatsBlindspotEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'left')
  static const CoverageStatsBlindspotEnum left =
      _$coverageStatsBlindspotEnum_left;
  @BuiltValueEnumConst(wireName: r'right')
  static const CoverageStatsBlindspotEnum right =
      _$coverageStatsBlindspotEnum_right;

  static Serializer<CoverageStatsBlindspotEnum> get serializer =>
      _$coverageStatsBlindspotEnumSerializer;

  const CoverageStatsBlindspotEnum._(String name) : super(name);

  static BuiltSet<CoverageStatsBlindspotEnum> get values =>
      _$coverageStatsBlindspotEnumValues;
  static CoverageStatsBlindspotEnum valueOf(String name) =>
      _$coverageStatsBlindspotEnumValueOf(name);
}
