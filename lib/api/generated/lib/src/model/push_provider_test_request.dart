//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_provider_test_request.g.dart';

/// Optional device to send a test alert to (032)
///
/// Properties:
/// * [deviceId]
@BuiltValue()
abstract class PushProviderTestRequest
    implements Built<PushProviderTestRequest, PushProviderTestRequestBuilder> {
  @BuiltValueField(wireName: r'deviceId')
  String? get deviceId;

  PushProviderTestRequest._();

  factory PushProviderTestRequest([
    void updates(PushProviderTestRequestBuilder b),
  ]) = _$PushProviderTestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushProviderTestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushProviderTestRequest> get serializer =>
      _$PushProviderTestRequestSerializer();
}

class _$PushProviderTestRequestSerializer
    implements PrimitiveSerializer<PushProviderTestRequest> {
  @override
  final Iterable<Type> types = const [
    PushProviderTestRequest,
    _$PushProviderTestRequest,
  ];

  @override
  final String wireName = r'PushProviderTestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushProviderTestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.deviceId != null) {
      yield r'deviceId';
      yield serializers.serialize(
        object.deviceId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushProviderTestRequest object, {
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
    required PushProviderTestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deviceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushProviderTestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushProviderTestRequestBuilder();
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
