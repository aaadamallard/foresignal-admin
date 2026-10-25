//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/projected_impact_dependency_paths_inner.dart';
import 'package:foresignal_api/src/model/hazard_forecast.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/projected_impact_exposed_assets_inner.dart';
import 'package:foresignal_api/src/model/projected_impact_skipped_inner.dart';
import 'package:foresignal_api/src/model/finding_severity.dart';
import 'package:foresignal_api/src/model/projected_impact_inputs_inner.dart';
import 'package:foresignal_api/src/model/projected_impact_question_window.dart';
import 'package:foresignal_api/src/model/projected_impact_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projected_impact.g.dart';

/// A `projected-impact` finding: P(impact) = P(hazard at asset) × P(impact | hazard class)
///
/// Properties:
/// * [findingId] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [hazard]
/// * [impactFamily]
/// * [admin1]
/// * [regionClass]
/// * [pHazard]
/// * [pConditional]
/// * [pImpact]
/// * [interval]
/// * [n]
/// * [severity]
/// * [exposedAssets]
/// * [dependencyPaths]
/// * [inputs]
/// * [skipped]
/// * [labels] - Always includes \"modelled; heuristic links may be wrong; not an official warning\"
/// * [questionId] - ULID identifier
/// * [status]
/// * [supersededBy] - ULID identifier
/// * [detectedAt]
/// * [manifestId] - ULID identifier
/// * [version]
/// * [caveats]
/// * [admin1Name]
/// * [lagHours] - Hours after the hazard within which the impact counts (the pair's lag)
/// * [questionWindow]
@BuiltValue()
abstract class ProjectedImpact
    implements Built<ProjectedImpact, ProjectedImpactBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String get findingId;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'hazard')
  HazardForecast get hazard;

  @BuiltValueField(wireName: r'impactFamily')
  String get impactFamily;

  @BuiltValueField(wireName: r'admin1')
  String get admin1;

  @BuiltValueField(wireName: r'regionClass')
  String? get regionClass;

  @BuiltValueField(wireName: r'pHazard')
  num get pHazard;

  @BuiltValueField(wireName: r'pConditional')
  num get pConditional;

  @BuiltValueField(wireName: r'pImpact')
  num get pImpact;

  @BuiltValueField(wireName: r'interval')
  ProjectedImpactInterval get interval;

  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'severity')
  FindingSeverity? get severity;
  // enum severityEnum {  info,  notable,  significant,  };

  @BuiltValueField(wireName: r'exposedAssets')
  BuiltList<ProjectedImpactExposedAssetsInner>? get exposedAssets;

  @BuiltValueField(wireName: r'dependencyPaths')
  BuiltList<ProjectedImpactDependencyPathsInner>? get dependencyPaths;

  @BuiltValueField(wireName: r'inputs')
  BuiltList<ProjectedImpactInputsInner>? get inputs;

  @BuiltValueField(wireName: r'skipped')
  BuiltList<ProjectedImpactSkippedInner>? get skipped;

  /// Always includes \"modelled; heuristic links may be wrong; not an official warning\"
  @BuiltValueField(wireName: r'labels')
  BuiltList<String> get labels;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  @BuiltValueField(wireName: r'status')
  ProjectedImpactStatusEnum get status;
  // enum statusEnum {  active,  superseded,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'supersededBy')
  String? get supersededBy;

  @BuiltValueField(wireName: r'detectedAt')
  DateTime get detectedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  @BuiltValueField(wireName: r'admin1Name')
  String? get admin1Name;

  /// Hours after the hazard within which the impact counts (the pair's lag)
  @BuiltValueField(wireName: r'lagHours')
  int? get lagHours;

  @BuiltValueField(wireName: r'questionWindow')
  ProjectedImpactQuestionWindow? get questionWindow;

  ProjectedImpact._();

  factory ProjectedImpact([void updates(ProjectedImpactBuilder b)]) =
      _$ProjectedImpact;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectedImpactBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectedImpact> get serializer =>
      _$ProjectedImpactSerializer();
}

