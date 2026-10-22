//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_rating.g.dart';

/// One rating of an outlet from a declared provider, with licence and date; never model-generated
///
/// Properties:
/// * [outletId]
/// * [provider]
/// * [dimension] - Rating dimension; provider axes that are not left–right are recorded as `{provider}:{axis}`, never forced into lean
/// * [valueNorm] - Lean −2…+2 (left … right); factuality 1…5
/// * [valueRaw]
/// * [label]
/// * [ratedAt]
/// * [licence]
/// * [attribution]
/// * [url]
/// * [egress]
/// * [importedAt]
@BuiltValue()
abstract class MediaRating implements Built<MediaRating, MediaRatingBuilder> {
  @BuiltValueField(wireName: r'outletId')
  String get outletId;

  @BuiltValueField(wireName: r'provider')
  MediaRatingProviderEnum get provider;
  // enum providerEnum {  wikidata,  partisan-web,  allsides,  mbfc,  operator,  };

  /// Rating dimension; provider axes that are not left–right are recorded as `{provider}:{axis}`, never forced into lean
  @BuiltValueField(wireName: r'dimension')
  JsonObject? get dimension;

  /// Lean −2…+2 (left … right); factuality 1…5
  @BuiltValueField(wireName: r'valueNorm')
  num? get valueNorm;

  @BuiltValueField(wireName: r'valueRaw')
  String? get valueRaw;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'ratedAt')
  DateTime? get ratedAt;

  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'attribution')
  String get attribution;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'egress')
  MediaRatingEgressEnum get egress;
  // enum egressEnum {  OPEN,  LOCAL_ONLY,  };

  @BuiltValueField(wireName: r'importedAt')
  DateTime get importedAt;

  MediaRating._();

  factory MediaRating([void updates(MediaRatingBuilder b)]) = _$MediaRating;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaRatingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaRating> get serializer => _$MediaRatingSerializer();
}

class _$MediaRatingSerializer implements PrimitiveSerializer<MediaRating> {
  @override
  final Iterable<Type> types = const [MediaRating, _$MediaRating];

  @override
  final String wireName = r'MediaRating';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaRating object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'outletId';
    yield serializers.serialize(
      object.outletId,
      specifiedType: const FullType(String),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(MediaRatingProviderEnum),
    );
    yield r'dimension';
    yield object.dimension == null
        ? null
        : serializers.serialize(
            object.dimension,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.valueNorm != null) {
      yield r'valueNorm';
      yield serializers.serialize(
        object.valueNorm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.valueRaw != null) {
      yield r'valueRaw';
      yield serializers.serialize(
        object.valueRaw,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ratedAt != null) {
      yield r'ratedAt';
      yield serializers.serialize(
        object.ratedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(String),
    );
    yield r'attribution';
    yield serializers.serialize(
      object.attribution,
      specifiedType: const FullType(String),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'egress';
    yield serializers.serialize(
      object.egress,
      specifiedType: const FullType(MediaRatingEgressEnum),
    );
    yield r'importedAt';
    yield serializers.serialize(
      object.importedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaRating object, {
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
    required MediaRatingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'outletId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.outletId = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaRatingProviderEnum),
          ) as MediaRatingProviderEnum;
          result.provider = valueDes;
          break;
        case r'dimension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.dimension = valueDes;
          break;
        case r'valueNorm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.valueNorm = valueDes;
          break;
        case r'valueRaw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.valueRaw = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'ratedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.ratedAt = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licence = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attribution = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'egress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaRatingEgressEnum),
          ) as MediaRatingEgressEnum;
          result.egress = valueDes;
          break;
        case r'importedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.importedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaRating deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaRatingBuilder();
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

class MediaRatingProviderEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wikidata')
  static const MediaRatingProviderEnum wikidata =
      _$mediaRatingProviderEnum_wikidata;
  @BuiltValueEnumConst(wireName: r'partisan-web')
  static const MediaRatingProviderEnum partisanWeb =
      _$mediaRatingProviderEnum_partisanWeb;
  @BuiltValueEnumConst(wireName: r'allsides')
  static const MediaRatingProviderEnum allsides =
      _$mediaRatingProviderEnum_allsides;
  @BuiltValueEnumConst(wireName: r'mbfc')
  static const MediaRatingProviderEnum mbfc = _$mediaRatingProviderEnum_mbfc;
  @BuiltValueEnumConst(wireName: r'operator')
  static const MediaRatingProviderEnum operator_ =
      _$mediaRatingProviderEnum_operator_;

  static Serializer<MediaRatingProviderEnum> get serializer =>
      _$mediaRatingProviderEnumSerializer;

  const MediaRatingProviderEnum._(String name) : super(name);

  static BuiltSet<MediaRatingProviderEnum> get values =>
      _$mediaRatingProviderEnumValues;
  static MediaRatingProviderEnum valueOf(String name) =>
      _$mediaRatingProviderEnumValueOf(name);
}

class MediaRatingEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const MediaRatingEgressEnum OPEN = _$mediaRatingEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const MediaRatingEgressEnum LOCAL_ONLY =
      _$mediaRatingEgressEnum_LOCAL_ONLY;

  static Serializer<MediaRatingEgressEnum> get serializer =>
      _$mediaRatingEgressEnumSerializer;

  const MediaRatingEgressEnum._(String name) : super(name);

  static BuiltSet<MediaRatingEgressEnum> get values =>
      _$mediaRatingEgressEnumValues;
  static MediaRatingEgressEnum valueOf(String name) =>
      _$mediaRatingEgressEnumValueOf(name);
}
