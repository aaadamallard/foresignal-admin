//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/hypothesis_input.dart';
import 'package:foresignal_api/src/model/hypothesis_set_input_ledger_question.dart';
import 'package:foresignal_api/src/model/indicator_input.dart';
import 'package:foresignal_api/src/model/key_assumption_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_input.g.dart';

/// A hypothesis set to create, with hypotheses, indicators and assumptions
///
/// Properties:
/// * [question]
/// * [description]
/// * [kind] - `exclusive`: probabilities sum to 1 with exactly one `other` hypothesis
/// * [cadence]
/// * [horizon]
/// * [situationId] - ULID identifier
/// * [questionId] - ULID identifier
/// * [regionCodes] - ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
/// * [themes]
/// * [private]
/// * [hypotheses]
/// * [indicators]
/// * [assumptions]
/// * [ledgerQuestion]
/// * [proposalId] - ULID identifier
@BuiltValue()
abstract class HypothesisSetInput
    implements Built<HypothesisSetInput, HypothesisSetInputBuilder> {
  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// `exclusive`: probabilities sum to 1 with exactly one `other` hypothesis
  @BuiltValueField(wireName: r'kind')
  HypothesisSetInputKindEnum get kind;
  // enum kindEnum {  exclusive,  independent,  };

  @BuiltValueField(wireName: r'cadence')
  HypothesisSetInputCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  };

  @BuiltValueField(wireName: r'horizon')
  Date? get horizon;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  /// ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'themes')
  BuiltList<String>? get themes;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'hypotheses')
  BuiltList<HypothesisInput> get hypotheses;

  @BuiltValueField(wireName: r'indicators')
  BuiltList<IndicatorInput>? get indicators;

  @BuiltValueField(wireName: r'assumptions')
  BuiltList<KeyAssumptionInput>? get assumptions;

  @BuiltValueField(wireName: r'ledgerQuestion')
  HypothesisSetInputLedgerQuestion? get ledgerQuestion;

  /// ULID identifier
  @BuiltValueField(wireName: r'proposalId')
  String? get proposalId;

  HypothesisSetInput._();

  factory HypothesisSetInput([void updates(HypothesisSetInputBuilder b)]) =
      _$HypothesisSetInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetInput> get serializer =>
      _$HypothesisSetInputSerializer();
}

class _$HypothesisSetInputSerializer
    implements PrimitiveSerializer<HypothesisSetInput> {
  @override
  final Iterable<Type> types = const [HypothesisSetInput, _$HypothesisSetInput];

  @override
  final String wireName = r'HypothesisSetInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(HypothesisSetInputKindEnum),
    );
    yield r'cadence';
    yield serializers.serialize(
      object.cadence,
      specifiedType: const FullType(HypothesisSetInputCadenceEnum),
    );
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.themes != null) {
      yield r'themes';
      yield serializers.serialize(
        object.themes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    yield r'hypotheses';
    yield serializers.serialize(
      object.hypotheses,
      specifiedType: const FullType(BuiltList, [FullType(HypothesisInput)]),
    );
    if (object.indicators != null) {
      yield r'indicators';
      yield serializers.serialize(
        object.indicators,
        specifiedType: const FullType(BuiltList, [FullType(IndicatorInput)]),
      );
    }
    if (object.assumptions != null) {
      yield r'assumptions';
      yield serializers.serialize(
        object.assumptions,
        specifiedType: const FullType(BuiltList, [
          FullType(KeyAssumptionInput),
        ]),
      );
    }
    if (object.ledgerQuestion != null) {
      yield r'ledgerQuestion';
      yield serializers.serialize(
        object.ledgerQuestion,
        specifiedType: const FullType.nullable(
          HypothesisSetInputLedgerQuestion,
        ),
      );
    }
    if (object.proposalId != null) {
      yield r'proposalId';
      yield serializers.serialize(
        object.proposalId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetInput object, {
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
    required HypothesisSetInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.question = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(HypothesisSetInputKindEnum),
                  )
                  as HypothesisSetInputKindEnum;
          result.kind = valueDes;
          break;
        case r'cadence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      HypothesisSetInputCadenceEnum,
                    ),
                  )
                  as HypothesisSetInputCadenceEnum;
          result.cadence = valueDes;
          break;
        case r'horizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
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
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'themes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.themes.replace(valueDes);
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'hypotheses':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(HypothesisInput),
                    ]),
                  )
                  as BuiltList<HypothesisInput>;
          result.hypotheses.replace(valueDes);
          break;
        case r'indicators':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(IndicatorInput),
                    ]),
                  )
                  as BuiltList<IndicatorInput>?;
          if (valueDes == null) continue;
          result.indicators.replace(valueDes);
          break;
        case r'assumptions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(KeyAssumptionInput),
                    ]),
                  )
                  as BuiltList<KeyAssumptionInput>?;
          if (valueDes == null) continue;
          result.assumptions.replace(valueDes);
          break;
        case r'ledgerQuestion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      HypothesisSetInputLedgerQuestion,
                    ),
                  )
                  as HypothesisSetInputLedgerQuestion?;
          if (valueDes == null) continue;
          result.ledgerQuestion.replace(valueDes);
          break;
        case r'proposalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.proposalId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetInputBuilder();
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

/// `exclusive`: probabilities sum to 1 with exactly one `other` hypothesis
class HypothesisSetInputKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'exclusive')
  static const HypothesisSetInputKindEnum exclusive =
      _$hypothesisSetInputKindEnum_exclusive;
  @BuiltValueEnumConst(wireName: r'independent')
  static const HypothesisSetInputKindEnum independent =
      _$hypothesisSetInputKindEnum_independent;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const HypothesisSetInputKindEnum unknownDefaultOpenApi =
      _$hypothesisSetInputKindEnum_unknownDefaultOpenApi;

  static Serializer<HypothesisSetInputKindEnum> get serializer =>
      _$hypothesisSetInputKindEnumSerializer;

  const HypothesisSetInputKindEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetInputKindEnum> get values =>
      _$hypothesisSetInputKindEnumValues;
  static HypothesisSetInputKindEnum valueOf(String name) =>
      _$hypothesisSetInputKindEnumValueOf(name);
}

class HypothesisSetInputCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const HypothesisSetInputCadenceEnum daily =
      _$hypothesisSetInputCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const HypothesisSetInputCadenceEnum weekly =
      _$hypothesisSetInputCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const HypothesisSetInputCadenceEnum monthly =
      _$hypothesisSetInputCadenceEnum_monthly;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const HypothesisSetInputCadenceEnum unknownDefaultOpenApi =
      _$hypothesisSetInputCadenceEnum_unknownDefaultOpenApi;

  static Serializer<HypothesisSetInputCadenceEnum> get serializer =>
      _$hypothesisSetInputCadenceEnumSerializer;

  const HypothesisSetInputCadenceEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetInputCadenceEnum> get values =>
      _$hypothesisSetInputCadenceEnumValues;
  static HypothesisSetInputCadenceEnum valueOf(String name) =>
      _$hypothesisSetInputCadenceEnumValueOf(name);
}
