//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_draft_usage.g.dart';

/// Token usage
///
/// Properties:
/// * [inputTokens]
/// * [outputTokens]
/// * [cachedTokens]
@BuiltValue()
abstract class HypothesisSetDraftUsage
    implements Built<HypothesisSetDraftUsage, HypothesisSetDraftUsageBuilder> {
  @BuiltValueField(wireName: r'inputTokens')
  int? get inputTokens;

  @BuiltValueField(wireName: r'outputTokens')
  int? get outputTokens;

  @BuiltValueField(wireName: r'cachedTokens')
  int? get cachedTokens;

  HypothesisSetDraftUsage._();

  factory HypothesisSetDraftUsage(
          [void updates(HypothesisSetDraftUsageBuilder b)]) =
      _$HypothesisSetDraftUsage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetDraftUsageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetDraftUsage> get serializer =>
      _$HypothesisSetDraftUsageSerializer();
}

class _$HypothesisSetDraftUsageSerializer
    implements PrimitiveSerializer<HypothesisSetDraftUsage> {
  @override
  final Iterable<Type> types = const [
    HypothesisSetDraftUsage,
    _$HypothesisSetDraftUsage
  ];

  @override
  final String wireName = r'HypothesisSetDraftUsage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetDraftUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.inputTokens != null) {
      yield r'inputTokens';
      yield serializers.serialize(
        object.inputTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.outputTokens != null) {
      yield r'outputTokens';
      yield serializers.serialize(
        object.outputTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.cachedTokens != null) {
      yield r'cachedTokens';
      yield serializers.serialize(
        object.cachedTokens,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetDraftUsage object, {
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
    required HypothesisSetDraftUsageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inputTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.inputTokens = valueDes;
          break;
        case r'outputTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.outputTokens = valueDes;
          break;
        case r'cachedTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.cachedTokens = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetDraftUsage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetDraftUsageBuilder();
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
