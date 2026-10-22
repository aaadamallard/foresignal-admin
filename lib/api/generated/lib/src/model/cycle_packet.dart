//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/collection_gap.dart';
import 'package:foresignal_api/src/model/cycle_packet_forecasts.dart';
import 'package:foresignal_api/src/model/cycle_packet_outlooks.dart';
import 'package:foresignal_api/src/model/key_judgment.dart';
import 'package:foresignal_api/src/model/cycle_packet_hypotheses.dart';
import 'package:foresignal_api/src/model/cycle_packet_coverage.dart';
import 'package:foresignal_api/src/model/cycle_packet_situations.dart';
import 'package:foresignal_api/src/model/cycle_packet_item.dart';
import 'package:foresignal_api/src/model/social_versus_observed.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_packet.g.dart';

/// Deterministic packet of what changed since the previous run (`cycle-packet` 1.0.0)
///
/// Properties:
/// * [version]
/// * [since]
/// * [until]
/// * [firstRun] - Lookback used the cadence's natural window
/// * [situations]
/// * [hypotheses]
/// * [findings]
/// * [forecasts]
/// * [outlooks]
/// * [coverage]
/// * [collectionGaps]
/// * [verdicts]
/// * [previousJudgments]
/// * [truncatedForLlm] - Items beyond the 30-per-section LLM cap, per section
/// * [social] - Narratives by status, attention gaps, out-of-sample lead times, media reuse and coordination findings (137)
/// * [cadence] - The cadence the packet was built for
@BuiltValue()
abstract class CyclePacket implements Built<CyclePacket, CyclePacketBuilder> {
  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'since')
  DateTime get since;

  @BuiltValueField(wireName: r'until')
  DateTime get until;

  /// Lookback used the cadence's natural window
  @BuiltValueField(wireName: r'firstRun')
  bool? get firstRun;

  @BuiltValueField(wireName: r'situations')
  CyclePacketSituations? get situations;

  @BuiltValueField(wireName: r'hypotheses')
  CyclePacketHypotheses? get hypotheses;

  @BuiltValueField(wireName: r'findings')
  BuiltList<CyclePacketItem>? get findings;

  @BuiltValueField(wireName: r'forecasts')
  CyclePacketForecasts? get forecasts;

  @BuiltValueField(wireName: r'outlooks')
  CyclePacketOutlooks? get outlooks;

  @BuiltValueField(wireName: r'coverage')
  CyclePacketCoverage? get coverage;

  @BuiltValueField(wireName: r'collectionGaps')
  BuiltList<CollectionGap>? get collectionGaps;

  @BuiltValueField(wireName: r'verdicts')
  BuiltList<CyclePacketItem>? get verdicts;

  @BuiltValueField(wireName: r'previousJudgments')
  BuiltList<KeyJudgment>? get previousJudgments;

  /// Items beyond the 30-per-section LLM cap, per section
  @BuiltValueField(wireName: r'truncatedForLlm')
  BuiltMap<String, int>? get truncatedForLlm;

  /// Narratives by status, attention gaps, out-of-sample lead times, media reuse and coordination findings (137)
  @BuiltValueField(wireName: r'social')
  SocialVersusObserved? get social;

  /// The cadence the packet was built for
  @BuiltValueField(wireName: r'cadence')
  CyclePacketCadenceEnum? get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  on-demand,  };

  CyclePacket._();

  factory CyclePacket([void updates(CyclePacketBuilder b)]) = _$CyclePacket;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CyclePacketBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CyclePacket> get serializer => _$CyclePacketSerializer();
}

class _$CyclePacketSerializer implements PrimitiveSerializer<CyclePacket> {
  @override
  final Iterable<Type> types = const [CyclePacket, _$CyclePacket];

