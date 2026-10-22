//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_request_result.g.dart';

/// The outcome of an on-demand analysis request or callback (155).
///
/// Properties:
/// * [correlationId] - The id sent to the provider and echoed in its callback.
/// * [recorded] - True when a forecast was recorded at once (a synchronous provider, or a callback that resolved).
/// * [forecastId] - The recorded forecast's id, present when recorded is true via the callback.
@BuiltValue()
abstract class AnalysisRequestResult
    implements Built<AnalysisRequestResult, AnalysisRequestResultBuilder> {
  /// The id sent to the provider and echoed in its callback.
  @BuiltValueField(wireName: r'correlationId')
  String get correlationId;

  /// True when a forecast was recorded at once (a synchronous provider, or a callback that resolved).
  @BuiltValueField(wireName: r'recorded')
  bool get recorded;

  /// The recorded forecast's id, present when recorded is true via the callback.
  @BuiltValueField(wireName: r'forecastId')
  String? get forecastId;

  AnalysisRequestResult._();

  factory AnalysisRequestResult([
    void updates(AnalysisRequestResultBuilder b),
  ]) = _$AnalysisRequestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisRequestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisRequestResult> get serializer =>
      _$AnalysisRequestResultSerializer();
}

class _$AnalysisRequestResultSerializer
    implements PrimitiveSerializer<AnalysisRequestResult> {
  @override
  final Iterable<Type> types = const [
    AnalysisRequestResult,
    _$AnalysisRequestResult,
  ];

  @override
  final String wireName = r'AnalysisRequestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisRequestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'correlationId';
    yield serializers.serialize(
      object.correlationId,
      specifiedType: const FullType(String),
    );
    yield r'recorded';
    yield serializers.serialize(
      object.recorded,
      specifiedType: const FullType(bool),
    );
    if (object.forecastId != null) {
      yield r'forecastId';
      yield serializers.serialize(
        object.forecastId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisRequestResult object, {
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
    required AnalysisRequestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'correlationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.correlationId = valueDes;
          break;
        case r'recorded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.recorded = valueDes;
          break;
        case r'forecastId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.forecastId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisRequestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisRequestResultBuilder();
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
