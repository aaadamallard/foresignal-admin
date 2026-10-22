//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/precursor_spatial.dart';
import 'package:foresignal_api/src/model/precursor_window_stats.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/stat_interval.dart';
import 'package:foresignal_api/src/model/precursor_history_inner.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:foresignal_api/src/model/precursor_lag_distribution.dart';
import 'package:foresignal_api/src/model/precursor_side.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor.g.dart';

/// A library pattern: association in stored data that held on a later, unseen window
///
/// Properties:
/// * [id] - ULID identifier
/// * [kind]
/// * [antecedent]
/// * [consequent]
/// * [spatial]
/// * [regionCodes]
/// * [lagMin] - ISO-8601 duration
/// * [lagMax] - ISO-8601 duration
/// * [bestLag] - ISO-8601 duration
/// * [lagDistribution]
/// * [hitRate]
/// * [hitRateInterval]
/// * [baseRate]
/// * [lift]
/// * [correlation]
/// * [correlationSign]
/// * [nAntecedent]
/// * [discovery]
/// * [validation]
/// * [lastRetest] - Statistics of the latest monthly re-test window (newest third of the range), or null before the first re-test
/// * [batchId] - ULID identifier
/// * [batchSize] - Tests in the FDR batch
/// * [status]
/// * [statusReason]
/// * [operatorValidated] - Pinned as validated by an operator (logged and labelled)
/// * [detector]
/// * [firstValidatedAt]
/// * [lastTestedAt]
/// * [origin]
/// * [description] - Deterministic plain-language description
/// * [associationNote]
/// * [caveats]
/// * [history] - Status changes, oldest first (who, when, from, to, why); operator retire/pin actions are logged here
/// * [manifestId] - ULID identifier
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Precursor implements Built<Precursor, PrecursorBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  PrecursorKindEnum get kind;
  // enum kindEnum {  event,  series,  };

  @BuiltValueField(wireName: r'antecedent')
  PrecursorSide get antecedent;

  @BuiltValueField(wireName: r'consequent')
  PrecursorSide get consequent;

  @BuiltValueField(wireName: r'spatial')
  PrecursorSpatial get spatial;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'lagMin')
  String get lagMin;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'lagMax')
  String get lagMax;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'bestLag')
  String? get bestLag;

  @BuiltValueField(wireName: r'lagDistribution')
  PrecursorLagDistribution? get lagDistribution;

  @BuiltValueField(wireName: r'hitRate')
  num? get hitRate;

  @BuiltValueField(wireName: r'hitRateInterval')
  StatInterval? get hitRateInterval;

  @BuiltValueField(wireName: r'baseRate')
  num? get baseRate;

  @BuiltValueField(wireName: r'lift')
  num? get lift;

  @BuiltValueField(wireName: r'correlation')
  num? get correlation;

  @BuiltValueField(wireName: r'correlationSign')
  PrecursorCorrelationSignEnum? get correlationSign;
  // enum correlationSignEnum {  positive,  negative,  };

  @BuiltValueField(wireName: r'nAntecedent')
  int get nAntecedent;

  @BuiltValueField(wireName: r'discovery')
  PrecursorWindowStats get discovery;

  @BuiltValueField(wireName: r'validation')
  PrecursorWindowStats? get validation;

  /// Statistics of the latest monthly re-test window (newest third of the range), or null before the first re-test
  @BuiltValueField(wireName: r'lastRetest')
  PrecursorWindowStats? get lastRetest;

  /// ULID identifier
  @BuiltValueField(wireName: r'batchId')
  String get batchId;

  /// Tests in the FDR batch
  @BuiltValueField(wireName: r'batchSize')
  int get batchSize;

  @BuiltValueField(wireName: r'status')
  PrecursorStatusEnum get status;
  // enum statusEnum {  candidate,  validated,  stale,  retired,  };

  @BuiltValueField(wireName: r'statusReason')
  String? get statusReason;

  /// Pinned as validated by an operator (logged and labelled)
  @BuiltValueField(wireName: r'operatorValidated')
  bool? get operatorValidated;

  @BuiltValueField(wireName: r'detector')
  DetectorRef get detector;

  @BuiltValueField(wireName: r'firstValidatedAt')
  DateTime? get firstValidatedAt;

  @BuiltValueField(wireName: r'lastTestedAt')
  DateTime? get lastTestedAt;

  @BuiltValueField(wireName: r'origin')
  PrecursorOriginEnum get origin;
  // enum originEnum {  auto,  operator,  };

  /// Deterministic plain-language description
  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'associationNote')
  String get associationNote;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat> get caveats;

  /// Status changes, oldest first (who, when, from, to, why); operator retire/pin actions are logged here
  @BuiltValueField(wireName: r'history')
  BuiltList<PrecursorHistoryInner>? get history;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Precursor._();

  factory Precursor([void updates(PrecursorBuilder b)]) = _$Precursor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Precursor> get serializer => _$PrecursorSerializer();
}

