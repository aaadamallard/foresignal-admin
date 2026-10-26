//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smtp_test_request.g.dart';

/// Send a test email to confirm SMTP settings
///
/// Properties:
/// * [to] - Recipient of the test message
@BuiltValue()
abstract class SmtpTestRequest
    implements Built<SmtpTestRequest, SmtpTestRequestBuilder> {
  /// Recipient of the test message
  @BuiltValueField(wireName: r'to')
  String get to;

  SmtpTestRequest._();

  factory SmtpTestRequest([void updates(SmtpTestRequestBuilder b)]) =
      _$SmtpTestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmtpTestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SmtpTestRequest> get serializer =>
      _$SmtpTestRequestSerializer();
}

class _$SmtpTestRequestSerializer
    implements PrimitiveSerializer<SmtpTestRequest> {
  @override
  final Iterable<Type> types = const [SmtpTestRequest, _$SmtpTestRequest];

  @override
  final String wireName = r'SmtpTestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmtpTestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SmtpTestRequest object, {
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
    required SmtpTestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SmtpTestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmtpTestRequestBuilder();
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
