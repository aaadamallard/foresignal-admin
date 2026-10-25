//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/severity.dart';
import 'package:foresignal_api/src/model/situation_social_section.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/situation_speculation.dart';
import 'package:foresignal_api/src/model/coverage_stats.dart';
import 'package:foresignal_api/src/model/situation_status.dart';
import 'package:foresignal_api/src/model/situation_evidence.dart';
import 'package:foresignal_api/src/model/situation_theme.dart';
import 'package:foresignal_api/src/model/situation_inference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation.g.dart';

/// A persistent storyline: evidence (members), inference (status, severity, summary) and labeled speculation (brief)
///
/// Properties:
/// * [id] - ULID identifier
/// * [title]
/// * [theme]
/// * [status]
/// * [severity]
/// * [severityOverridden] - True when an operator override sets the severity
/// * [regionCodes]
/// * [bbox] - minLon, minLat, maxLon, maxLat of the geometry
/// * [centroid]
/// * [startedAt]
/// * [lastActivityAt]
/// * [closedAt]
/// * [memberCount]
/// * [signalFamilies] - Signal families of the core members
/// * [corroborationShare] - corroborated ÷ (corroborated + uncorroborated); null when no member has a canonical event
/// * [summary] - Deterministic templated summary (inference)
/// * [origin]
/// * [mergedInto] - ULID identifier
/// * [private] - True when any member is private; follows `EgressPolicy`
/// * [version] - Optimistic-locking version; send it back on changes
/// * [updatedAt]
/// * [severityOverride]
/// * [geometry] - Convex hull of member geometries buffered by 25 km (≤ 500 vertices)
/// * [topicIds] - 117 attention topics
/// * [entityIds] - 098 entities
/// * [investigationIds] - 101 investigations
/// * [linkerVersion]
/// * [createdAt]
/// * [evidence]
/// * [inference]
/// * [speculation]
/// * [caveats] - e.g. `UNCORROBORATED_ONLY`, `LOW_REPORTING_DENSITY`
/// * [coverage]
/// * [social] - 137: top narratives with status, velocity, origin concentration and lead times, social evidence groups (separate from physical corroboration) and attention gap
@BuiltValue()
abstract class Situation implements Built<Situation, SituationBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'theme')
  SituationTheme get theme;
  // enum themeEnum {  maritime,  aviation,  conflict,  infrastructure,  weather,  cyber,  markets,  health,  space,  mixed,  };

  @BuiltValueField(wireName: r'status')
  SituationStatus get status;
  // enum statusEnum {  emerging,  active,  dormant,  closed,  };

  @BuiltValueField(wireName: r'severity')
  Severity get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  /// True when an operator override sets the severity
  @BuiltValueField(wireName: r'severityOverridden')
  bool? get severityOverridden;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String> get regionCodes;

  /// minLon, minLat, maxLon, maxLat of the geometry
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'centroid')
  Geometry? get centroid;

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'lastActivityAt')
  DateTime get lastActivityAt;

  @BuiltValueField(wireName: r'closedAt')
  DateTime? get closedAt;

  @BuiltValueField(wireName: r'memberCount')
  int get memberCount;

  /// Signal families of the core members
  @BuiltValueField(wireName: r'signalFamilies')
  BuiltList<String> get signalFamilies;

  /// corroborated ÷ (corroborated + uncorroborated); null when no member has a canonical event
  @BuiltValueField(wireName: r'corroborationShare')
  num? get corroborationShare;

  /// Deterministic templated summary (inference)
  @BuiltValueField(wireName: r'summary')
  String get summary;

  @BuiltValueField(wireName: r'origin')
  SituationOriginEnum get origin;
  // enum originEnum {  auto,  operator,  agent,  analyst,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  /// True when any member is private; follows `EgressPolicy`
  @BuiltValueField(wireName: r'private')
  bool get private;

  /// Optimistic-locking version; send it back on changes
  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'severityOverride')
  Severity? get severityOverride;
  // enum severityOverrideEnum {  info,  warning,  critical,  };

  /// Convex hull of member geometries buffered by 25 km (≤ 500 vertices)
  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// 117 attention topics
  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  /// 098 entities
  @BuiltValueField(wireName: r'entityIds')
  BuiltList<String>? get entityIds;

  /// 101 investigations
  @BuiltValueField(wireName: r'investigationIds')
  BuiltList<String>? get investigationIds;

  @BuiltValueField(wireName: r'linkerVersion')
  String? get linkerVersion;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'evidence')
  SituationEvidence get evidence;

  @BuiltValueField(wireName: r'inference')
  SituationInference get inference;

  @BuiltValueField(wireName: r'speculation')
  SituationSpeculation get speculation;

  /// e.g. `UNCORROBORATED_ONLY`, `LOW_REPORTING_DENSITY`
  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  @BuiltValueField(wireName: r'coverage')
  CoverageStats? get coverage;

  /// 137: top narratives with status, velocity, origin concentration and lead times, social evidence groups (separate from physical corroboration) and attention gap
  @BuiltValueField(wireName: r'social')
  SituationSocialSection? get social;

  Situation._();

  factory Situation([void updates(SituationBuilder b)]) = _$Situation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Situation> get serializer => _$SituationSerializer();
}

class _$SituationSerializer implements PrimitiveSerializer<Situation> {
  @override
  final Iterable<Type> types = const [Situation, _$Situation];

