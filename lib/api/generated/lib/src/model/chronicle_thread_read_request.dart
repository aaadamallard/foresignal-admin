//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_thread_read_request.g.dart';

/// Move the caller's read cursor on a chronicle thread
///
/// Properties:
/// * [upToId]
@BuiltValue()
abstract class ChronicleThreadReadRequest
    implements
        Built<ChronicleThreadReadRequest, ChronicleThreadReadRequestBuilder> {
  @BuiltValueField(wireName: r'upToId')
  int get upToId;

  ChronicleThreadReadRequest._();

  factory ChronicleThreadReadRequest(
          [void updates(ChronicleThreadReadRequestBuilder b)]) =
      _$ChronicleThreadReadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleThreadReadRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleThreadReadRequest> get serializer =>
      _$ChronicleThreadReadRequestSerializer();
}

class _$ChronicleThreadReadRequestSerializer
    implements PrimitiveSerializer<ChronicleThreadReadRequest> {
  @override
  final Iterable<Type> types = const [
    ChronicleThreadReadRequest,
    _$ChronicleThreadReadRequest
  ];

  @override
  final String wireName = r'ChronicleThreadReadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleThreadReadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'upToId';
    yield serializers.serialize(
      object.upToId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleThreadReadRequest object, {
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
    required ChronicleThreadReadRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'upToId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.upToId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleThreadReadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleThreadReadRequestBuilder();
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
