//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/media_fingerprint.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_match.g.dart';

/// A fingerprint within the match threshold of the query
///
/// Properties:
/// * [fingerprint]
/// * [distance] - Hamming distance
@BuiltValue()
abstract class MediaMatch implements Built<MediaMatch, MediaMatchBuilder> {
  @BuiltValueField(wireName: r'fingerprint')
  MediaFingerprint get fingerprint;

  /// Hamming distance
  @BuiltValueField(wireName: r'distance')
  int get distance;

  MediaMatch._();

  factory MediaMatch([void updates(MediaMatchBuilder b)]) = _$MediaMatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaMatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaMatch> get serializer => _$MediaMatchSerializer();
}

class _$MediaMatchSerializer implements PrimitiveSerializer<MediaMatch> {
  @override
  final Iterable<Type> types = const [MediaMatch, _$MediaMatch];

  @override
  final String wireName = r'MediaMatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaMatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fingerprint';
    yield serializers.serialize(
      object.fingerprint,
      specifiedType: const FullType(MediaFingerprint),
    );
    yield r'distance';
    yield serializers.serialize(
      object.distance,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaMatch object, {
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
    required MediaMatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fingerprint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MediaFingerprint),
                  )
                  as MediaFingerprint;
          result.fingerprint.replace(valueDes);
          break;
        case r'distance':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.distance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaMatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaMatchBuilder();
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
