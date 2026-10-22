//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/trigger_rule_input.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/indicator_signal_series.dart';
import 'package:foresignal_api/src/model/indicator_signal_situation.dart';
import 'package:foresignal_api/src/model/indicator_signal_question.dart';
import 'package:foresignal_api/src/model/indicator_signal_intel_event.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_signal.g.dart';

/// What the indicator watches; `type` selects the populated member
///
/// Properties:
/// * [type]
/// * [rule]
/// * [precursorId] - 120 precursor id (subscribes to `precursor-active` findings)
/// * [series]
/// * [intelEvent]
/// * [situation]
/// * [question]
/// * [emerging] - Optional first-stage threshold; when met the indicator is `emerging`
/// * [baseRate] - Base rate of the signal when the hypotheses say nothing about it, used for information value (default 0.5)
@BuiltValue()
abstract class IndicatorSignal
    implements Built<IndicatorSignal, IndicatorSignalBuilder> {
  @BuiltValueField(wireName: r'type')
  IndicatorSignalTypeEnum get type;
  // enum typeEnum {  rule,  precursor,  series,  intelEvent,  situation,  question,  manual,  };

  @BuiltValueField(wireName: r'rule')
  TriggerRuleInput? get rule;

  /// 120 precursor id (subscribes to `precursor-active` findings)
  @BuiltValueField(wireName: r'precursorId')
  String? get precursorId;

  @BuiltValueField(wireName: r'series')
  IndicatorSignalSeries? get series;

  @BuiltValueField(wireName: r'intelEvent')
  IndicatorSignalIntelEvent? get intelEvent;

  @BuiltValueField(wireName: r'situation')
  IndicatorSignalSituation? get situation;

  @BuiltValueField(wireName: r'question')
  IndicatorSignalQuestion? get question;

  /// Optional first-stage threshold; when met the indicator is `emerging`
  @BuiltValueField(wireName: r'emerging')
  JsonObject? get emerging;

  /// Base rate of the signal when the hypotheses say nothing about it, used for information value (default 0.5)
  @BuiltValueField(wireName: r'baseRate')
  num? get baseRate;

  IndicatorSignal._();

  factory IndicatorSignal([void updates(IndicatorSignalBuilder b)]) =
      _$IndicatorSignal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorSignalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorSignal> get serializer =>
      _$IndicatorSignalSerializer();
}

class _$IndicatorSignalSerializer
    implements PrimitiveSerializer<IndicatorSignal> {
  @override
  final Iterable<Type> types = const [IndicatorSignal, _$IndicatorSignal];

  @override
  final String wireName = r'IndicatorSignal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorSignal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(IndicatorSignalTypeEnum),
    );
    if (object.rule != null) {
      yield r'rule';
      yield serializers.serialize(
        object.rule,
        specifiedType: const FullType.nullable(TriggerRuleInput),
      );
    }
    if (object.precursorId != null) {
      yield r'precursorId';
      yield serializers.serialize(
        object.precursorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType.nullable(IndicatorSignalSeries),
      );
    }
    if (object.intelEvent != null) {
      yield r'intelEvent';
      yield serializers.serialize(
        object.intelEvent,
        specifiedType: const FullType.nullable(IndicatorSignalIntelEvent),
      );
    }
    if (object.situation != null) {
      yield r'situation';
      yield serializers.serialize(
        object.situation,
        specifiedType: const FullType.nullable(IndicatorSignalSituation),
      );
    }
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType.nullable(IndicatorSignalQuestion),
      );
    }
    if (object.emerging != null) {
      yield r'emerging';
      yield serializers.serialize(
        object.emerging,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.baseRate != null) {
      yield r'baseRate';
      yield serializers.serialize(
        object.baseRate,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorSignal object, {
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
    required IndicatorSignalBuilder result,
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
                    specifiedType: const FullType(IndicatorSignalTypeEnum),
                  )
                  as IndicatorSignalTypeEnum;
          result.type = valueDes;
          break;
        case r'rule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TriggerRuleInput),
                  )
                  as TriggerRuleInput?;
          if (valueDes == null) continue;
          result.rule.replace(valueDes);
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
        case r'series':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorSignalSeries,
                    ),
                  )
                  as IndicatorSignalSeries?;
          if (valueDes == null) continue;
          result.series.replace(valueDes);
          break;
        case r'intelEvent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorSignalIntelEvent,
                    ),
                  )
                  as IndicatorSignalIntelEvent?;
          if (valueDes == null) continue;
          result.intelEvent.replace(valueDes);
          break;
        case r'situation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorSignalSituation,
                    ),
                  )
                  as IndicatorSignalSituation?;
          if (valueDes == null) continue;
          result.situation.replace(valueDes);
          break;
        case r'question':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorSignalQuestion,
                    ),
                  )
                  as IndicatorSignalQuestion?;
          if (valueDes == null) continue;
          result.question.replace(valueDes);
          break;
        case r'emerging':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.emerging = valueDes;
          break;
        case r'baseRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.baseRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorSignal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorSignalBuilder();
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

class IndicatorSignalTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'rule')
  static const IndicatorSignalTypeEnum rule = _$indicatorSignalTypeEnum_rule;
  @BuiltValueEnumConst(wireName: r'precursor')
  static const IndicatorSignalTypeEnum precursor =
      _$indicatorSignalTypeEnum_precursor;
  @BuiltValueEnumConst(wireName: r'series')
  static const IndicatorSignalTypeEnum series =
      _$indicatorSignalTypeEnum_series;
  @BuiltValueEnumConst(wireName: r'intelEvent')
  static const IndicatorSignalTypeEnum intelEvent =
      _$indicatorSignalTypeEnum_intelEvent;
  @BuiltValueEnumConst(wireName: r'situation')
  static const IndicatorSignalTypeEnum situation =
      _$indicatorSignalTypeEnum_situation;
  @BuiltValueEnumConst(wireName: r'question')
  static const IndicatorSignalTypeEnum question =
      _$indicatorSignalTypeEnum_question;
  @BuiltValueEnumConst(wireName: r'manual')
  static const IndicatorSignalTypeEnum manual =
      _$indicatorSignalTypeEnum_manual;

  static Serializer<IndicatorSignalTypeEnum> get serializer =>
      _$indicatorSignalTypeEnumSerializer;

  const IndicatorSignalTypeEnum._(String name) : super(name);

  static BuiltSet<IndicatorSignalTypeEnum> get values =>
      _$indicatorSignalTypeEnumValues;
  static IndicatorSignalTypeEnum valueOf(String name) =>
      _$indicatorSignalTypeEnumValueOf(name);
}
