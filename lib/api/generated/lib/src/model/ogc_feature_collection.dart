//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/ogc_feature.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_feature_collection.g.dart';

/// OGC API items response (GeoJSON FeatureCollection with links) (112)
///
/// Properties:
/// * [type]
/// * [features]
/// * [links] - self, next (opaque keyset cursor), collection
/// * [numberReturned]
/// * [numberMatched] - Only when count=true and at most 100,000
/// * [timeStamp]
/// * [attributions]
/// * [licenceFiltered]
@BuiltValue()
abstract class OgcFeatureCollection
    implements Built<OgcFeatureCollection, OgcFeatureCollectionBuilder> {
  @BuiltValueField(wireName: r'type')
  OgcFeatureCollectionTypeEnum get type;
  // enum typeEnum {  FeatureCollection,  };

  @BuiltValueField(wireName: r'features')
  BuiltList<OgcFeature> get features;

  /// self, next (opaque keyset cursor), collection
  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  @BuiltValueField(wireName: r'numberReturned')
  int get numberReturned;

  /// Only when count=true and at most 100,000
  @BuiltValueField(wireName: r'numberMatched')
  int? get numberMatched;

  @BuiltValueField(wireName: r'timeStamp')
  DateTime get timeStamp;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution>? get attributions;

  @BuiltValueField(wireName: r'licenceFiltered')
  int? get licenceFiltered;

  OgcFeatureCollection._();

  factory OgcFeatureCollection([void updates(OgcFeatureCollectionBuilder b)]) =
      _$OgcFeatureCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcFeatureCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcFeatureCollection> get serializer =>
      _$OgcFeatureCollectionSerializer();
}

class _$OgcFeatureCollectionSerializer
    implements PrimitiveSerializer<OgcFeatureCollection> {
  @override
  final Iterable<Type> types = const [
    OgcFeatureCollection,
    _$OgcFeatureCollection
  ];

  @override
  final String wireName = r'OgcFeatureCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcFeatureCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OgcFeatureCollectionTypeEnum),
    );
    yield r'features';
    yield serializers.serialize(
      object.features,
      specifiedType: const FullType(BuiltList, [FullType(OgcFeature)]),
    );
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
    );
    yield r'numberReturned';
    yield serializers.serialize(
      object.numberReturned,
      specifiedType: const FullType(int),
    );
    if (object.numberMatched != null) {
      yield r'numberMatched';
      yield serializers.serialize(
        object.numberMatched,
        specifiedType: const FullType(int),
      );
    }
    yield r'timeStamp';
    yield serializers.serialize(
      object.timeStamp,
      specifiedType: const FullType(DateTime),
    );
    if (object.attributions != null) {
      yield r'attributions';
      yield serializers.serialize(
        object.attributions,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.licenceFiltered != null) {
      yield r'licenceFiltered';
      yield serializers.serialize(
        object.licenceFiltered,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcFeatureCollection object, {
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
    required OgcFeatureCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OgcFeatureCollectionTypeEnum),
          ) as OgcFeatureCollectionTypeEnum;
          result.type = valueDes;
          break;
        case r'features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OgcFeature)]),
          ) as BuiltList<OgcFeature>;
          result.features.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
          ) as BuiltList<OgcLink>;
          result.links.replace(valueDes);
          break;
        case r'numberReturned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numberReturned = valueDes;
          break;
        case r'numberMatched':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numberMatched = valueDes;
          break;
        case r'timeStamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timeStamp = valueDes;
          break;
        case r'attributions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Attribution)]),
          ) as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attributions.replace(valueDes);
          break;
        case r'licenceFiltered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.licenceFiltered = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcFeatureCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcFeatureCollectionBuilder();
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

class OgcFeatureCollectionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FeatureCollection')
  static const OgcFeatureCollectionTypeEnum featureCollection =
      _$ogcFeatureCollectionTypeEnum_featureCollection;

  static Serializer<OgcFeatureCollectionTypeEnum> get serializer =>
      _$ogcFeatureCollectionTypeEnumSerializer;

  const OgcFeatureCollectionTypeEnum._(String name) : super(name);

  static BuiltSet<OgcFeatureCollectionTypeEnum> get values =>
      _$ogcFeatureCollectionTypeEnumValues;
  static OgcFeatureCollectionTypeEnum valueOf(String name) =>
      _$ogcFeatureCollectionTypeEnumValueOf(name);
}
