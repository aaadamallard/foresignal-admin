//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/media_fingerprint_uses_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_fingerprint.g.dart';

/// A PDQ fingerprint of an image or video thumbnail seen in posts (`MediaFingerprinter` 1.0.0); the image itself is discarded unless `social.keepMedia` (136)
///
/// Properties:
/// * [id] - ULID identifier
/// * [pdq] - 256-bit PDQ hash, hex
/// * [quality] - PDQ quality; below 50 kept but not matched
/// * [matchable]
/// * [firstSeenAt]
/// * [firstPostRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [useCount]
/// * [platforms]
/// * [narrativeIds]
/// * [mediaId] - 043 stored content when `social.keepMedia` is on
/// * [reuseFindingIds] - `media-reuse` findings
/// * [uses]
/// * [narratives] - Detail view
@BuiltValue()
abstract class MediaFingerprint
    implements Built<MediaFingerprint, MediaFingerprintBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// 256-bit PDQ hash, hex
  @BuiltValueField(wireName: r'pdq')
  String get pdq;

  /// PDQ quality; below 50 kept but not matched
  @BuiltValueField(wireName: r'quality')
  int get quality;

  @BuiltValueField(wireName: r'matchable')
  bool get matchable;

  @BuiltValueField(wireName: r'firstSeenAt')
  DateTime get firstSeenAt;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'firstPostRef')
  String get firstPostRef;

  @BuiltValueField(wireName: r'useCount')
  int get useCount;

  @BuiltValueField(wireName: r'platforms')
  BuiltList<String> get platforms;

  @BuiltValueField(wireName: r'narrativeIds')
  BuiltList<String> get narrativeIds;

  /// 043 stored content when `social.keepMedia` is on
  @BuiltValueField(wireName: r'mediaId')
  String? get mediaId;

  /// `media-reuse` findings
  @BuiltValueField(wireName: r'reuseFindingIds')
  BuiltList<String>? get reuseFindingIds;

  @BuiltValueField(wireName: r'uses')
  BuiltList<MediaFingerprintUsesInner>? get uses;

  /// Detail view
  @BuiltValueField(wireName: r'narratives')
  BuiltList<ObjectEnvelope>? get narratives;

  MediaFingerprint._();

  factory MediaFingerprint([void updates(MediaFingerprintBuilder b)]) =
      _$MediaFingerprint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaFingerprintBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaFingerprint> get serializer =>
      _$MediaFingerprintSerializer();
}

class _$MediaFingerprintSerializer
    implements PrimitiveSerializer<MediaFingerprint> {
  @override
  final Iterable<Type> types = const [MediaFingerprint, _$MediaFingerprint];

  @override
  final String wireName = r'MediaFingerprint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaFingerprint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'pdq';
    yield serializers.serialize(
      object.pdq,
      specifiedType: const FullType(String),
    );
    yield r'quality';
    yield serializers.serialize(
      object.quality,
      specifiedType: const FullType(int),
    );
    yield r'matchable';
    yield serializers.serialize(
      object.matchable,
      specifiedType: const FullType(bool),
    );
    yield r'firstSeenAt';
    yield serializers.serialize(
      object.firstSeenAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'firstPostRef';
    yield serializers.serialize(
      object.firstPostRef,
      specifiedType: const FullType(String),
    );
    yield r'useCount';
    yield serializers.serialize(
      object.useCount,
      specifiedType: const FullType(int),
    );
    yield r'platforms';
    yield serializers.serialize(
      object.platforms,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'narrativeIds';
    yield serializers.serialize(
      object.narrativeIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.mediaId != null) {
      yield r'mediaId';
      yield serializers.serialize(
        object.mediaId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reuseFindingIds != null) {
      yield r'reuseFindingIds';
      yield serializers.serialize(
        object.reuseFindingIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.uses != null) {
      yield r'uses';
      yield serializers.serialize(
        object.uses,
        specifiedType:
            const FullType(BuiltList, [FullType(MediaFingerprintUsesInner)]),
      );
    }
    if (object.narratives != null) {
      yield r'narratives';
      yield serializers.serialize(
        object.narratives,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaFingerprint object, {
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
    required MediaFingerprintBuilder result,
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
        case r'pdq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pdq = valueDes;
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quality = valueDes;
          break;
        case r'matchable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.matchable = valueDes;
          break;
        case r'firstSeenAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.firstSeenAt = valueDes;
          break;
        case r'firstPostRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstPostRef = valueDes;
          break;
        case r'useCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.useCount = valueDes;
          break;
        case r'platforms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.platforms.replace(valueDes);
          break;
        case r'narrativeIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.narrativeIds.replace(valueDes);
          break;
        case r'mediaId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mediaId = valueDes;
          break;
        case r'reuseFindingIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.reuseFindingIds.replace(valueDes);
          break;
        case r'uses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(MediaFingerprintUsesInner)]),
          ) as BuiltList<MediaFingerprintUsesInner>?;
          if (valueDes == null) continue;
          result.uses.replace(valueDes);
          break;
        case r'narratives':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(ObjectEnvelope)]),
          ) as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.narratives.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaFingerprint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaFingerprintBuilder();
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