class _$PrecursorSerializer implements PrimitiveSerializer<Precursor> {
  @override
  final Iterable<Type> types = const [Precursor, _$Precursor];

  @override
  final String wireName = r'Precursor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Precursor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(PrecursorKindEnum),
    );
    yield r'antecedent';
    yield serializers.serialize(
      object.antecedent,
      specifiedType: const FullType(PrecursorSide),
    );
    yield r'consequent';
    yield serializers.serialize(
      object.consequent,
      specifiedType: const FullType(PrecursorSide),
    );
    yield r'spatial';
    yield serializers.serialize(
      object.spatial,
      specifiedType: const FullType(PrecursorSpatial),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'lagMin';
    yield serializers.serialize(
      object.lagMin,
      specifiedType: const FullType(String),
    );
    yield r'lagMax';
    yield serializers.serialize(
      object.lagMax,
      specifiedType: const FullType(String),
    );
    if (object.bestLag != null) {
      yield r'bestLag';
      yield serializers.serialize(
        object.bestLag,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lagDistribution != null) {
      yield r'lagDistribution';
      yield serializers.serialize(
        object.lagDistribution,
        specifiedType: const FullType.nullable(PrecursorLagDistribution),
      );
    }
    if (object.hitRate != null) {
      yield r'hitRate';
      yield serializers.serialize(
        object.hitRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.hitRateInterval != null) {
      yield r'hitRateInterval';
      yield serializers.serialize(
        object.hitRateInterval,
        specifiedType: const FullType.nullable(StatInterval),
      );
    }
    if (object.baseRate != null) {
      yield r'baseRate';
      yield serializers.serialize(
        object.baseRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.lift != null) {
      yield r'lift';
      yield serializers.serialize(
        object.lift,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.correlation != null) {
      yield r'correlation';
      yield serializers.serialize(
        object.correlation,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.correlationSign != null) {
      yield r'correlationSign';
      yield serializers.serialize(
        object.correlationSign,
        specifiedType: const FullType.nullable(PrecursorCorrelationSignEnum),
      );
    }
    yield r'nAntecedent';
    yield serializers.serialize(
      object.nAntecedent,
      specifiedType: const FullType(int),
    );
    yield r'discovery';
    yield serializers.serialize(
      object.discovery,
      specifiedType: const FullType(PrecursorWindowStats),
    );
    if (object.validation != null) {
      yield r'validation';
      yield serializers.serialize(
        object.validation,
        specifiedType: const FullType.nullable(PrecursorWindowStats),
      );
    }
    if (object.lastRetest != null) {
      yield r'lastRetest';
      yield serializers.serialize(
        object.lastRetest,
        specifiedType: const FullType.nullable(PrecursorWindowStats),
      );
    }
    yield r'batchId';
    yield serializers.serialize(
      object.batchId,
      specifiedType: const FullType(String),
    );
    yield r'batchSize';
    yield serializers.serialize(
      object.batchSize,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PrecursorStatusEnum),
    );
    if (object.statusReason != null) {
      yield r'statusReason';
      yield serializers.serialize(
        object.statusReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.operatorValidated != null) {
      yield r'operatorValidated';
      yield serializers.serialize(
        object.operatorValidated,
        specifiedType: const FullType(bool),
      );
    }
    yield r'detector';
    yield serializers.serialize(
      object.detector,
      specifiedType: const FullType(DetectorRef),
    );
    if (object.firstValidatedAt != null) {
      yield r'firstValidatedAt';
      yield serializers.serialize(
        object.firstValidatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastTestedAt != null) {
      yield r'lastTestedAt';
      yield serializers.serialize(
        object.lastTestedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(PrecursorOriginEnum),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'associationNote';
    yield serializers.serialize(
      object.associationNote,
      specifiedType: const FullType(String),
    );
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
    );
    if (object.history != null) {
      yield r'history';
      yield serializers.serialize(
        object.history,
        specifiedType:
            const FullType(BuiltList, [FullType(PrecursorHistoryInner)]),
      );
    }
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
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
    Precursor object, {
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
    required PrecursorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorKindEnum),
          ) as PrecursorKindEnum;
          result.kind = valueDes;
          break;
        case r'antecedent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorSide),
          ) as PrecursorSide;
          result.antecedent.replace(valueDes);
          break;
        case r'consequent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorSide),
          ) as PrecursorSide;
          result.consequent.replace(valueDes);
          break;
        case r'spatial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorSpatial),
          ) as PrecursorSpatial;
          result.spatial.replace(valueDes);
          break;
        case r'regionCodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'lagMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lagMin = valueDes;
          break;
        case r'lagMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lagMax = valueDes;
          break;
        case r'bestLag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bestLag = valueDes;
          break;
        case r'lagDistribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PrecursorLagDistribution),
          ) as PrecursorLagDistribution?;
          if (valueDes == null) continue;
          result.lagDistribution.replace(valueDes);
          break;
        case r'hitRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.hitRate = valueDes;
          break;
        case r'hitRateInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StatInterval),
          ) as StatInterval?;
          if (valueDes == null) continue;
          result.hitRateInterval.replace(valueDes);
          break;
        case r'baseRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.baseRate = valueDes;
          break;
        case r'lift':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lift = valueDes;
          break;
        case r'correlation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.correlation = valueDes;
          break;
        case r'correlationSign':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(PrecursorCorrelationSignEnum),
          ) as PrecursorCorrelationSignEnum?;
          if (valueDes == null) continue;
          result.correlationSign = valueDes;
          break;
        case r'nAntecedent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nAntecedent = valueDes;
          break;
        case r'discovery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorWindowStats),
          ) as PrecursorWindowStats;
          result.discovery.replace(valueDes);
          break;
        case r'validation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PrecursorWindowStats),
          ) as PrecursorWindowStats?;
          if (valueDes == null) continue;
          result.validation.replace(valueDes);
          break;
        case r'lastRetest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PrecursorWindowStats),
          ) as PrecursorWindowStats?;
          if (valueDes == null) continue;
          result.lastRetest.replace(valueDes);
          break;
        case r'batchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchId = valueDes;
          break;
        case r'batchSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.batchSize = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorStatusEnum),
          ) as PrecursorStatusEnum;
          result.status = valueDes;
          break;
        case r'statusReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusReason = valueDes;
          break;
        case r'operatorValidated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.operatorValidated = valueDes;
          break;
        case r'detector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetectorRef),
          ) as DetectorRef;
          result.detector.replace(valueDes);
          break;
        case r'firstValidatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.firstValidatedAt = valueDes;
          break;
        case r'lastTestedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastTestedAt = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorOriginEnum),
          ) as PrecursorOriginEnum;
          result.origin = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'associationNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.associationNote = valueDes;
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>;
          result.caveats.replace(valueDes);
          break;
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(PrecursorHistoryInner)]),
          ) as BuiltList<PrecursorHistoryInner>?;
          if (valueDes == null) continue;
          result.history.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.manifestId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
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
  Precursor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorBuilder();
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

class PrecursorKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event')
  static const PrecursorKindEnum event = _$precursorKindEnum_event;
  @BuiltValueEnumConst(wireName: r'series')
  static const PrecursorKindEnum series = _$precursorKindEnum_series;

  static Serializer<PrecursorKindEnum> get serializer =>
      _$precursorKindEnumSerializer;

  const PrecursorKindEnum._(String name) : super(name);

  static BuiltSet<PrecursorKindEnum> get values => _$precursorKindEnumValues;
  static PrecursorKindEnum valueOf(String name) =>
      _$precursorKindEnumValueOf(name);
}

class PrecursorCorrelationSignEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'positive')
  static const PrecursorCorrelationSignEnum positive =
      _$precursorCorrelationSignEnum_positive;
  @BuiltValueEnumConst(wireName: r'negative')
  static const PrecursorCorrelationSignEnum negative =
      _$precursorCorrelationSignEnum_negative;

  static Serializer<PrecursorCorrelationSignEnum> get serializer =>
      _$precursorCorrelationSignEnumSerializer;

  const PrecursorCorrelationSignEnum._(String name) : super(name);

  static BuiltSet<PrecursorCorrelationSignEnum> get values =>
      _$precursorCorrelationSignEnumValues;
  static PrecursorCorrelationSignEnum valueOf(String name) =>
      _$precursorCorrelationSignEnumValueOf(name);
}

class PrecursorStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'candidate')
  static const PrecursorStatusEnum candidate = _$precursorStatusEnum_candidate;
  @BuiltValueEnumConst(wireName: r'validated')
  static const PrecursorStatusEnum validated = _$precursorStatusEnum_validated;
  @BuiltValueEnumConst(wireName: r'stale')
  static const PrecursorStatusEnum stale = _$precursorStatusEnum_stale;
  @BuiltValueEnumConst(wireName: r'retired')
  static const PrecursorStatusEnum retired = _$precursorStatusEnum_retired;

  static Serializer<PrecursorStatusEnum> get serializer =>
      _$precursorStatusEnumSerializer;

  const PrecursorStatusEnum._(String name) : super(name);

  static BuiltSet<PrecursorStatusEnum> get values =>
      _$precursorStatusEnumValues;
  static PrecursorStatusEnum valueOf(String name) =>
      _$precursorStatusEnumValueOf(name);
}

class PrecursorOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const PrecursorOriginEnum auto = _$precursorOriginEnum_auto;
  @BuiltValueEnumConst(wireName: r'operator')
  static const PrecursorOriginEnum operator_ = _$precursorOriginEnum_operator_;

  static Serializer<PrecursorOriginEnum> get serializer =>
      _$precursorOriginEnumSerializer;

  const PrecursorOriginEnum._(String name) : super(name);

  static BuiltSet<PrecursorOriginEnum> get values =>
      _$precursorOriginEnumValues;
  static PrecursorOriginEnum valueOf(String name) =>
      _$precursorOriginEnumValueOf(name);
}
