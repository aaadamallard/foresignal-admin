//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_match_request.g.dart';

/// Match a PDQ hash against the fingerprint store
///
/// Properties:
/// * [pdq] - 256-bit PDQ hash, hex
/// * [maxDistance] - PDQ's recommended threshold is 31
/// * [limit]
@BuiltValue()
abstract class MediaMatchRequest
    implements Built<MediaMatchRequest, MediaMatchRequestBuilder> {
  /// 256-bit PDQ hash, hex
  @BuiltValueField(wireName: r'pdq')
  String get pdq;

  /// PDQ's recommended threshold is 31
  @BuiltValueField(wireName: r'maxDistance')
  int? get maxDistance;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  MediaMatchRequest._();

  factory MediaMatchRequest([void updates(MediaMatchRequestBuilder b)]) =
      _$MediaMatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaMatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaMatchRequest> get serializer =>
      _$MediaMatchRequestSerializer();
}

class _$MediaMatchRequestSerializer
    implements PrimitiveSerializer<MediaMatchRequest> {
  @override
  final Iterable<Type> types = const [MediaMatchRequest, _$MediaMatchRequest];

  @override
  final String wireName = r'MediaMatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaMatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pdq';
    yield serializers.serialize(
      object.pdq,
      specifiedType: const FullType(String),
    );
    if (object.maxDistance != null) {
      yield r'maxDistance';
      yield serializers.serialize(
        object.maxDistance,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaMatchRequest object, {
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
    required MediaMatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pdq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.pdq = valueDes;
          break;
        case r'maxDistance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxDistance = valueDes;
          break;
        case r'limit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaMatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaMatchRequestBuilder();
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
