//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/mapping_sample.dart';
import 'package:foresignal_api/src/model/mapping_suggest_request_hints.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_suggest_request.g.dart';

/// Request for an LLM-drafted mapping (059)
///
/// Properties:
/// * [sample]
/// * [hints]
/// * [confirmEgress] - Required true when the chat provider is remote (035 classification)
@BuiltValue()
abstract class MappingSuggestRequest
    implements Built<MappingSuggestRequest, MappingSuggestRequestBuilder> {
  @BuiltValueField(wireName: r'sample')
  MappingSample get sample;

  @BuiltValueField(wireName: r'hints')
  MappingSuggestRequestHints? get hints;

  /// Required true when the chat provider is remote (035 classification)
  @BuiltValueField(wireName: r'confirmEgress')
  bool? get confirmEgress;

  MappingSuggestRequest._();

  factory MappingSuggestRequest([
    void updates(MappingSuggestRequestBuilder b),
  ]) = _$MappingSuggestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingSuggestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingSuggestRequest> get serializer =>
      _$MappingSuggestRequestSerializer();
}

class _$MappingSuggestRequestSerializer
    implements PrimitiveSerializer<MappingSuggestRequest> {
  @override
  final Iterable<Type> types = const [
    MappingSuggestRequest,
    _$MappingSuggestRequest,
  ];

  @override
  final String wireName = r'MappingSuggestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingSuggestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sample';
    yield serializers.serialize(
      object.sample,
      specifiedType: const FullType(MappingSample),
    );
    if (object.hints != null) {
      yield r'hints';
      yield serializers.serialize(
        object.hints,
        specifiedType: const FullType(MappingSuggestRequestHints),
      );
    }
    if (object.confirmEgress != null) {
      yield r'confirmEgress';
      yield serializers.serialize(
        object.confirmEgress,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingSuggestRequest object, {
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
    required MappingSuggestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sample':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MappingSample),
                  )
                  as MappingSample;
          result.sample.replace(valueDes);
          break;
        case r'hints':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MappingSuggestRequestHints,
                    ),
                  )
                  as MappingSuggestRequestHints?;
          if (valueDes == null) continue;
          result.hints.replace(valueDes);
          break;
        case r'confirmEgress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.confirmEgress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingSuggestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingSuggestRequestBuilder();
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
