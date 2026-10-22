//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_collection_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_collection_path.g.dart';

/// One collection path of an adapter
///
/// Properties:
/// * [path]
/// * [collectionType]
/// * [enabled]
/// * [feedsBaselines] - True only for complete and paged paths
@BuiltValue()
abstract class SocialCollectionPath
    implements Built<SocialCollectionPath, SocialCollectionPathBuilder> {
  @BuiltValueField(wireName: r'path')
  SocialCollectionPathPathEnum get path;
  // enum pathEnum {  stream,  replay,  search,  counts,  trends,  channel-poll,  account-poll,  hashtag-search,  cue,  };

  @BuiltValueField(wireName: r'collectionType')
  SocialCollectionType get collectionType;
  // enum collectionTypeEnum {  complete,  paged,  sampled,  };

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// True only for complete and paged paths
  @BuiltValueField(wireName: r'feedsBaselines')
  bool get feedsBaselines;

  SocialCollectionPath._();

  factory SocialCollectionPath([void updates(SocialCollectionPathBuilder b)]) =
      _$SocialCollectionPath;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCollectionPathBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCollectionPath> get serializer =>
      _$SocialCollectionPathSerializer();
}

class _$SocialCollectionPathSerializer
    implements PrimitiveSerializer<SocialCollectionPath> {
  @override
  final Iterable<Type> types = const [
    SocialCollectionPath,
    _$SocialCollectionPath
  ];

  @override
  final String wireName = r'SocialCollectionPath';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCollectionPath object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(SocialCollectionPathPathEnum),
    );
    yield r'collectionType';
    yield serializers.serialize(
      object.collectionType,
      specifiedType: const FullType(SocialCollectionType),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'feedsBaselines';
    yield serializers.serialize(
      object.feedsBaselines,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCollectionPath object, {
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
    required SocialCollectionPathBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialCollectionPathPathEnum),
          ) as SocialCollectionPathPathEnum;
          result.path = valueDes;
          break;
        case r'collectionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialCollectionType),
          ) as SocialCollectionType;
          result.collectionType = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'feedsBaselines':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.feedsBaselines = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCollectionPath deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCollectionPathBuilder();
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

class SocialCollectionPathPathEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'stream')
  static const SocialCollectionPathPathEnum stream =
      _$socialCollectionPathPathEnum_stream;
  @BuiltValueEnumConst(wireName: r'replay')
  static const SocialCollectionPathPathEnum replay =
      _$socialCollectionPathPathEnum_replay;
  @BuiltValueEnumConst(wireName: r'search')
  static const SocialCollectionPathPathEnum search =
      _$socialCollectionPathPathEnum_search;
  @BuiltValueEnumConst(wireName: r'counts')
  static const SocialCollectionPathPathEnum counts =
      _$socialCollectionPathPathEnum_counts;
  @BuiltValueEnumConst(wireName: r'trends')
  static const SocialCollectionPathPathEnum trends =
      _$socialCollectionPathPathEnum_trends;
  @BuiltValueEnumConst(wireName: r'channel-poll')
  static const SocialCollectionPathPathEnum channelPoll =
      _$socialCollectionPathPathEnum_channelPoll;
  @BuiltValueEnumConst(wireName: r'account-poll')
  static const SocialCollectionPathPathEnum accountPoll =
      _$socialCollectionPathPathEnum_accountPoll;
  @BuiltValueEnumConst(wireName: r'hashtag-search')
  static const SocialCollectionPathPathEnum hashtagSearch =
      _$socialCollectionPathPathEnum_hashtagSearch;
  @BuiltValueEnumConst(wireName: r'cue')
  static const SocialCollectionPathPathEnum cue =
      _$socialCollectionPathPathEnum_cue;

  static Serializer<SocialCollectionPathPathEnum> get serializer =>
      _$socialCollectionPathPathEnumSerializer;

  const SocialCollectionPathPathEnum._(String name) : super(name);

  static BuiltSet<SocialCollectionPathPathEnum> get values =>
      _$socialCollectionPathPathEnumValues;
  static SocialCollectionPathPathEnum valueOf(String name) =>
      _$socialCollectionPathPathEnumValueOf(name);
}
