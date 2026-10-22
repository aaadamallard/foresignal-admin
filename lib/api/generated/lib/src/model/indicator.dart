//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/indicator_likelihood.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/indicator_signal.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator.g.dart';

/// An observable signal with likelihood ratios that watches for itself through a trigger rule
///
/// Properties:
/// * [id] - ULID identifier
/// * [setId] - ULID identifier
/// * [description]
/// * [signal]
/// * [signalFamily] - 119 signal-family registry id
/// * [credibility]
/// * [relevance]
/// * [expectedBy]
/// * [lr] - Per hypothesis id (or label when created with its set)
/// * [absenceLr] - Optional absence LR overrides per hypothesis id
/// * [state]
/// * [watchRuleId] - 017 trigger rule tagged `indicator`, `origin-hypothesis` and `ind-{id in lower case}` (prompt 125 names `indicator:{id}` and `origin:hypothesis`, but a rule tag cannot hold a colon); it routes to no channel unless a channel names it in `ruleIds`; disabled once the indicator is observed, absent or retired
/// * [pDetect] - 116 detection probability for the family, area and window
/// * [observedEvidence] - Alert, finding or record that observed the indicator
/// * [lastStateChangeAt]
/// * [origin]
/// * [version]
@BuiltValue()
abstract class Indicator implements Built<Indicator, IndicatorBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'signal')
  IndicatorSignal get signal;

  /// 119 signal-family registry id
  @BuiltValueField(wireName: r'signalFamily')
  String get signalFamily;

  @BuiltValueField(wireName: r'credibility')
  IndicatorCredibilityEnum get credibility;
  // enum credibilityEnum {  H,  M,  L,  };

  @BuiltValueField(wireName: r'relevance')
  IndicatorRelevanceEnum get relevance;
  // enum relevanceEnum {  H,  M,  L,  };

  @BuiltValueField(wireName: r'expectedBy')
  DateTime? get expectedBy;

  /// Per hypothesis id (or label when created with its set)
  @BuiltValueField(wireName: r'lr')
  BuiltMap<String, IndicatorLikelihood> get lr;

  /// Optional absence LR overrides per hypothesis id
  @BuiltValueField(wireName: r'absenceLr')
  BuiltMap<String, num>? get absenceLr;

  @BuiltValueField(wireName: r'state')
  IndicatorStateEnum get state;
  // enum stateEnum {  pending,  emerging,  observed,  absent,  unknown-coverage,  retired,  reported,  };

  /// 017 trigger rule tagged `indicator`, `origin-hypothesis` and `ind-{id in lower case}` (prompt 125 names `indicator:{id}` and `origin:hypothesis`, but a rule tag cannot hold a colon); it routes to no channel unless a channel names it in `ruleIds`; disabled once the indicator is observed, absent or retired
  @BuiltValueField(wireName: r'watchRuleId')
  String? get watchRuleId;

  /// 116 detection probability for the family, area and window
  @BuiltValueField(wireName: r'pDetect')
  num? get pDetect;

  /// Alert, finding or record that observed the indicator
  @BuiltValueField(wireName: r'observedEvidence')
  JsonObject? get observedEvidence;

  @BuiltValueField(wireName: r'lastStateChangeAt')
  DateTime? get lastStateChangeAt;

  @BuiltValueField(wireName: r'origin')
  IndicatorOriginEnum get origin;
  // enum originEnum {  operator,  agent,  analyst,  };

  @BuiltValueField(wireName: r'version')
  int? get version;

  Indicator._();

  factory Indicator([void updates(IndicatorBuilder b)]) = _$Indicator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Indicator> get serializer => _$IndicatorSerializer();
}

class _$IndicatorSerializer implements PrimitiveSerializer<Indicator> {
  @override
  final Iterable<Type> types = const [Indicator, _$Indicator];

