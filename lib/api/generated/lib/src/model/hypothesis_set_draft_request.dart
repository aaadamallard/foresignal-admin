//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_draft_request.g.dart';

/// Plain-language request for an LLM-drafted hypothesis set
///
/// Properties:
/// * [text]
/// * [situationId] - ULID identifier
/// * [regionCodes] - ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
@BuiltValue()
abstract class HypothesisSetDraftRequest
    implements
        Built<HypothesisSetDraftRequest, HypothesisSetDraftRequestBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  /// ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  HypothesisSetDraftRequest._();

  factory HypothesisSetDraftRequest([
    void updates(HypothesisSetDraftRequestBuilder b),
  ]) = _$HypothesisSetDraftRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetDraftRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetDraftRequest> get serializer =>
      _$HypothesisSetDraftRequestSerializer();
}

class _$HypothesisSetDraftRequestSerializer
    implements PrimitiveSerializer<HypothesisSetDraftRequest> {
  @override
  final Iterable<Type> types = const [
    HypothesisSetDraftRequest,
    _$HypothesisSetDraftRequest,
  ];

  @override
  final String wireName = r'HypothesisSetDraftRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetDraftRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetDraftRequest object, {
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
    required HypothesisSetDraftRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetDraftRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetDraftRequestBuilder();
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
