//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'egress_test_result.g.dart';

/// Result of an egress route test (reports the observed exit IP, C1/181)
///
/// Properties:
/// * [ok]
/// * [exitIp] - The public IP the route presented on the test call
/// * [latencyMs]
/// * [message]
/// * [checkedAt]
@BuiltValue()
abstract class EgressTestResult
    implements Built<EgressTestResult, EgressTestResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// The public IP the route presented on the test call
  @BuiltValueField(wireName: r'exitIp')
  String? get exitIp;

  @BuiltValueField(wireName: r'latencyMs')
  num? get latencyMs;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'checkedAt')
  DateTime? get checkedAt;

  EgressTestResult._();

  factory EgressTestResult([void updates(EgressTestResultBuilder b)]) =
      _$EgressTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EgressTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EgressTestResult> get serializer =>
      _$EgressTestResultSerializer();
}

class _$EgressTestResultSerializer
    implements PrimitiveSerializer<EgressTestResult> {
  @override
  final Iterable<Type> types = const [EgressTestResult, _$EgressTestResult];

  @override
  final String wireName = r'EgressTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EgressTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(object.ok, specifiedType: const FullType(bool));
    if (object.exitIp != null) {
      yield r'exitIp';
      yield serializers.serialize(
        object.exitIp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.latencyMs != null) {
      yield r'latencyMs';
      yield serializers.serialize(
        object.latencyMs,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.checkedAt != null) {
      yield r'checkedAt';
      yield serializers.serialize(
        object.checkedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EgressTestResult object, {
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
    required EgressTestResultBuilder result,
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
        case r'exitIp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.exitIp = valueDes;
          break;
        case r'latencyMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.latencyMs = valueDes;
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
        case r'checkedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.checkedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EgressTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressTestResultBuilder();
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
