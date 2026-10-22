//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_outlet_patch.g.dart';

/// JSON merge patch for an outlet (admin)
///
/// Properties:
/// * [name]
/// * [type]
/// * [ownerOrg]
/// * [parentOrg]
/// * [wikidataQid]
/// * [domains] - Replaces the domain list
/// * [mergeOutletIds] - Merge these outlets (and their domains and ratings) into this one
/// * [aggregates] - Wire originators this outlet syndicates (empty: any wire); used to group reprints (133)
@BuiltValue()
abstract class MediaOutletPatch
    implements Built<MediaOutletPatch, MediaOutletPatchBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  MediaOutletPatchTypeEnum? get type;
  // enum typeEnum {  wire,  national,  regional,  local,  public-broadcaster,  state-affiliated,  aggregator,  blog,  official,  other,  };

  @BuiltValueField(wireName: r'ownerOrg')
  String? get ownerOrg;

  @BuiltValueField(wireName: r'parentOrg')
  String? get parentOrg;

  @BuiltValueField(wireName: r'wikidataQid')
  String? get wikidataQid;

  /// Replaces the domain list
  @BuiltValueField(wireName: r'domains')
  BuiltList<String>? get domains;

  /// Merge these outlets (and their domains and ratings) into this one
  @BuiltValueField(wireName: r'mergeOutletIds')
  BuiltList<String>? get mergeOutletIds;

  /// Wire originators this outlet syndicates (empty: any wire); used to group reprints (133)
  @BuiltValueField(wireName: r'aggregates')
  BuiltList<String>? get aggregates;

  MediaOutletPatch._();

  factory MediaOutletPatch([void updates(MediaOutletPatchBuilder b)]) =
      _$MediaOutletPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaOutletPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaOutletPatch> get serializer =>
      _$MediaOutletPatchSerializer();
}

class _$MediaOutletPatchSerializer
    implements PrimitiveSerializer<MediaOutletPatch> {
  @override
  final Iterable<Type> types = const [MediaOutletPatch, _$MediaOutletPatch];

  @override
  final String wireName = r'MediaOutletPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaOutletPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(MediaOutletPatchTypeEnum),
      );
    }
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
    if (object.domains != null) {
      yield r'domains';
      yield serializers.serialize(
        object.domains,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mergeOutletIds != null) {
      yield r'mergeOutletIds';
      yield serializers.serialize(
        object.mergeOutletIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.aggregates != null) {
      yield r'aggregates';
      yield serializers.serialize(
        object.aggregates,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaOutletPatch object, {
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
    required MediaOutletPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MediaOutletPatchTypeEnum),
          ) as MediaOutletPatchTypeEnum?;
          if (valueDes == null) continue;
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
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.domains.replace(valueDes);
          break;
        case r'mergeOutletIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mergeOutletIds.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaOutletPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaOutletPatchBuilder();
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

class MediaOutletPatchTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wire')
  static const MediaOutletPatchTypeEnum wire = _$mediaOutletPatchTypeEnum_wire;
  @BuiltValueEnumConst(wireName: r'national')
  static const MediaOutletPatchTypeEnum national =
      _$mediaOutletPatchTypeEnum_national;
  @BuiltValueEnumConst(wireName: r'regional')
  static const MediaOutletPatchTypeEnum regional =
      _$mediaOutletPatchTypeEnum_regional;
  @BuiltValueEnumConst(wireName: r'local')
  static const MediaOutletPatchTypeEnum local =
      _$mediaOutletPatchTypeEnum_local;
  @BuiltValueEnumConst(wireName: r'public-broadcaster')
  static const MediaOutletPatchTypeEnum publicBroadcaster =
      _$mediaOutletPatchTypeEnum_publicBroadcaster;
  @BuiltValueEnumConst(wireName: r'state-affiliated')
  static const MediaOutletPatchTypeEnum stateAffiliated =
      _$mediaOutletPatchTypeEnum_stateAffiliated;
  @BuiltValueEnumConst(wireName: r'aggregator')
  static const MediaOutletPatchTypeEnum aggregator =
      _$mediaOutletPatchTypeEnum_aggregator;
  @BuiltValueEnumConst(wireName: r'blog')
  static const MediaOutletPatchTypeEnum blog = _$mediaOutletPatchTypeEnum_blog;
  @BuiltValueEnumConst(wireName: r'official')
  static const MediaOutletPatchTypeEnum official =
      _$mediaOutletPatchTypeEnum_official;
  @BuiltValueEnumConst(wireName: r'other')
  static const MediaOutletPatchTypeEnum other =
      _$mediaOutletPatchTypeEnum_other;

  static Serializer<MediaOutletPatchTypeEnum> get serializer =>
      _$mediaOutletPatchTypeEnumSerializer;

  const MediaOutletPatchTypeEnum._(String name) : super(name);

  static BuiltSet<MediaOutletPatchTypeEnum> get values =>
      _$mediaOutletPatchTypeEnumValues;
  static MediaOutletPatchTypeEnum valueOf(String name) =>
      _$mediaOutletPatchTypeEnumValueOf(name);
}
