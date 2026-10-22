//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/media_rating.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/outlet_consensus.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_outlet.g.dart';

/// A news outlet in the registry with ratings per provider and consensus
///
/// Properties:
/// * [id]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [name]
/// * [domains]
/// * [country] - ISO 3166-1 alpha-2
/// * [languages]
/// * [type]
/// * [ownerOrg] - Organisation name only
/// * [parentOrg]
/// * [wikidataQid]
/// * [originatorId] - 116 originator; wires map to their own
/// * [aggregates] - Wire originators this outlet syndicates
/// * [rated] - False for `unrated` outlets added from unknown domains
/// * [ratings] - Detail view only
/// * [consensus]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class MediaOutlet implements Built<MediaOutlet, MediaOutletBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'domains')
  BuiltList<String> get domains;

  /// ISO 3166-1 alpha-2
  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'languages')
  BuiltList<String>? get languages;

  @BuiltValueField(wireName: r'type')
  MediaOutletTypeEnum get type;
  // enum typeEnum {  wire,  national,  regional,  local,  public-broadcaster,  state-affiliated,  aggregator,  blog,  official,  other,  };

  /// Organisation name only
  @BuiltValueField(wireName: r'ownerOrg')
  String? get ownerOrg;

  @BuiltValueField(wireName: r'parentOrg')
  String? get parentOrg;

  @BuiltValueField(wireName: r'wikidataQid')
  String? get wikidataQid;

  /// 116 originator; wires map to their own
  @BuiltValueField(wireName: r'originatorId')
  String? get originatorId;

  /// Wire originators this outlet syndicates
  @BuiltValueField(wireName: r'aggregates')
  BuiltList<String>? get aggregates;

  /// False for `unrated` outlets added from unknown domains
  @BuiltValueField(wireName: r'rated')
  bool get rated;

  /// Detail view only
  @BuiltValueField(wireName: r'ratings')
  BuiltList<MediaRating>? get ratings;

  @BuiltValueField(wireName: r'consensus')
  BuiltList<OutletConsensus> get consensus;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  MediaOutlet._();

  factory MediaOutlet([void updates(MediaOutletBuilder b)]) = _$MediaOutlet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaOutletBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaOutlet> get serializer => _$MediaOutletSerializer();
}

class _$MediaOutletSerializer implements PrimitiveSerializer<MediaOutlet> {
  @override
  final Iterable<Type> types = const [MediaOutlet, _$MediaOutlet];

  @override
  final String wireName = r'MediaOutlet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaOutlet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'domains';
    yield serializers.serialize(
      object.domains,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MediaOutletTypeEnum),
    );
    if (object.ownerOrg != null) {
      yield r'ownerOrg';
      yield serializers.serialize(
        object.ownerOrg,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.parentOrg != null) {
      yield r'parentOrg';
      yield serializers.serialize(
        object.parentOrg,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.wikidataQid != null) {
      yield r'wikidataQid';
      yield serializers.serialize(
        object.wikidataQid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.originatorId != null) {
      yield r'originatorId';
      yield serializers.serialize(
        object.originatorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.aggregates != null) {
      yield r'aggregates';
      yield serializers.serialize(
        object.aggregates,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'rated';
    yield serializers.serialize(
      object.rated,
      specifiedType: const FullType(bool),
    );
    if (object.ratings != null) {
      yield r'ratings';
      yield serializers.serialize(
        object.ratings,
        specifiedType: const FullType(BuiltList, [FullType(MediaRating)]),
      );
    }
    yield r'consensus';
    yield serializers.serialize(
      object.consensus,
      specifiedType: const FullType(BuiltList, [FullType(OutletConsensus)]),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaOutlet object, {
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
    required MediaOutletBuilder result,
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
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.domains.replace(valueDes);
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.country = valueDes;
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaOutletTypeEnum),
          ) as MediaOutletTypeEnum;
          result.type = valueDes;
          break;
        case r'ownerOrg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerOrg = valueDes;
          break;
        case r'parentOrg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentOrg = valueDes;
          break;
        case r'wikidataQid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.wikidataQid = valueDes;
          break;
        case r'originatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originatorId = valueDes;
          break;
        case r'aggregates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.aggregates.replace(valueDes);
          break;
        case r'rated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.rated = valueDes;
          break;
        case r'ratings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(MediaRating)]),
          ) as BuiltList<MediaRating>?;
          if (valueDes == null) continue;
          result.ratings.replace(valueDes);
          break;
        case r'consensus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(OutletConsensus)]),
          ) as BuiltList<OutletConsensus>;
          result.consensus.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
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
  MediaOutlet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaOutletBuilder();
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

class MediaOutletTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wire')
  static const MediaOutletTypeEnum wire = _$mediaOutletTypeEnum_wire;
  @BuiltValueEnumConst(wireName: r'national')
  static const MediaOutletTypeEnum national = _$mediaOutletTypeEnum_national;
  @BuiltValueEnumConst(wireName: r'regional')
  static const MediaOutletTypeEnum regional = _$mediaOutletTypeEnum_regional;
  @BuiltValueEnumConst(wireName: r'local')
  static const MediaOutletTypeEnum local = _$mediaOutletTypeEnum_local;
  @BuiltValueEnumConst(wireName: r'public-broadcaster')
  static const MediaOutletTypeEnum publicBroadcaster =
      _$mediaOutletTypeEnum_publicBroadcaster;
  @BuiltValueEnumConst(wireName: r'state-affiliated')
  static const MediaOutletTypeEnum stateAffiliated =
      _$mediaOutletTypeEnum_stateAffiliated;
  @BuiltValueEnumConst(wireName: r'aggregator')
  static const MediaOutletTypeEnum aggregator =
      _$mediaOutletTypeEnum_aggregator;
  @BuiltValueEnumConst(wireName: r'blog')
  static const MediaOutletTypeEnum blog = _$mediaOutletTypeEnum_blog;
  @BuiltValueEnumConst(wireName: r'official')
  static const MediaOutletTypeEnum official = _$mediaOutletTypeEnum_official;
  @BuiltValueEnumConst(wireName: r'other')
  static const MediaOutletTypeEnum other = _$mediaOutletTypeEnum_other;

  static Serializer<MediaOutletTypeEnum> get serializer =>
      _$mediaOutletTypeEnumSerializer;

  const MediaOutletTypeEnum._(String name) : super(name);

  static BuiltSet<MediaOutletTypeEnum> get values =>
      _$mediaOutletTypeEnumValues;
  static MediaOutletTypeEnum valueOf(String name) =>
      _$mediaOutletTypeEnumValueOf(name);
}
