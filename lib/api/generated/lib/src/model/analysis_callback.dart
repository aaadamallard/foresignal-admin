//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_callback.g.dart';

/// A provider's asynchronous answer to an on-demand analysis request (155).
///
/// Properties:
/// * [correlationId] - The correlation id from the original request; the credential for this callback.
/// * [probability] - The forecast probability for a binary question.
/// * [quantiles] - Quantile levels to values for a numeric question. The ledger's required levels are p05, p25, p50, p75, p95; a decile provider (p10..p90, as TimesFM emits) is accepted and mapped binding-side onto the required set.
@BuiltValue()
abstract class AnalysisCallback
    implements Built<AnalysisCallback, AnalysisCallbackBuilder> {
  /// The correlation id from the original request; the credential for this callback.
  @BuiltValueField(wireName: r'correlationId')
  String get correlationId;

  /// The forecast probability for a binary question.
  @BuiltValueField(wireName: r'probability')
  num? get probability;

  /// Quantile levels to values for a numeric question. The ledger's required levels are p05, p25, p50, p75, p95; a decile provider (p10..p90, as TimesFM emits) is accepted and mapped binding-side onto the required set.
  @BuiltValueField(wireName: r'quantiles')
  BuiltMap<String, num>? get quantiles;

  AnalysisCallback._();

  factory AnalysisCallback([void updates(AnalysisCallbackBuilder b)]) =
      _$AnalysisCallback;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisCallbackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisCallback> get serializer =>
      _$AnalysisCallbackSerializer();
}

class _$AnalysisCallbackSerializer
    implements PrimitiveSerializer<AnalysisCallback> {
  @override
  final Iterable<Type> types = const [AnalysisCallback, _$AnalysisCallback];

  @override
  final String wireName = r'AnalysisCallback';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisCallback object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'correlationId';
    yield serializers.serialize(
      object.correlationId,
      specifiedType: const FullType(String),
    );
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType(num),
      );
    }
    if (object.quantiles != null) {
      yield r'quantiles';
      yield serializers.serialize(
        object.quantiles,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(num),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisCallback object, {
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
    required AnalysisCallbackBuilder result,
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
        case r'quantiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(num),
                    ]),
                  )
                  as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.quantiles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisCallback deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisCallbackBuilder();
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
