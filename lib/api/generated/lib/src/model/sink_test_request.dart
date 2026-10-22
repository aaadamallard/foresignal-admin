//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_test_request.g.dart';

/// Options for a one-off sink test (110)
///
/// Properties:
/// * [kind] - Kind of the synthetic record to send (default: the first kind in the sink filter, else a point)
/// * [timeoutSeconds]
@BuiltValue()
abstract class SinkTestRequest
    implements Built<SinkTestRequest, SinkTestRequestBuilder> {
  /// Kind of the synthetic record to send (default: the first kind in the sink filter, else a point)
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'timeoutSeconds')
  int? get timeoutSeconds;

  SinkTestRequest._();

  factory SinkTestRequest([void updates(SinkTestRequestBuilder b)]) =
      _$SinkTestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkTestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkTestRequest> get serializer =>
      _$SinkTestRequestSerializer();
}

class _$SinkTestRequestSerializer
    implements PrimitiveSerializer<SinkTestRequest> {
  @override
  final Iterable<Type> types = const [SinkTestRequest, _$SinkTestRequest];

  @override
  final String wireName = r'SinkTestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkTestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timeoutSeconds != null) {
      yield r'timeoutSeconds';
      yield serializers.serialize(
        object.timeoutSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkTestRequest object, {
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
    required SinkTestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'timeoutSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.timeoutSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkTestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkTestRequestBuilder();
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
