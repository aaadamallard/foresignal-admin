//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smtp_test_result.g.dart';

/// Result of an SMTP send test
///
/// Properties:
/// * [ok]
/// * [message] - Server reply or failure reason
/// * [sentAt]
@BuiltValue()
abstract class SmtpTestResult
    implements Built<SmtpTestResult, SmtpTestResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// Server reply or failure reason
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'sentAt')
  DateTime? get sentAt;

  SmtpTestResult._();

  factory SmtpTestResult([void updates(SmtpTestResultBuilder b)]) =
      _$SmtpTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmtpTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SmtpTestResult> get serializer =>
      _$SmtpTestResultSerializer();
}

class _$SmtpTestResultSerializer
    implements PrimitiveSerializer<SmtpTestResult> {
  @override
  final Iterable<Type> types = const [SmtpTestResult, _$SmtpTestResult];

  @override
  final String wireName = r'SmtpTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmtpTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(object.ok, specifiedType: const FullType(bool));
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sentAt != null) {
      yield r'sentAt';
      yield serializers.serialize(
        object.sentAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SmtpTestResult object, {
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
    required SmtpTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.ok = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'sentAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.sentAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SmtpTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmtpTestResultBuilder();
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
