//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_usage_point.g.dart';

/// LlmUsagePoint
///
/// Properties:
/// * [t]
/// * [requests]
/// * [inputTokens]
/// * [outputTokens]
/// * [cachedTokens]
/// * [errors]
/// * [refused]
/// * [costUsd] - USD cost of the bucket's calls at the provider's prices when they were made (162); 0 when unpriced
@BuiltValue()
abstract class LlmUsagePoint
    implements Built<LlmUsagePoint, LlmUsagePointBuilder> {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  @BuiltValueField(wireName: r'requests')
  int get requests;

  @BuiltValueField(wireName: r'inputTokens')
  int get inputTokens;

  @BuiltValueField(wireName: r'outputTokens')
  int get outputTokens;

  @BuiltValueField(wireName: r'cachedTokens')
  int? get cachedTokens;

  @BuiltValueField(wireName: r'errors')
  int? get errors;

  @BuiltValueField(wireName: r'refused')
  int? get refused;

  /// USD cost of the bucket's calls at the provider's prices when they were made (162); 0 when unpriced
  @BuiltValueField(wireName: r'costUsd')
  num? get costUsd;

  LlmUsagePoint._();

  factory LlmUsagePoint([void updates(LlmUsagePointBuilder b)]) =
      _$LlmUsagePoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmUsagePointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmUsagePoint> get serializer =>
      _$LlmUsagePointSerializer();
}

class _$LlmUsagePointSerializer implements PrimitiveSerializer<LlmUsagePoint> {
  @override
  final Iterable<Type> types = const [LlmUsagePoint, _$LlmUsagePoint];

  @override
  final String wireName = r'LlmUsagePoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmUsagePoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    yield r'requests';
    yield serializers.serialize(
      object.requests,
      specifiedType: const FullType(int),
    );
    yield r'inputTokens';
    yield serializers.serialize(
      object.inputTokens,
      specifiedType: const FullType(int),
    );
    yield r'outputTokens';
    yield serializers.serialize(
      object.outputTokens,
      specifiedType: const FullType(int),
    );
    if (object.cachedTokens != null) {
      yield r'cachedTokens';
      yield serializers.serialize(
        object.cachedTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(int),
      );
    }
    if (object.refused != null) {
      yield r'refused';
      yield serializers.serialize(
        object.refused,
        specifiedType: const FullType(int),
      );
    }
    if (object.costUsd != null) {
      yield r'costUsd';
      yield serializers.serialize(
        object.costUsd,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmUsagePoint object, {
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
    required LlmUsagePointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.t = valueDes;
          break;
        case r'requests':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.requests = valueDes;
          break;
        case r'inputTokens':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.inputTokens = valueDes;
          break;
        case r'outputTokens':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.outputTokens = valueDes;
          break;
        case r'cachedTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cachedTokens = valueDes;
          break;
        case r'errors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.errors = valueDes;
          break;
        case r'refused':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.refused = valueDes;
          break;
        case r'costUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.costUsd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmUsagePoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmUsagePointBuilder();
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
