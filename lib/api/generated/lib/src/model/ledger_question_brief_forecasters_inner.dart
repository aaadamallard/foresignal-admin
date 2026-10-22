//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ledger_question_brief_forecasters_inner.g.dart';

/// Latest forecast by one forecaster
///
/// Properties:
/// * [forecasterId]
/// * [probability]
/// * [madeAt]
/// * [knowledgeCutoff]
@BuiltValue()
abstract class LedgerQuestionBriefForecastersInner
    implements
        Built<
          LedgerQuestionBriefForecastersInner,
          LedgerQuestionBriefForecastersInnerBuilder
        > {
  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'probability')
  num? get probability;

  @BuiltValueField(wireName: r'madeAt')
  DateTime? get madeAt;

  @BuiltValueField(wireName: r'knowledgeCutoff')
  Date? get knowledgeCutoff;

  LedgerQuestionBriefForecastersInner._();

  factory LedgerQuestionBriefForecastersInner([
    void updates(LedgerQuestionBriefForecastersInnerBuilder b),
  ]) = _$LedgerQuestionBriefForecastersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LedgerQuestionBriefForecastersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LedgerQuestionBriefForecastersInner> get serializer =>
      _$LedgerQuestionBriefForecastersInnerSerializer();
}

class _$LedgerQuestionBriefForecastersInnerSerializer
    implements PrimitiveSerializer<LedgerQuestionBriefForecastersInner> {
  @override
  final Iterable<Type> types = const [
    LedgerQuestionBriefForecastersInner,
    _$LedgerQuestionBriefForecastersInner,
  ];

  @override
  final String wireName = r'LedgerQuestionBriefForecastersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LedgerQuestionBriefForecastersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.madeAt != null) {
      yield r'madeAt';
      yield serializers.serialize(
        object.madeAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.knowledgeCutoff != null) {
      yield r'knowledgeCutoff';
      yield serializers.serialize(
        object.knowledgeCutoff,
        specifiedType: const FullType.nullable(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LedgerQuestionBriefForecastersInner object, {
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
    required LedgerQuestionBriefForecastersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecasterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecasterId = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'madeAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.madeAt = valueDes;
          break;
        case r'knowledgeCutoff':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.knowledgeCutoff = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LedgerQuestionBriefForecastersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LedgerQuestionBriefForecastersInnerBuilder();
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
