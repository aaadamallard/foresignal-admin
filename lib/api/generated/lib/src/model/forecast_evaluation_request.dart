//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_evaluation_request.g.dart';

/// Retrospective evaluation of one forecaster over past resolved questions
///
/// Properties:
/// * [forecasterId]
/// * [from]
/// * [to]
/// * [categories]
/// * [maxQuestions]
@BuiltValue()
abstract class ForecastEvaluationRequest
    implements
        Built<ForecastEvaluationRequest, ForecastEvaluationRequestBuilder> {
  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'categories')
  BuiltList<String>? get categories;

  @BuiltValueField(wireName: r'maxQuestions')
  int? get maxQuestions;

  ForecastEvaluationRequest._();

  factory ForecastEvaluationRequest(
          [void updates(ForecastEvaluationRequestBuilder b)]) =
      _$ForecastEvaluationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastEvaluationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastEvaluationRequest> get serializer =>
      _$ForecastEvaluationRequestSerializer();
}

class _$ForecastEvaluationRequestSerializer
    implements PrimitiveSerializer<ForecastEvaluationRequest> {
  @override
  final Iterable<Type> types = const [
    ForecastEvaluationRequest,
    _$ForecastEvaluationRequest
  ];

  @override
  final String wireName = r'ForecastEvaluationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastEvaluationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.maxQuestions != null) {
      yield r'maxQuestions';
      yield serializers.serialize(
        object.maxQuestions,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastEvaluationRequest object, {
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
    required ForecastEvaluationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecasterId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forecasterId = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.to = valueDes;
          break;
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.categories.replace(valueDes);
          break;
        case r'maxQuestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxQuestions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastEvaluationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastEvaluationRequestBuilder();
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
