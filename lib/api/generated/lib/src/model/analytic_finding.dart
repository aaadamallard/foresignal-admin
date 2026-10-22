//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/analytic_finding_evidence.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/analytic_finding_inference.dart';
import 'package:foresignal_api/src/model/analytic_finding_dismissal.dart';
import 'package:foresignal_api/src/model/finding_severity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analytic_finding.g.dart';

/// A discovery output (`analytic_finding`): evidence, inference with base rate, and caveats; also a `foresignal-analytics` record
///
/// Properties:
/// * [id] - ULID identifier
/// * [findingType]
/// * [title]
/// * [severity]
/// * [status]
/// * [detectedAt]
/// * [windowStart]
/// * [windowEnd]
/// * [regionCodes]
/// * [geometry]
/// * [private]
/// * [situationId] - ULID identifier
/// * [precursorId] - ULID identifier
/// * [questionIds]
/// * [supersededBy] - ULID identifier
/// * [dismissal]
/// * [asOfSeq] - Seq the detector read up to
/// * [manifestId] - ULID identifier
/// * [evidence]
/// * [inference]
/// * [caveats] - 103 codes plus `LAGGED_PUBLICATION`, `FEW_EVENTS`, `MULTIPLE_TESTS`, `LOW_REPORTING_DENSITY`, `DAILY_RESOLUTION_ONLY`, `LOW_DETECTABILITY`
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class AnalyticFinding
    implements Built<AnalyticFinding, AnalyticFindingBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'findingType')
  AnalyticFindingFindingTypeEnum get findingType;
  // enum findingTypeEnum {  change-point,  pre-event-signal,  unexplained-move,  co-occurrence,  precursor-active,  forecast-exceedance,  outlook-exceedance,  projected-impact,  coverage-blindspot,  coverage-divergence,  social-velocity,  media-reuse,  social-coordination,  attention-gap,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'severity')
  FindingSeverity get severity;
  // enum severityEnum {  info,  notable,  significant,  };

  @BuiltValueField(wireName: r'status')
  AnalyticFindingStatusEnum get status;
  // enum statusEnum {  open,  superseded,  dismissed,  };

  @BuiltValueField(wireName: r'detectedAt')
  DateTime get detectedAt;

  @BuiltValueField(wireName: r'windowStart')
  DateTime? get windowStart;

  @BuiltValueField(wireName: r'windowEnd')
  DateTime? get windowEnd;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String> get regionCodes;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'private')
  bool get private;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  /// ULID identifier
  @BuiltValueField(wireName: r'precursorId')
  String? get precursorId;

  @BuiltValueField(wireName: r'questionIds')
  BuiltList<String>? get questionIds;

  /// ULID identifier
  @BuiltValueField(wireName: r'supersededBy')
  String? get supersededBy;

  @BuiltValueField(wireName: r'dismissal')
  AnalyticFindingDismissal? get dismissal;

  /// Seq the detector read up to
  @BuiltValueField(wireName: r'asOfSeq')
  int? get asOfSeq;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  @BuiltValueField(wireName: r'evidence')
  AnalyticFindingEvidence get evidence;

  @BuiltValueField(wireName: r'inference')
  AnalyticFindingInference get inference;

  /// 103 codes plus `LAGGED_PUBLICATION`, `FEW_EVENTS`, `MULTIPLE_TESTS`, `LOW_REPORTING_DENSITY`, `DAILY_RESOLUTION_ONLY`, `LOW_DETECTABILITY`
  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat> get caveats;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  AnalyticFinding._();

  factory AnalyticFinding([void updates(AnalyticFindingBuilder b)]) =
      _$AnalyticFinding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalyticFindingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalyticFinding> get serializer =>
      _$AnalyticFindingSerializer();
}

class _$AnalyticFindingSerializer
    implements PrimitiveSerializer<AnalyticFinding> {
  @override
  final Iterable<Type> types = const [AnalyticFinding, _$AnalyticFinding];

  @override
  final String wireName = r'AnalyticFinding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalyticFinding object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'findingType';
    yield serializers.serialize(
      object.findingType,
      specifiedType: const FullType(AnalyticFindingFindingTypeEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(FindingSeverity),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AnalyticFindingStatusEnum),
    );
    yield r'detectedAt';
    yield serializers.serialize(
      object.detectedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.windowStart != null) {
      yield r'windowStart';
      yield serializers.serialize(
        object.windowStart,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.windowEnd != null) {
      yield r'windowEnd';
      yield serializers.serialize(
        object.windowEnd,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'regionCodes';
    yield serializers.serialize(
      object.regionCodes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    yield r'private';
    yield serializers.serialize(
      object.private,
      specifiedType: const FullType(bool),
    );
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.precursorId != null) {
      yield r'precursorId';
      yield serializers.serialize(
        object.precursorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.questionIds != null) {
      yield r'questionIds';
      yield serializers.serialize(
        object.questionIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.supersededBy != null) {
      yield r'supersededBy';
      yield serializers.serialize(
        object.supersededBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dismissal != null) {
      yield r'dismissal';
      yield serializers.serialize(
        object.dismissal,
        specifiedType: const FullType.nullable(AnalyticFindingDismissal),
      );
    }
    if (object.asOfSeq != null) {
      yield r'asOfSeq';
      yield serializers.serialize(
        object.asOfSeq,
        specifiedType: const FullType(int),
      );
    }
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
    );
    yield r'evidence';
    yield serializers.serialize(
      object.evidence,
      specifiedType: const FullType(AnalyticFindingEvidence),
    );
    yield r'inference';
    yield serializers.serialize(
      object.inference,
      specifiedType: const FullType(AnalyticFindingInference),
    );
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
    );
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalyticFinding object, {
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
    required AnalyticFindingBuilder result,
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
        case r'findingType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AnalyticFindingFindingTypeEnum,
                    ),
                  )
                  as AnalyticFindingFindingTypeEnum;
          result.findingType = valueDes;
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
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FindingSeverity),
                  )
                  as FindingSeverity;
          result.severity = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalyticFindingStatusEnum),
                  )
                  as AnalyticFindingStatusEnum;
          result.status = valueDes;
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
        case r'windowStart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.windowStart = valueDes;
          break;
        case r'windowEnd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.windowEnd = valueDes;
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
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.private = valueDes;
          break;
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'precursorId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.precursorId = valueDes;
          break;
        case r'questionIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.questionIds.replace(valueDes);
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
        case r'dismissal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnalyticFindingDismissal,
                    ),
                  )
                  as AnalyticFindingDismissal?;
          if (valueDes == null) continue;
          result.dismissal.replace(valueDes);
          break;
        case r'asOfSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.asOfSeq = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.manifestId = valueDes;
          break;
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalyticFindingEvidence),
                  )
                  as AnalyticFindingEvidence;
          result.evidence.replace(valueDes);
          break;
        case r'inference':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalyticFindingInference),
                  )
                  as AnalyticFindingInference;
          result.inference.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>;
          result.caveats.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalyticFinding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticFindingBuilder();
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

class AnalyticFindingFindingTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'change-point')
  static const AnalyticFindingFindingTypeEnum changePoint =
      _$analyticFindingFindingTypeEnum_changePoint;
  @BuiltValueEnumConst(wireName: r'pre-event-signal')
  static const AnalyticFindingFindingTypeEnum preEventSignal =
      _$analyticFindingFindingTypeEnum_preEventSignal;
  @BuiltValueEnumConst(wireName: r'unexplained-move')
  static const AnalyticFindingFindingTypeEnum unexplainedMove =
      _$analyticFindingFindingTypeEnum_unexplainedMove;
  @BuiltValueEnumConst(wireName: r'co-occurrence')
  static const AnalyticFindingFindingTypeEnum coOccurrence =
      _$analyticFindingFindingTypeEnum_coOccurrence;
  @BuiltValueEnumConst(wireName: r'precursor-active')
  static const AnalyticFindingFindingTypeEnum precursorActive =
      _$analyticFindingFindingTypeEnum_precursorActive;
  @BuiltValueEnumConst(wireName: r'forecast-exceedance')
  static const AnalyticFindingFindingTypeEnum forecastExceedance =
      _$analyticFindingFindingTypeEnum_forecastExceedance;
  @BuiltValueEnumConst(wireName: r'outlook-exceedance')
  static const AnalyticFindingFindingTypeEnum outlookExceedance =
      _$analyticFindingFindingTypeEnum_outlookExceedance;
  @BuiltValueEnumConst(wireName: r'projected-impact')
  static const AnalyticFindingFindingTypeEnum projectedImpact =
      _$analyticFindingFindingTypeEnum_projectedImpact;
  @BuiltValueEnumConst(wireName: r'coverage-blindspot')
  static const AnalyticFindingFindingTypeEnum coverageBlindspot =
      _$analyticFindingFindingTypeEnum_coverageBlindspot;
  @BuiltValueEnumConst(wireName: r'coverage-divergence')
  static const AnalyticFindingFindingTypeEnum coverageDivergence =
      _$analyticFindingFindingTypeEnum_coverageDivergence;
  @BuiltValueEnumConst(wireName: r'social-velocity')
  static const AnalyticFindingFindingTypeEnum socialVelocity =
      _$analyticFindingFindingTypeEnum_socialVelocity;
  @BuiltValueEnumConst(wireName: r'media-reuse')
  static const AnalyticFindingFindingTypeEnum mediaReuse =
      _$analyticFindingFindingTypeEnum_mediaReuse;
  @BuiltValueEnumConst(wireName: r'social-coordination')
  static const AnalyticFindingFindingTypeEnum socialCoordination =
      _$analyticFindingFindingTypeEnum_socialCoordination;
  @BuiltValueEnumConst(wireName: r'attention-gap')
  static const AnalyticFindingFindingTypeEnum attentionGap =
      _$analyticFindingFindingTypeEnum_attentionGap;

  static Serializer<AnalyticFindingFindingTypeEnum> get serializer =>
      _$analyticFindingFindingTypeEnumSerializer;

  const AnalyticFindingFindingTypeEnum._(String name) : super(name);

  static BuiltSet<AnalyticFindingFindingTypeEnum> get values =>
      _$analyticFindingFindingTypeEnumValues;
  static AnalyticFindingFindingTypeEnum valueOf(String name) =>
      _$analyticFindingFindingTypeEnumValueOf(name);
}

class AnalyticFindingStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const AnalyticFindingStatusEnum open =
      _$analyticFindingStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'superseded')
  static const AnalyticFindingStatusEnum superseded =
      _$analyticFindingStatusEnum_superseded;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const AnalyticFindingStatusEnum dismissed =
      _$analyticFindingStatusEnum_dismissed;

  static Serializer<AnalyticFindingStatusEnum> get serializer =>
      _$analyticFindingStatusEnumSerializer;

  const AnalyticFindingStatusEnum._(String name) : super(name);

  static BuiltSet<AnalyticFindingStatusEnum> get values =>
      _$analyticFindingStatusEnumValues;
  static AnalyticFindingStatusEnum valueOf(String name) =>
      _$analyticFindingStatusEnumValueOf(name);
}