  @override
  final String wireName = r'Situation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Situation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'theme';
    yield serializers.serialize(
      object.theme,
      specifiedType: const FullType(SituationTheme),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SituationStatus),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(Severity),
    );
    if (object.severityOverridden != null) {
      yield r'severityOverridden';
      yield serializers.serialize(
        object.severityOverridden,
        specifiedType: const FullType(bool),
      );
    }
    yield r'regionCodes';
    yield serializers.serialize(
      object.regionCodes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.centroid != null) {
      yield r'centroid';
      yield serializers.serialize(
        object.centroid,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'lastActivityAt';
    yield serializers.serialize(
      object.lastActivityAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.closedAt != null) {
      yield r'closedAt';
      yield serializers.serialize(
        object.closedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'memberCount';
    yield serializers.serialize(
      object.memberCount,
      specifiedType: const FullType(int),
    );
    yield r'signalFamilies';
    yield serializers.serialize(
      object.signalFamilies,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.corroborationShare != null) {
      yield r'corroborationShare';
      yield serializers.serialize(
        object.corroborationShare,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(String),
    );
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(SituationOriginEnum),
    );
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'private';
    yield serializers.serialize(
      object.private,
      specifiedType: const FullType(bool),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.severityOverride != null) {
      yield r'severityOverride';
      yield serializers.serialize(
        object.severityOverride,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    yield r'geometry';
    yield object.geometry == null
        ? null
        : serializers.serialize(
            object.geometry,
            specifiedType: const FullType.nullable(Geometry),
          );
    if (object.topicIds != null) {
      yield r'topicIds';
      yield serializers.serialize(
        object.topicIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.entityIds != null) {
      yield r'entityIds';
      yield serializers.serialize(
        object.entityIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.investigationIds != null) {
      yield r'investigationIds';
      yield serializers.serialize(
        object.investigationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.linkerVersion != null) {
      yield r'linkerVersion';
      yield serializers.serialize(
        object.linkerVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'evidence';
    yield serializers.serialize(
      object.evidence,
      specifiedType: const FullType(SituationEvidence),
    );
    yield r'inference';
    yield serializers.serialize(
      object.inference,
      specifiedType: const FullType(SituationInference),
    );
    yield r'speculation';
    yield serializers.serialize(
      object.speculation,
      specifiedType: const FullType(SituationSpeculation),
    );
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType.nullable(CoverageStats),
      );
    }
    if (object.social != null) {
      yield r'social';
      yield serializers.serialize(
        object.social,
        specifiedType: const FullType.nullable(SituationSocialSection),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Situation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SituationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'theme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationTheme),
                  )
                  as SituationTheme;
          result.theme = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationStatus),
                  )
                  as SituationStatus;
          result.status = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Severity),
                  )
                  as Severity;
          result.severity = valueDes;
          break;
        case r'severityOverridden':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.severityOverridden = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.regionCodes.replace(valueDes);
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'centroid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.centroid.replace(valueDes);
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startedAt = valueDes;
          break;
        case r'lastActivityAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.lastActivityAt = valueDes;
          break;
        case r'closedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.closedAt = valueDes;
          break;
        case r'memberCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.memberCount = valueDes;
          break;
        case r'signalFamilies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.signalFamilies.replace(valueDes);
          break;
        case r'corroborationShare':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.corroborationShare = valueDes;
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.summary = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationOriginEnum),
                  )
                  as SituationOriginEnum;
          result.origin = valueDes;
          break;
        case r'mergedInto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.private = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'severityOverride':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.severityOverride = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'topicIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.topicIds.replace(valueDes);
          break;
        case r'entityIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.entityIds.replace(valueDes);
          break;
        case r'investigationIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.investigationIds.replace(valueDes);
          break;
        case r'linkerVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.linkerVersion = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationEvidence),
                  )
                  as SituationEvidence;
          result.evidence.replace(valueDes);
          break;
        case r'inference':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationInference),
                  )
                  as SituationInference;
          result.inference.replace(valueDes);
          break;
        case r'speculation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationSpeculation),
                  )
                  as SituationSpeculation;
          result.speculation.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        case r'coverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CoverageStats),
                  )
                  as CoverageStats?;
          if (valueDes == null) continue;
          result.coverage.replace(valueDes);
          break;
        case r'social':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SituationSocialSection,
                    ),
                  )
                  as SituationSocialSection?;
          if (valueDes == null) continue;
          result.social.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Situation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationBuilder();
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

class SituationOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const SituationOriginEnum auto = _$situationOriginEnum_auto;
  @BuiltValueEnumConst(wireName: r'operator')
  static const SituationOriginEnum operator_ = _$situationOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const SituationOriginEnum agent = _$situationOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const SituationOriginEnum analyst = _$situationOriginEnum_analyst;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SituationOriginEnum unknownDefaultOpenApi =
      _$situationOriginEnum_unknownDefaultOpenApi;

  static Serializer<SituationOriginEnum> get serializer =>
      _$situationOriginEnumSerializer;

  const SituationOriginEnum._(String name) : super(name);

  static BuiltSet<SituationOriginEnum> get values =>
      _$situationOriginEnumValues;
  static SituationOriginEnum valueOf(String name) =>
      _$situationOriginEnumValueOf(name);
}
