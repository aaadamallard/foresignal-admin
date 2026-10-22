//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sample_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_batch_response.g.dart';

/// Batch sample results, one per requested point in order
///
/// Properties:
/// * [items]
/// * [serverTime]
@BuiltValue()
abstract class SampleBatchResponse
    implements Built<SampleBatchResponse, SampleBatchResponseBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SampleResponse> get items;

  @BuiltValueField(wireName: r'serverTime')
  DateTime get serverTime;

  SampleBatchResponse._();

  factory SampleBatchResponse([void updates(SampleBatchResponseBuilder b)]) =
      _$SampleBatchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleBatchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleBatchResponse> get serializer =>
      _$SampleBatchResponseSerializer();
}

class _$SampleBatchResponseSerializer
    implements PrimitiveSerializer<SampleBatchResponse> {
  @override
  final Iterable<Type> types = const [
    SampleBatchResponse,
    _$SampleBatchResponse
  ];

  @override
  final String wireName = r'SampleBatchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleBatchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SampleResponse)]),
    );
    yield r'serverTime';
    yield serializers.serialize(
      object.serverTime,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleBatchResponse object, {
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
    required SampleBatchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(SampleResponse)]),
          ) as BuiltList<SampleResponse>;
          result.items.replace(valueDes);
          break;
        case r'serverTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.serverTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SampleBatchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleBatchResponseBuilder();
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
