//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_relevance_request.g.dart';

/// SourceRelevanceRequest
///
/// Properties:
/// * [sourceIds] - Registered source ids, the candidate dataset of a rule (as many as `TriggerRuleInput.sources` takes)
@BuiltValue()
abstract class SourceRelevanceRequest
    implements Built<SourceRelevanceRequest, SourceRelevanceRequestBuilder> {
  /// Registered source ids, the candidate dataset of a rule (as many as `TriggerRuleInput.sources` takes)
  @BuiltValueField(wireName: r'sourceIds')
  BuiltSet<String> get sourceIds;

  SourceRelevanceRequest._();

  factory SourceRelevanceRequest([
    void updates(SourceRelevanceRequestBuilder b),
  ]) = _$SourceRelevanceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceRelevanceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceRelevanceRequest> get serializer =>
      _$SourceRelevanceRequestSerializer();
}

class _$SourceRelevanceRequestSerializer
    implements PrimitiveSerializer<SourceRelevanceRequest> {
  @override
  final Iterable<Type> types = const [
    SourceRelevanceRequest,
    _$SourceRelevanceRequest,
  ];

  @override
  final String wireName = r'SourceRelevanceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceRelevanceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceIds';
    yield serializers.serialize(
      object.sourceIds,
      specifiedType: const FullType(BuiltSet, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceRelevanceRequest object, {
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
    required SourceRelevanceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltSet, [FullType(String)]),
                  )
                  as BuiltSet<String>;
          result.sourceIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceRelevanceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceRelevanceRequestBuilder();
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
