//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'probe_result_requests_inner.g.dart';

/// ProbeResultRequestsInner
///
/// Properties:
/// * [method]
/// * [url] - Credentials redacted
/// * [status]
/// * [durationMs]
/// * [contentType]
/// * [bytes]
/// * [truncated]
/// * [body]
@BuiltValue()
abstract class ProbeResultRequestsInner
    implements
        Built<ProbeResultRequestsInner, ProbeResultRequestsInnerBuilder> {
  @BuiltValueField(wireName: r'method')
  String? get method;

  /// Credentials redacted
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'durationMs')
  int? get durationMs;

  @BuiltValueField(wireName: r'contentType')
  String? get contentType;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'body')
  String? get body;

  ProbeResultRequestsInner._();

  factory ProbeResultRequestsInner([
    void updates(ProbeResultRequestsInnerBuilder b),
  ]) = _$ProbeResultRequestsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProbeResultRequestsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProbeResultRequestsInner> get serializer =>
      _$ProbeResultRequestsInnerSerializer();
}

class _$ProbeResultRequestsInnerSerializer
    implements PrimitiveSerializer<ProbeResultRequestsInner> {
  @override
  final Iterable<Type> types = const [
    ProbeResultRequestsInner,
    _$ProbeResultRequestsInner,
  ];

  @override
  final String wireName = r'ProbeResultRequestsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProbeResultRequestsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    if (object.durationMs != null) {
      yield r'durationMs';
      yield serializers.serialize(
        object.durationMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.contentType != null) {
      yield r'contentType';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType(String),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProbeResultRequestsInner object, {
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
    required ProbeResultRequestsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
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
        case r'durationMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.durationMs = valueDes;
          break;
        case r'contentType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.contentType = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'body':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProbeResultRequestsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProbeResultRequestsInnerBuilder();
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
