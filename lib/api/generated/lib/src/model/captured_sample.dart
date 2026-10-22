//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'captured_sample.g.dart';

/// One redacted raw ingest request captured while `captureSamples` is on (059)
///
/// Properties:
/// * [receivedAt]
/// * [method]
/// * [format] - Format path segment, null for the default endpoint
/// * [contentType]
/// * [contentEncoding]
/// * [query] - Redacted query string
/// * [body] - Redacted, decompressed body (text)
/// * [bodyBytes]
/// * [truncated]
@BuiltValue()
abstract class CapturedSample
    implements Built<CapturedSample, CapturedSampleBuilder> {
  @BuiltValueField(wireName: r'receivedAt')
  DateTime get receivedAt;

  @BuiltValueField(wireName: r'method')
  CapturedSampleMethodEnum get method;
  // enum methodEnum {  GET,  POST,  PUT,  };

  /// Format path segment, null for the default endpoint
  @BuiltValueField(wireName: r'format')
  String? get format;

  @BuiltValueField(wireName: r'contentType')
  String? get contentType;

  @BuiltValueField(wireName: r'contentEncoding')
  String? get contentEncoding;

  /// Redacted query string
  @BuiltValueField(wireName: r'query')
  String? get query;

  /// Redacted, decompressed body (text)
  @BuiltValueField(wireName: r'body')
  String? get body;

  @BuiltValueField(wireName: r'bodyBytes')
  int? get bodyBytes;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  CapturedSample._();

  factory CapturedSample([void updates(CapturedSampleBuilder b)]) =
      _$CapturedSample;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CapturedSampleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CapturedSample> get serializer =>
      _$CapturedSampleSerializer();
}

class _$CapturedSampleSerializer
    implements PrimitiveSerializer<CapturedSample> {
  @override
  final Iterable<Type> types = const [CapturedSample, _$CapturedSample];

  @override
  final String wireName = r'CapturedSample';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CapturedSample object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'receivedAt';
    yield serializers.serialize(
      object.receivedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(CapturedSampleMethodEnum),
    );
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contentType != null) {
      yield r'contentType';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contentEncoding != null) {
      yield r'contentEncoding';
      yield serializers.serialize(
        object.contentEncoding,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.query != null) {
      yield r'query';
      yield serializers.serialize(
        object.query,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bodyBytes != null) {
      yield r'bodyBytes';
      yield serializers.serialize(
        object.bodyBytes,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CapturedSample object, {
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
    required CapturedSampleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'receivedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.receivedAt = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CapturedSampleMethodEnum),
          ) as CapturedSampleMethodEnum;
          result.method = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.format = valueDes;
          break;
        case r'contentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentType = valueDes;
          break;
        case r'contentEncoding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentEncoding = valueDes;
          break;
        case r'query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.query = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'bodyBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bodyBytes = valueDes;
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CapturedSample deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapturedSampleBuilder();
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

class CapturedSampleMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GET')
  static const CapturedSampleMethodEnum GET = _$capturedSampleMethodEnum_GET;
  @BuiltValueEnumConst(wireName: r'POST')
  static const CapturedSampleMethodEnum POST = _$capturedSampleMethodEnum_POST;
  @BuiltValueEnumConst(wireName: r'PUT')
  static const CapturedSampleMethodEnum PUT = _$capturedSampleMethodEnum_PUT;

  static Serializer<CapturedSampleMethodEnum> get serializer =>
      _$capturedSampleMethodEnumSerializer;

  const CapturedSampleMethodEnum._(String name) : super(name);

  static BuiltSet<CapturedSampleMethodEnum> get values =>
      _$capturedSampleMethodEnumValues;
  static CapturedSampleMethodEnum valueOf(String name) =>
      _$capturedSampleMethodEnumValueOf(name);
}
