//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_key_response.g.dart';

/// IngestKeyResponse
///
/// Properties:
/// * [ingestKey] - Shown once
@BuiltValue()
abstract class IngestKeyResponse
    implements Built<IngestKeyResponse, IngestKeyResponseBuilder> {
  /// Shown once
  @BuiltValueField(wireName: r'ingestKey')
  String get ingestKey;

  IngestKeyResponse._();

  factory IngestKeyResponse([void updates(IngestKeyResponseBuilder b)]) =
      _$IngestKeyResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestKeyResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestKeyResponse> get serializer =>
      _$IngestKeyResponseSerializer();
}

class _$IngestKeyResponseSerializer
    implements PrimitiveSerializer<IngestKeyResponse> {
  @override
  final Iterable<Type> types = const [IngestKeyResponse, _$IngestKeyResponse];

  @override
  final String wireName = r'IngestKeyResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestKeyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ingestKey';
    yield serializers.serialize(
      object.ingestKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestKeyResponse object, {
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
    required IngestKeyResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ingestKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ingestKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestKeyResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestKeyResponseBuilder();
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
