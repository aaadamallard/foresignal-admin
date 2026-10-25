//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_post_media.g.dart';

/// A media link on a post (links only; 136 fingerprints images)
///
/// Properties:
/// * [type]
/// * [url]
/// * [thumbUrl]
/// * [altText]
/// * [fingerprintId] - 136 media fingerprint, once computed
@BuiltValue()
abstract class SocialPostMedia
    implements Built<SocialPostMedia, SocialPostMediaBuilder> {
  @BuiltValueField(wireName: r'type')
  SocialPostMediaTypeEnum get type;
  // enum typeEnum {  image,  video,  gif,  audio,  link-card,  other,  };

  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'thumbUrl')
  String? get thumbUrl;

  @BuiltValueField(wireName: r'altText')
  String? get altText;

  /// 136 media fingerprint, once computed
  @BuiltValueField(wireName: r'fingerprintId')
  String? get fingerprintId;

  SocialPostMedia._();

  factory SocialPostMedia([void updates(SocialPostMediaBuilder b)]) =
      _$SocialPostMedia;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPostMediaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPostMedia> get serializer =>
      _$SocialPostMediaSerializer();
}

class _$SocialPostMediaSerializer
    implements PrimitiveSerializer<SocialPostMedia> {
  @override
  final Iterable<Type> types = const [SocialPostMedia, _$SocialPostMedia];

  @override
  final String wireName = r'SocialPostMedia';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPostMedia object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SocialPostMediaTypeEnum),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.thumbUrl != null) {
      yield r'thumbUrl';
      yield serializers.serialize(
        object.thumbUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.altText != null) {
      yield r'altText';
      yield serializers.serialize(
        object.altText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fingerprintId != null) {
      yield r'fingerprintId';
      yield serializers.serialize(
        object.fingerprintId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPostMedia object, {
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
    required SocialPostMediaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialPostMediaTypeEnum),
                  )
                  as SocialPostMediaTypeEnum;
          result.type = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.url = valueDes;
          break;
        case r'thumbUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.thumbUrl = valueDes;
          break;
        case r'altText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.altText = valueDes;
          break;
        case r'fingerprintId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fingerprintId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPostMedia deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPostMediaBuilder();
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

class SocialPostMediaTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'image')
  static const SocialPostMediaTypeEnum image = _$socialPostMediaTypeEnum_image;
  @BuiltValueEnumConst(wireName: r'video')
  static const SocialPostMediaTypeEnum video = _$socialPostMediaTypeEnum_video;
  @BuiltValueEnumConst(wireName: r'gif')
  static const SocialPostMediaTypeEnum gif = _$socialPostMediaTypeEnum_gif;
  @BuiltValueEnumConst(wireName: r'audio')
  static const SocialPostMediaTypeEnum audio = _$socialPostMediaTypeEnum_audio;
  @BuiltValueEnumConst(wireName: r'link-card')
  static const SocialPostMediaTypeEnum linkCard =
      _$socialPostMediaTypeEnum_linkCard;
  @BuiltValueEnumConst(wireName: r'other')
  static const SocialPostMediaTypeEnum other = _$socialPostMediaTypeEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialPostMediaTypeEnum unknownDefaultOpenApi =
      _$socialPostMediaTypeEnum_unknownDefaultOpenApi;

  static Serializer<SocialPostMediaTypeEnum> get serializer =>
      _$socialPostMediaTypeEnumSerializer;

  const SocialPostMediaTypeEnum._(String name) : super(name);

  static BuiltSet<SocialPostMediaTypeEnum> get values =>
      _$socialPostMediaTypeEnumValues;
  static SocialPostMediaTypeEnum valueOf(String name) =>
      _$socialPostMediaTypeEnumValueOf(name);
}
