//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_linker_test_request.g.dart';

/// Seq range for a linker dry run
///
/// Properties:
/// * [fromSeq]
/// * [toSeq]
@BuiltValue()
abstract class SituationLinkerTestRequest
    implements
        Built<SituationLinkerTestRequest, SituationLinkerTestRequestBuilder> {
  @BuiltValueField(wireName: r'fromSeq')
  int get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int get toSeq;

  SituationLinkerTestRequest._();

  factory SituationLinkerTestRequest([
    void updates(SituationLinkerTestRequestBuilder b),
  ]) = _$SituationLinkerTestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationLinkerTestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationLinkerTestRequest> get serializer =>
      _$SituationLinkerTestRequestSerializer();
}

class _$SituationLinkerTestRequestSerializer
    implements PrimitiveSerializer<SituationLinkerTestRequest> {
  @override
  final Iterable<Type> types = const [
    SituationLinkerTestRequest,
    _$SituationLinkerTestRequest,
  ];

  @override
  final String wireName = r'SituationLinkerTestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationLinkerTestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fromSeq';
    yield serializers.serialize(
      object.fromSeq,
      specifiedType: const FullType(int),
    );
    yield r'toSeq';
    yield serializers.serialize(
      object.toSeq,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationLinkerTestRequest object, {
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
    required SituationLinkerTestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.toSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationLinkerTestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationLinkerTestRequestBuilder();
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