  @override
  final String wireName = r'CyclePacket';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CyclePacket object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'since';
    yield serializers.serialize(
      object.since,
      specifiedType: const FullType(DateTime),
    );
    yield r'until';
    yield serializers.serialize(
      object.until,
      specifiedType: const FullType(DateTime),
    );
    if (object.firstRun != null) {
      yield r'firstRun';
      yield serializers.serialize(
        object.firstRun,
        specifiedType: const FullType(bool),
      );
    }
    if (object.situations != null) {
      yield r'situations';
      yield serializers.serialize(
        object.situations,
        specifiedType: const FullType(CyclePacketSituations),
      );
    }
    if (object.hypotheses != null) {
      yield r'hypotheses';
      yield serializers.serialize(
        object.hypotheses,
        specifiedType: const FullType(CyclePacketHypotheses),
      );
    }
    if (object.findings != null) {
      yield r'findings';
      yield serializers.serialize(
        object.findings,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.forecasts != null) {
      yield r'forecasts';
      yield serializers.serialize(
        object.forecasts,
        specifiedType: const FullType(CyclePacketForecasts),
      );
    }
    if (object.outlooks != null) {
      yield r'outlooks';
      yield serializers.serialize(
        object.outlooks,
        specifiedType: const FullType(CyclePacketOutlooks),
      );
    }
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType(CyclePacketCoverage),
      );
    }
    if (object.collectionGaps != null) {
      yield r'collectionGaps';
      yield serializers.serialize(
        object.collectionGaps,
        specifiedType: const FullType(BuiltList, [FullType(CollectionGap)]),
      );
    }
    if (object.verdicts != null) {
      yield r'verdicts';
      yield serializers.serialize(
        object.verdicts,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.previousJudgments != null) {
      yield r'previousJudgments';
      yield serializers.serialize(
        object.previousJudgments,
        specifiedType: const FullType(BuiltList, [FullType(KeyJudgment)]),
      );
    }
    if (object.truncatedForLlm != null) {
      yield r'truncatedForLlm';
      yield serializers.serialize(
        object.truncatedForLlm,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.social != null) {
      yield r'social';
      yield serializers.serialize(
        object.social,
        specifiedType: const FullType.nullable(SocialVersusObserved),
      );
    }
    if (object.cadence != null) {
      yield r'cadence';
      yield serializers.serialize(
        object.cadence,
        specifiedType: const FullType(CyclePacketCadenceEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CyclePacket object, {
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
    required CyclePacketBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'since':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.since = valueDes;
          break;
        case r'until':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.until = valueDes;
          break;
        case r'firstRun':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.firstRun = valueDes;
          break;
        case r'situations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CyclePacketSituations,
                    ),
                  )
                  as CyclePacketSituations?;
          if (valueDes == null) continue;
          result.situations.replace(valueDes);
          break;
        case r'hypotheses':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CyclePacketHypotheses,
                    ),
                  )
                  as CyclePacketHypotheses?;
          if (valueDes == null) continue;
          result.hypotheses.replace(valueDes);
          break;
        case r'findings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CyclePacketItem),
                    ]),
                  )
                  as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.findings.replace(valueDes);
          break;
        case r'forecasts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CyclePacketForecasts,
                    ),
                  )
                  as CyclePacketForecasts?;
          if (valueDes == null) continue;
          result.forecasts.replace(valueDes);
          break;
        case r'outlooks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CyclePacketOutlooks),
                  )
                  as CyclePacketOutlooks?;
          if (valueDes == null) continue;
          result.outlooks.replace(valueDes);
          break;
        case r'coverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CyclePacketCoverage),
                  )
                  as CyclePacketCoverage?;
          if (valueDes == null) continue;
          result.coverage.replace(valueDes);
          break;
        case r'collectionGaps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CollectionGap),
                    ]),
                  )
                  as BuiltList<CollectionGap>?;
          if (valueDes == null) continue;
          result.collectionGaps.replace(valueDes);
          break;
        case r'verdicts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CyclePacketItem),
                    ]),
                  )
                  as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.verdicts.replace(valueDes);
          break;
        case r'previousJudgments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(KeyJudgment),
                    ]),
                  )
                  as BuiltList<KeyJudgment>?;
          if (valueDes == null) continue;
          result.previousJudgments.replace(valueDes);
          break;
        case r'truncatedForLlm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.truncatedForLlm.replace(valueDes);
          break;
        case r'social':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SocialVersusObserved,
                    ),
                  )
                  as SocialVersusObserved?;
          if (valueDes == null) continue;
          result.social.replace(valueDes);
          break;
        case r'cadence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CyclePacketCadenceEnum,
                    ),
                  )
                  as CyclePacketCadenceEnum?;
          if (valueDes == null) continue;
          result.cadence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CyclePacket deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CyclePacketBuilder();
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

/// The cadence the packet was built for
class CyclePacketCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const CyclePacketCadenceEnum daily = _$cyclePacketCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const CyclePacketCadenceEnum weekly = _$cyclePacketCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const CyclePacketCadenceEnum monthly =
      _$cyclePacketCadenceEnum_monthly;
  @BuiltValueEnumConst(wireName: r'on-demand')
  static const CyclePacketCadenceEnum onDemand =
      _$cyclePacketCadenceEnum_onDemand;

  static Serializer<CyclePacketCadenceEnum> get serializer =>
      _$cyclePacketCadenceEnumSerializer;

  const CyclePacketCadenceEnum._(String name) : super(name);

  static BuiltSet<CyclePacketCadenceEnum> get values =>
      _$cyclePacketCadenceEnumValues;
  static CyclePacketCadenceEnum valueOf(String name) =>
      _$cyclePacketCadenceEnumValueOf(name);
}
