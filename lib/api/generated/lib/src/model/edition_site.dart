//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edition_site.g.dart';

/// Where an edition's hosted site is reachable (NP-005). Each URL serves the latest successful run as a standalone HTML page.
///
/// Properties:
/// * [briefingId]
/// * [url] - The canonical site URL (`/v1/editions/{briefingId}/site`)
/// * [feedKeyUrl] - The site under the edition's feed key (`/v1/k/{key}/editions/{briefingId}/site`, 035), or null when it has none
/// * [shareUrl] - The read-only, revocable share link (112) to the site, or null when it has none
/// * [latestRunId] - The run the site shows, or null before the first successful run
/// * [updatedAt] - When that run finished
@BuiltValue()
abstract class EditionSite implements Built<EditionSite, EditionSiteBuilder> {
  @BuiltValueField(wireName: r'briefingId')
  String get briefingId;

  /// The canonical site URL (`/v1/editions/{briefingId}/site`)
  @BuiltValueField(wireName: r'url')
  String get url;

  /// The site under the edition's feed key (`/v1/k/{key}/editions/{briefingId}/site`, 035), or null when it has none
  @BuiltValueField(wireName: r'feedKeyUrl')
  String? get feedKeyUrl;

  /// The read-only, revocable share link (112) to the site, or null when it has none
  @BuiltValueField(wireName: r'shareUrl')
  String? get shareUrl;

  /// The run the site shows, or null before the first successful run
  @BuiltValueField(wireName: r'latestRunId')
  String? get latestRunId;

  /// When that run finished
  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  EditionSite._();

  factory EditionSite([void updates(EditionSiteBuilder b)]) = _$EditionSite;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EditionSiteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EditionSite> get serializer => _$EditionSiteSerializer();
}

class _$EditionSiteSerializer implements PrimitiveSerializer<EditionSite> {
  @override
  final Iterable<Type> types = const [EditionSite, _$EditionSite];

  @override
  final String wireName = r'EditionSite';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EditionSite object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'briefingId';
    yield serializers.serialize(
      object.briefingId,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.feedKeyUrl != null) {
      yield r'feedKeyUrl';
      yield serializers.serialize(
        object.feedKeyUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shareUrl != null) {
      yield r'shareUrl';
      yield serializers.serialize(
        object.shareUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.latestRunId != null) {
      yield r'latestRunId';
      yield serializers.serialize(
        object.latestRunId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EditionSite object, {
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
    required EditionSiteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'briefingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.briefingId = valueDes;
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
        case r'feedKeyUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.feedKeyUrl = valueDes;
          break;
        case r'shareUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.shareUrl = valueDes;
          break;
        case r'latestRunId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestRunId = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EditionSite deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EditionSiteBuilder();
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