  @override
  final String wireName = r'Indicator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Indicator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'signal';
    yield serializers.serialize(
      object.signal,
      specifiedType: const FullType(IndicatorSignal),
    );
    yield r'signalFamily';
    yield serializers.serialize(
      object.signalFamily,
      specifiedType: const FullType(String),
    );
    yield r'credibility';
    yield serializers.serialize(
      object.credibility,
      specifiedType: const FullType(IndicatorCredibilityEnum),
    );
    yield r'relevance';
    yield serializers.serialize(
      object.relevance,
      specifiedType: const FullType(IndicatorRelevanceEnum),
    );
    if (object.expectedBy != null) {
      yield r'expectedBy';
      yield serializers.serialize(
        object.expectedBy,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'lr';
    yield serializers.serialize(
      object.lr,
      specifiedType: const FullType(
          BuiltMap, [FullType(String), FullType(IndicatorLikelihood)]),
    );
    if (object.absenceLr != null) {
      yield r'absenceLr';
      yield serializers.serialize(
        object.absenceLr,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(num)]),
      );
    }
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(IndicatorStateEnum),
    );
    if (object.watchRuleId != null) {
      yield r'watchRuleId';
      yield serializers.serialize(
        object.watchRuleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pDetect != null) {
      yield r'pDetect';
      yield serializers.serialize(
        object.pDetect,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.observedEvidence != null) {
      yield r'observedEvidence';
      yield serializers.serialize(
        object.observedEvidence,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.lastStateChangeAt != null) {
      yield r'lastStateChangeAt';
      yield serializers.serialize(
        object.lastStateChangeAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(IndicatorOriginEnum),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Indicator object, {
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
    required IndicatorBuilder result,
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
        case r'setId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'signal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndicatorSignal),
          ) as IndicatorSignal;
          result.signal.replace(valueDes);
          break;
        case r'signalFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signalFamily = valueDes;
          break;
        case r'credibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndicatorCredibilityEnum),
          ) as IndicatorCredibilityEnum;
          result.credibility = valueDes;
          break;
        case r'relevance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndicatorRelevanceEnum),
          ) as IndicatorRelevanceEnum;
          result.relevance = valueDes;
          break;
        case r'expectedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expectedBy = valueDes;
          break;
        case r'lr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType(IndicatorLikelihood)]),
          ) as BuiltMap<String, IndicatorLikelihood>;
          result.lr.replace(valueDes);
          break;
        case r'absenceLr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(num)]),
          ) as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.absenceLr.replace(valueDes);
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndicatorStateEnum),
          ) as IndicatorStateEnum;
          result.state = valueDes;
          break;
        case r'watchRuleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.watchRuleId = valueDes;
          break;
        case r'pDetect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pDetect = valueDes;
          break;
        case r'observedEvidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.observedEvidence = valueDes;
          break;
        case r'lastStateChangeAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastStateChangeAt = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndicatorOriginEnum),
          ) as IndicatorOriginEnum;
          result.origin = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Indicator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorBuilder();
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

class IndicatorCredibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const IndicatorCredibilityEnum H = _$indicatorCredibilityEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const IndicatorCredibilityEnum M = _$indicatorCredibilityEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const IndicatorCredibilityEnum L = _$indicatorCredibilityEnum_L;

  static Serializer<IndicatorCredibilityEnum> get serializer =>
      _$indicatorCredibilityEnumSerializer;

  const IndicatorCredibilityEnum._(String name) : super(name);

  static BuiltSet<IndicatorCredibilityEnum> get values =>
      _$indicatorCredibilityEnumValues;
  static IndicatorCredibilityEnum valueOf(String name) =>
      _$indicatorCredibilityEnumValueOf(name);
}

class IndicatorRelevanceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const IndicatorRelevanceEnum H = _$indicatorRelevanceEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const IndicatorRelevanceEnum M = _$indicatorRelevanceEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const IndicatorRelevanceEnum L = _$indicatorRelevanceEnum_L;

  static Serializer<IndicatorRelevanceEnum> get serializer =>
      _$indicatorRelevanceEnumSerializer;

  const IndicatorRelevanceEnum._(String name) : super(name);

  static BuiltSet<IndicatorRelevanceEnum> get values =>
      _$indicatorRelevanceEnumValues;
  static IndicatorRelevanceEnum valueOf(String name) =>
      _$indicatorRelevanceEnumValueOf(name);
}

class IndicatorStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const IndicatorStateEnum pending = _$indicatorStateEnum_pending;
  @BuiltValueEnumConst(wireName: r'emerging')
  static const IndicatorStateEnum emerging = _$indicatorStateEnum_emerging;
  @BuiltValueEnumConst(wireName: r'observed')
  static const IndicatorStateEnum observed = _$indicatorStateEnum_observed;
  @BuiltValueEnumConst(wireName: r'absent')
  static const IndicatorStateEnum absent = _$indicatorStateEnum_absent;
  @BuiltValueEnumConst(wireName: r'unknown-coverage')
  static const IndicatorStateEnum unknownCoverage =
      _$indicatorStateEnum_unknownCoverage;
  @BuiltValueEnumConst(wireName: r'retired')
  static const IndicatorStateEnum retired = _$indicatorStateEnum_retired;
  @BuiltValueEnumConst(wireName: r'reported')
  static const IndicatorStateEnum reported = _$indicatorStateEnum_reported;

  static Serializer<IndicatorStateEnum> get serializer =>
      _$indicatorStateEnumSerializer;

  const IndicatorStateEnum._(String name) : super(name);

  static BuiltSet<IndicatorStateEnum> get values => _$indicatorStateEnumValues;
  static IndicatorStateEnum valueOf(String name) =>
      _$indicatorStateEnumValueOf(name);
}

class IndicatorOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'operator')
  static const IndicatorOriginEnum operator_ = _$indicatorOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const IndicatorOriginEnum agent = _$indicatorOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const IndicatorOriginEnum analyst = _$indicatorOriginEnum_analyst;

  static Serializer<IndicatorOriginEnum> get serializer =>
      _$indicatorOriginEnumSerializer;

  const IndicatorOriginEnum._(String name) : super(name);

  static BuiltSet<IndicatorOriginEnum> get values =>
      _$indicatorOriginEnumValues;
  static IndicatorOriginEnum valueOf(String name) =>
      _$indicatorOriginEnumValueOf(name);
}
