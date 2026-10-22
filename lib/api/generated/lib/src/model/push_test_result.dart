//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_test_result.g.dart';

/// Result of a native push provider or device test (032)
///
/// Properties:
/// * [success]
/// * [credentialMinted] - APNs JWT or FCM OAuth token obtained
/// * [sent] - null when no device was targeted
/// * [status] - Push service HTTP status
/// * [reason]
/// * [error]
@BuiltValue()
abstract class PushTestResult
    implements Built<PushTestResult, PushTestResultBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// APNs JWT or FCM OAuth token obtained
  @BuiltValueField(wireName: r'credentialMinted')
  bool? get credentialMinted;

  /// null when no device was targeted
  @BuiltValueField(wireName: r'sent')
  bool? get sent;

  /// Push service HTTP status
  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'error')
  String? get error;

  PushTestResult._();

  factory PushTestResult([void updates(PushTestResultBuilder b)]) =
      _$PushTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushTestResult> get serializer =>
      _$PushTestResultSerializer();
}

class _$PushTestResultSerializer
    implements PrimitiveSerializer<PushTestResult> {
  @override
  final Iterable<Type> types = const [PushTestResult, _$PushTestResult];

  @override
  final String wireName = r'PushTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    if (object.credentialMinted != null) {
      yield r'credentialMinted';
      yield serializers.serialize(
        object.credentialMinted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sent != null) {
      yield r'sent';
      yield serializers.serialize(
        object.sent,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushTestResult object, {
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
    required PushTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.success = valueDes;
          break;
        case r'credentialMinted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.credentialMinted = valueDes;
          break;
        case r'sent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sent = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushTestResultBuilder();
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
