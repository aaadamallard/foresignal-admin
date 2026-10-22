//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remote_media_accepted.g.dart';

/// Accepted remote media
///
/// Properties:
/// * [mediaId] - ULID identifier
/// * [sha256]
/// * [passId] - Pass the image attached to, or the minted pass
@BuiltValue()
abstract class RemoteMediaAccepted
    implements Built<RemoteMediaAccepted, RemoteMediaAcceptedBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'mediaId')
  String get mediaId;

  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  /// Pass the image attached to, or the minted pass
  @BuiltValueField(wireName: r'passId')
  String? get passId;

  RemoteMediaAccepted._();

  factory RemoteMediaAccepted([void updates(RemoteMediaAcceptedBuilder b)]) =
      _$RemoteMediaAccepted;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemoteMediaAcceptedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemoteMediaAccepted> get serializer =>
      _$RemoteMediaAcceptedSerializer();
}

class _$RemoteMediaAcceptedSerializer
    implements PrimitiveSerializer<RemoteMediaAccepted> {
  @override
  final Iterable<Type> types = const [
    RemoteMediaAccepted,
    _$RemoteMediaAccepted,
  ];

  @override
  final String wireName = r'RemoteMediaAccepted';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemoteMediaAccepted object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mediaId';
    yield serializers.serialize(
      object.mediaId,
      specifiedType: const FullType(String),
    );
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
    if (object.passId != null) {
      yield r'passId';
      yield serializers.serialize(
        object.passId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RemoteMediaAccepted object, {
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
    required RemoteMediaAcceptedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mediaId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.mediaId = valueDes;
          break;
        case r'sha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sha256 = valueDes;
          break;
        case r'passId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.passId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemoteMediaAccepted deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoteMediaAcceptedBuilder();
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
