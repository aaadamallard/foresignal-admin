//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/media_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media.g.dart';

/// A content-addressed media row (SatDump composite, thumbnail, static map, briefing audio, or a generated document such as the CZML linked by MCP `get_track`, prompt 141)
///
/// Properties:
/// * [id] - ULID identifier
/// * [sha256]
/// * [contentType]
/// * [width] - Pixels; 0 for audio
/// * [height] - Pixels; 0 for audio
/// * [bytes]
/// * [role] - `document` (141): a generated non-image document such as CZML, stored with an expiry; `audio` (141): synthesized speech of a briefing run, expiring with the briefing-run retention. Neither has thumbnails
/// * [sourceId]
/// * [recordSourceId]
/// * [recordExternalId]
/// * [recordRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [licence]
/// * [createdAt]
/// * [expiresAt] - Null: follows the owning record's retention
/// * [variantOf] - ULID identifier
/// * [variantWidth]
/// * [links]
@BuiltValue()
abstract class Media implements Built<Media, MediaBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  @BuiltValueField(wireName: r'contentType')
  String get contentType;

  /// Pixels; 0 for audio
  @BuiltValueField(wireName: r'width')
  int get width;

  /// Pixels; 0 for audio
  @BuiltValueField(wireName: r'height')
  int get height;

  @BuiltValueField(wireName: r'bytes')
  int get bytes;

  /// `document` (141): a generated non-image document such as CZML, stored with an expiry; `audio` (141): synthesized speech of a briefing run, expiring with the briefing-run retention. Neither has thumbnails
  @BuiltValueField(wireName: r'role')
  MediaRoleEnum get role;
  // enum roleEnum {  image,  thumbnail,  projected,  map,  document,  audio,  };

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'recordSourceId')
  String? get recordSourceId;

  @BuiltValueField(wireName: r'recordExternalId')
  String? get recordExternalId;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'recordRef')
  String? get recordRef;

  @BuiltValueField(wireName: r'licence')
  String? get licence;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Null: follows the owning record's retention
  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'variantOf')
  String? get variantOf;

  @BuiltValueField(wireName: r'variantWidth')
  int? get variantWidth;

  @BuiltValueField(wireName: r'links')
  MediaLinks? get links;

  Media._();

  factory Media([void updates(MediaBuilder b)]) = _$Media;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Media> get serializer => _$MediaSerializer();
}

class _$MediaSerializer implements PrimitiveSerializer<Media> {
  @override
  final Iterable<Type> types = const [Media, _$Media];

  @override
  final String wireName = r'Media';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Media object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
    yield r'contentType';
    yield serializers.serialize(
      object.contentType,
      specifiedType: const FullType(String),
    );
    yield r'width';
    yield serializers.serialize(
      object.width,
      specifiedType: const FullType(int),
    );
    yield r'height';
    yield serializers.serialize(
      object.height,
      specifiedType: const FullType(int),
    );
    yield r'bytes';
    yield serializers.serialize(
      object.bytes,
      specifiedType: const FullType(int),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(MediaRoleEnum),
    );
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recordSourceId != null) {
      yield r'recordSourceId';
      yield serializers.serialize(
        object.recordSourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recordExternalId != null) {
      yield r'recordExternalId';
      yield serializers.serialize(
        object.recordExternalId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recordRef != null) {
      yield r'recordRef';
      yield serializers.serialize(
        object.recordRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.variantOf != null) {
      yield r'variantOf';
      yield serializers.serialize(
        object.variantOf,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.variantWidth != null) {
      yield r'variantWidth';
      yield serializers.serialize(
        object.variantWidth,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(MediaLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Media object, {
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
    required MediaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'sha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sha256 = valueDes;
          break;
        case r'contentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentType = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.height = valueDes;
          break;
        case r'bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bytes = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaRoleEnum),
          ) as MediaRoleEnum;
          result.role = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'recordSourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recordSourceId = valueDes;
          break;
        case r'recordExternalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recordExternalId = valueDes;
          break;
        case r'recordRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recordRef = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licence = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'variantOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.variantOf = valueDes;
          break;
        case r'variantWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.variantWidth = valueDes;
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MediaLinks),
          ) as MediaLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Media deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaBuilder();
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

/// `document` (141): a generated non-image document such as CZML, stored with an expiry; `audio` (141): synthesized speech of a briefing run, expiring with the briefing-run retention. Neither has thumbnails
class MediaRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'image')
  static const MediaRoleEnum image = _$mediaRoleEnum_image;
  @BuiltValueEnumConst(wireName: r'thumbnail')
  static const MediaRoleEnum thumbnail = _$mediaRoleEnum_thumbnail;
  @BuiltValueEnumConst(wireName: r'projected')
  static const MediaRoleEnum projected = _$mediaRoleEnum_projected;
  @BuiltValueEnumConst(wireName: r'map')
  static const MediaRoleEnum map = _$mediaRoleEnum_map;
  @BuiltValueEnumConst(wireName: r'document')
  static const MediaRoleEnum document = _$mediaRoleEnum_document;
  @BuiltValueEnumConst(wireName: r'audio')
  static const MediaRoleEnum audio = _$mediaRoleEnum_audio;

  static Serializer<MediaRoleEnum> get serializer => _$mediaRoleEnumSerializer;

  const MediaRoleEnum._(String name) : super(name);

  static BuiltSet<MediaRoleEnum> get values => _$mediaRoleEnumValues;
  static MediaRoleEnum valueOf(String name) => _$mediaRoleEnumValueOf(name);
}
