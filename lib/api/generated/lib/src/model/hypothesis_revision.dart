//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/hypothesis_probability_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/revision_driver.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_revision.g.dart';

/// Append-only revision: the only way probabilities change (ICD 203 standard 7)
///
/// Properties:
/// * [id] - ULID identifier
/// * [setId] - ULID identifier
/// * [at]
/// * [cause]
/// * [actor] - Principal, `indicator-bayes` or component id
/// * [asOfSeq]
/// * [before]
/// * [after]
/// * [drivers]
/// * [citations]
/// * [rationale]
/// * [rationaleOrigin]
/// * [bandChanged]
/// * [override_] - Includes a logged operator override
/// * [ledgerForecastId] - ULID identifier
/// * [updaterVersion]
@BuiltValue()
abstract class HypothesisRevision
    implements Built<HypothesisRevision, HypothesisRevisionBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'cause')
  HypothesisRevisionCauseEnum get cause;
  // enum causeEnum {  indicator-observed,  indicator-absent,  evidence-added,  evidence-removed,  base-rate-refresh,  review,  operator,  created,  };

  /// Principal, `indicator-bayes` or component id
  @BuiltValueField(wireName: r'actor')
  String get actor;

  @BuiltValueField(wireName: r'asOfSeq')
  int get asOfSeq;

  @BuiltValueField(wireName: r'before')
  BuiltList<HypothesisProbabilityState> get before;

  @BuiltValueField(wireName: r'after')
  BuiltList<HypothesisProbabilityState> get after;

  @BuiltValueField(wireName: r'drivers')
  BuiltList<RevisionDriver> get drivers;

  @BuiltValueField(wireName: r'citations')
  BuiltList<String>? get citations;

  @BuiltValueField(wireName: r'rationale')
  String get rationale;

  @BuiltValueField(wireName: r'rationaleOrigin')
  HypothesisRevisionRationaleOriginEnum? get rationaleOrigin;
  // enum rationaleOriginEnum {  deterministic,  operator,  analyst,  };

  @BuiltValueField(wireName: r'bandChanged')
  bool? get bandChanged;

  /// Includes a logged operator override
  @BuiltValueField(wireName: r'override')
  bool? get override_;

  /// ULID identifier
  @BuiltValueField(wireName: r'ledgerForecastId')
  String? get ledgerForecastId;

  @BuiltValueField(wireName: r'updaterVersion')
  String get updaterVersion;

  HypothesisRevision._();

  factory HypothesisRevision([void updates(HypothesisRevisionBuilder b)]) =
      _$HypothesisRevision;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisRevisionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisRevision> get serializer =>
      _$HypothesisRevisionSerializer();
}

class _$HypothesisRevisionSerializer
    implements PrimitiveSerializer<HypothesisRevision> {
  @override
  final Iterable<Type> types = const [HypothesisRevision, _$HypothesisRevision];

  @override
  final String wireName = r'HypothesisRevision';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisRevision object, {
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
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'cause';
    yield serializers.serialize(
      object.cause,
      specifiedType: const FullType(HypothesisRevisionCauseEnum),
    );
    yield r'actor';
    yield serializers.serialize(
      object.actor,
      specifiedType: const FullType(String),
    );
    yield r'asOfSeq';
    yield serializers.serialize(
      object.asOfSeq,
      specifiedType: const FullType(int),
    );
    yield r'before';
    yield serializers.serialize(
      object.before,
      specifiedType: const FullType(BuiltList, [
        FullType(HypothesisProbabilityState),
      ]),
    );
    yield r'after';
    yield serializers.serialize(
      object.after,
      specifiedType: const FullType(BuiltList, [
        FullType(HypothesisProbabilityState),
      ]),
    );
    yield r'drivers';
    yield serializers.serialize(
      object.drivers,
      specifiedType: const FullType(BuiltList, [FullType(RevisionDriver)]),
    );
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'rationale';
    yield serializers.serialize(
      object.rationale,
      specifiedType: const FullType(String),
    );
    if (object.rationaleOrigin != null) {
      yield r'rationaleOrigin';
      yield serializers.serialize(
        object.rationaleOrigin,
        specifiedType: const FullType(HypothesisRevisionRationaleOriginEnum),
      );
    }
    if (object.bandChanged != null) {
      yield r'bandChanged';
      yield serializers.serialize(
        object.bandChanged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.override_ != null) {
      yield r'override';
      yield serializers.serialize(
        object.override_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ledgerForecastId != null) {
      yield r'ledgerForecastId';
      yield serializers.serialize(
        object.ledgerForecastId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'updaterVersion';
    yield serializers.serialize(
      object.updaterVersion,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisRevision object, {
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
    required HypothesisRevisionBuilder result,
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
        case r'setId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.setId = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'cause':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HypothesisRevisionCauseEnum),
                  )
                  as HypothesisRevisionCauseEnum;
          result.cause = valueDes;
          break;
        case r'actor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.actor = valueDes;
          break;
        case r'asOfSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.asOfSeq = valueDes;
          break;
        case r'before':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(HypothesisProbabilityState),
                    ]),
                  )
                  as BuiltList<HypothesisProbabilityState>;
          result.before.replace(valueDes);
          break;
        case r'after':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(HypothesisProbabilityState),
                    ]),
                  )
                  as BuiltList<HypothesisProbabilityState>;
          result.after.replace(valueDes);
          break;
        case r'drivers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RevisionDriver),
                    ]),
                  )
                  as BuiltList<RevisionDriver>;
          result.drivers.replace(valueDes);
          break;
        case r'citations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.rationale = valueDes;
          break;
        case r'rationaleOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      HypothesisRevisionRationaleOriginEnum,
                    ),
                  )
                  as HypothesisRevisionRationaleOriginEnum?;
          if (valueDes == null) continue;
          result.rationaleOrigin = valueDes;
          break;
        case r'bandChanged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.bandChanged = valueDes;
          break;
        case r'override':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.override_ = valueDes;
          break;
        case r'ledgerForecastId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ledgerForecastId = valueDes;
          break;
        case r'updaterVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.updaterVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisRevision deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisRevisionBuilder();
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

class HypothesisRevisionCauseEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'indicator-observed')
  static const HypothesisRevisionCauseEnum indicatorObserved =
      _$hypothesisRevisionCauseEnum_indicatorObserved;
  @BuiltValueEnumConst(wireName: r'indicator-absent')
  static const HypothesisRevisionCauseEnum indicatorAbsent =
      _$hypothesisRevisionCauseEnum_indicatorAbsent;
  @BuiltValueEnumConst(wireName: r'evidence-added')
  static const HypothesisRevisionCauseEnum evidenceAdded =
      _$hypothesisRevisionCauseEnum_evidenceAdded;
  @BuiltValueEnumConst(wireName: r'evidence-removed')
  static const HypothesisRevisionCauseEnum evidenceRemoved =
      _$hypothesisRevisionCauseEnum_evidenceRemoved;
  @BuiltValueEnumConst(wireName: r'base-rate-refresh')
  static const HypothesisRevisionCauseEnum baseRateRefresh =
      _$hypothesisRevisionCauseEnum_baseRateRefresh;
  @BuiltValueEnumConst(wireName: r'review')
  static const HypothesisRevisionCauseEnum review =
      _$hypothesisRevisionCauseEnum_review;
  @BuiltValueEnumConst(wireName: r'operator')
  static const HypothesisRevisionCauseEnum operator_ =
      _$hypothesisRevisionCauseEnum_operator_;
  @BuiltValueEnumConst(wireName: r'created')
  static const HypothesisRevisionCauseEnum created =
      _$hypothesisRevisionCauseEnum_created;

  static Serializer<HypothesisRevisionCauseEnum> get serializer =>
      _$hypothesisRevisionCauseEnumSerializer;

  const HypothesisRevisionCauseEnum._(String name) : super(name);

  static BuiltSet<HypothesisRevisionCauseEnum> get values =>
      _$hypothesisRevisionCauseEnumValues;
  static HypothesisRevisionCauseEnum valueOf(String name) =>
      _$hypothesisRevisionCauseEnumValueOf(name);
}

class HypothesisRevisionRationaleOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'deterministic')
  static const HypothesisRevisionRationaleOriginEnum deterministic =
      _$hypothesisRevisionRationaleOriginEnum_deterministic;
  @BuiltValueEnumConst(wireName: r'operator')
  static const HypothesisRevisionRationaleOriginEnum operator_ =
      _$hypothesisRevisionRationaleOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const HypothesisRevisionRationaleOriginEnum analyst =
      _$hypothesisRevisionRationaleOriginEnum_analyst;

  static Serializer<HypothesisRevisionRationaleOriginEnum> get serializer =>
      _$hypothesisRevisionRationaleOriginEnumSerializer;

  const HypothesisRevisionRationaleOriginEnum._(String name) : super(name);

  static BuiltSet<HypothesisRevisionRationaleOriginEnum> get values =>
      _$hypothesisRevisionRationaleOriginEnumValues;
  static HypothesisRevisionRationaleOriginEnum valueOf(String name) =>
      _$hypothesisRevisionRationaleOriginEnumValueOf(name);
}
