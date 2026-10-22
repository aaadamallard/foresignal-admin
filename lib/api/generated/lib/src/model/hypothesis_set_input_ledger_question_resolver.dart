//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_input_ledger_question_resolver.g.dart';

/// 122 resolver
///
/// Properties:
/// * [type]
/// * [params]
@BuiltValue()
abstract class HypothesisSetInputLedgerQuestionResolver
    implements
        Built<
          HypothesisSetInputLedgerQuestionResolver,
          HypothesisSetInputLedgerQuestionResolverBuilder
        > {
  @BuiltValueField(wireName: r'type')
  HypothesisSetInputLedgerQuestionResolverTypeEnum get type;
  // enum typeEnum {  hypothesis-outcome,  event-exists,  count-threshold,  series-value,  alert-fired,  situation-status,  manual,  };

  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  HypothesisSetInputLedgerQuestionResolver._();

  factory HypothesisSetInputLedgerQuestionResolver([
    void updates(HypothesisSetInputLedgerQuestionResolverBuilder b),
  ]) = _$HypothesisSetInputLedgerQuestionResolver;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetInputLedgerQuestionResolverBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetInputLedgerQuestionResolver> get serializer =>
      _$HypothesisSetInputLedgerQuestionResolverSerializer();
}

class _$HypothesisSetInputLedgerQuestionResolverSerializer
    implements PrimitiveSerializer<HypothesisSetInputLedgerQuestionResolver> {
  @override
  final Iterable<Type> types = const [
    HypothesisSetInputLedgerQuestionResolver,
    _$HypothesisSetInputLedgerQuestionResolver,
  ];

  @override
  final String wireName = r'HypothesisSetInputLedgerQuestionResolver';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetInputLedgerQuestionResolver object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(
        HypothesisSetInputLedgerQuestionResolverTypeEnum,
      ),
    );
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetInputLedgerQuestionResolver object, {
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
    required HypothesisSetInputLedgerQuestionResolverBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      HypothesisSetInputLedgerQuestionResolverTypeEnum,
                    ),
                  )
                  as HypothesisSetInputLedgerQuestionResolverTypeEnum;
          result.type = valueDes;
          break;
        case r'params':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetInputLedgerQuestionResolver deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetInputLedgerQuestionResolverBuilder();
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

class HypothesisSetInputLedgerQuestionResolverTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hypothesis-outcome')
  static const HypothesisSetInputLedgerQuestionResolverTypeEnum
  hypothesisOutcome =
      _$hypothesisSetInputLedgerQuestionResolverTypeEnum_hypothesisOutcome;
  @BuiltValueEnumConst(wireName: r'event-exists')
  static const HypothesisSetInputLedgerQuestionResolverTypeEnum eventExists =
      _$hypothesisSetInputLedgerQuestionResolverTypeEnum_eventExists;
  @BuiltValueEnumConst(wireName: r'count-threshold')
  static const HypothesisSetInputLedgerQuestionResolverTypeEnum countThreshold =
      _$hypothesisSetInputLedgerQuestionResolverTypeEnum_countThreshold;
  @BuiltValueEnumConst(wireName: r'series-value')
  static const HypothesisSetInputLedgerQuestionResolverTypeEnum seriesValue =
      _$hypothesisSetInputLedgerQuestionResolverTypeEnum_seriesValue;
  @BuiltValueEnumConst(wireName: r'alert-fired')
  static const HypothesisSetInputLedgerQuestionResolverTypeEnum alertFired =
      _$hypothesisSetInputLedgerQuestionResolverTypeEnum_alertFired;
  @BuiltValueEnumConst(wireName: r'situation-status')
  static const HypothesisSetInputLedgerQuestionResolverTypeEnum
  situationStatus =
      _$hypothesisSetInputLedgerQuestionResolverTypeEnum_situationStatus;
  @BuiltValueEnumConst(wireName: r'manual')
  static const HypothesisSetInputLedgerQuestionResolverTypeEnum manual =
      _$hypothesisSetInputLedgerQuestionResolverTypeEnum_manual;

  static Serializer<HypothesisSetInputLedgerQuestionResolverTypeEnum>
  get serializer =>
      _$hypothesisSetInputLedgerQuestionResolverTypeEnumSerializer;

  const HypothesisSetInputLedgerQuestionResolverTypeEnum._(String name)
    : super(name);

  static BuiltSet<HypothesisSetInputLedgerQuestionResolverTypeEnum>
  get values => _$hypothesisSetInputLedgerQuestionResolverTypeEnumValues;
  static HypothesisSetInputLedgerQuestionResolverTypeEnum valueOf(
    String name,
  ) => _$hypothesisSetInputLedgerQuestionResolverTypeEnumValueOf(name);
}