class _$ProjectedImpactSerializer
    implements PrimitiveSerializer<ProjectedImpact> {
  @override
  final Iterable<Type> types = const [ProjectedImpact, _$ProjectedImpact];

  @override
  final String wireName = r'ProjectedImpact';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectedImpact object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'findingId';
    yield serializers.serialize(
      object.findingId,
      specifiedType: const FullType(String),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType(String),
      );
    }
    yield r'hazard';
    yield serializers.serialize(
      object.hazard,
      specifiedType: const FullType(HazardForecast),
    );
    yield r'impactFamily';
    yield serializers.serialize(
      object.impactFamily,
      specifiedType: const FullType(String),
    );
    yield r'admin1';
    yield serializers.serialize(
      object.admin1,
      specifiedType: const FullType(String),
    );
    if (object.regionClass != null) {
      yield r'regionClass';
      yield serializers.serialize(
        object.regionClass,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'pHazard';
    yield serializers.serialize(
      object.pHazard,
      specifiedType: const FullType(num),
    );
    yield r'pConditional';
    yield serializers.serialize(
      object.pConditional,
      specifiedType: const FullType(num),
    );
    yield r'pImpact';
    yield serializers.serialize(
      object.pImpact,
      specifiedType: const FullType(num),
    );
    yield r'interval';
    yield serializers.serialize(
      object.interval,
      specifiedType: const FullType(ProjectedImpactInterval),
    );
    yield r'n';
    yield serializers.serialize(object.n, specifiedType: const FullType(int));
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(FindingSeverity),
      );
    }
    if (object.exposedAssets != null) {
      yield r'exposedAssets';
      yield serializers.serialize(
        object.exposedAssets,
        specifiedType: const FullType(BuiltList, [
          FullType(ProjectedImpactExposedAssetsInner),
        ]),
      );
    }
    if (object.dependencyPaths != null) {
      yield r'dependencyPaths';
      yield serializers.serialize(
        object.dependencyPaths,
        specifiedType: const FullType(BuiltList, [
          FullType(ProjectedImpactDependencyPathsInner),
        ]),
      );
    }
    if (object.inputs != null) {
      yield r'inputs';
      yield serializers.serialize(
        object.inputs,
        specifiedType: const FullType(BuiltList, [
          FullType(ProjectedImpactInputsInner),
        ]),
      );
    }
    if (object.skipped != null) {
      yield r'skipped';
      yield serializers.serialize(
        object.skipped,
        specifiedType: const FullType(BuiltList, [
          FullType(ProjectedImpactSkippedInner),
        ]),
      );
    }
    yield r'labels';
    yield serializers.serialize(
      object.labels,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ProjectedImpactStatusEnum),
    );
    if (object.supersededBy != null) {
      yield r'supersededBy';
      yield serializers.serialize(
        object.supersededBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'detectedAt';
    yield serializers.serialize(
      object.detectedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    if (object.admin1Name != null) {
      yield r'admin1Name';
      yield serializers.serialize(
        object.admin1Name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lagHours != null) {
      yield r'lagHours';
      yield serializers.serialize(
        object.lagHours,
        specifiedType: const FullType(int),
      );
    }
    if (object.questionWindow != null) {
      yield r'questionWindow';
      yield serializers.serialize(
        object.questionWindow,
        specifiedType: const FullType(ProjectedImpactQuestionWindow),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpact object, {
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
    required ProjectedImpactBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'findingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.findingId = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'hazard':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HazardForecast),
                  )
                  as HazardForecast;
          result.hazard.replace(valueDes);
          break;
        case r'impactFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.impactFamily = valueDes;
          break;
        case r'admin1':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.admin1 = valueDes;
          break;
        case r'regionClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionClass = valueDes;
          break;
        case r'pHazard':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pHazard = valueDes;
          break;
        case r'pConditional':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pConditional = valueDes;
          break;
        case r'pImpact':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pImpact = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ProjectedImpactInterval),
                  )
                  as ProjectedImpactInterval;
          result.interval.replace(valueDes);
          break;
        case r'n':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.n = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(FindingSeverity),
                  )
                  as FindingSeverity?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'exposedAssets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProjectedImpactExposedAssetsInner),
                    ]),
                  )
                  as BuiltList<ProjectedImpactExposedAssetsInner>?;
          if (valueDes == null) continue;
          result.exposedAssets.replace(valueDes);
          break;
        case r'dependencyPaths':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProjectedImpactDependencyPathsInner),
                    ]),
                  )
                  as BuiltList<ProjectedImpactDependencyPathsInner>?;
          if (valueDes == null) continue;
          result.dependencyPaths.replace(valueDes);
          break;
        case r'inputs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProjectedImpactInputsInner),
                    ]),
                  )
                  as BuiltList<ProjectedImpactInputsInner>?;
          if (valueDes == null) continue;
          result.inputs.replace(valueDes);
          break;
        case r'skipped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProjectedImpactSkippedInner),
                    ]),
                  )
                  as BuiltList<ProjectedImpactSkippedInner>?;
          if (valueDes == null) continue;
          result.skipped.replace(valueDes);
          break;
        case r'labels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.labels.replace(valueDes);
          break;
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.questionId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ProjectedImpactStatusEnum),
                  )
                  as ProjectedImpactStatusEnum;
          result.status = valueDes;
          break;
        case r'supersededBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.supersededBy = valueDes;
          break;
        case r'detectedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.detectedAt = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
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
        case r'admin1Name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.admin1Name = valueDes;
          break;
        case r'lagHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lagHours = valueDes;
          break;
        case r'questionWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ProjectedImpactQuestionWindow,
                    ),
                  )
                  as ProjectedImpactQuestionWindow?;
          if (valueDes == null) continue;
          result.questionWindow.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectedImpact deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectedImpactBuilder();
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

class ProjectedImpactStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const ProjectedImpactStatusEnum active =
      _$projectedImpactStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'superseded')
  static const ProjectedImpactStatusEnum superseded =
      _$projectedImpactStatusEnum_superseded;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProjectedImpactStatusEnum unknownDefaultOpenApi =
      _$projectedImpactStatusEnum_unknownDefaultOpenApi;

  static Serializer<ProjectedImpactStatusEnum> get serializer =>
      _$projectedImpactStatusEnumSerializer;

  const ProjectedImpactStatusEnum._(String name) : super(name);

  static BuiltSet<ProjectedImpactStatusEnum> get values =>
      _$projectedImpactStatusEnumValues;
  static ProjectedImpactStatusEnum valueOf(String name) =>
      _$projectedImpactStatusEnumValueOf(name);
}
