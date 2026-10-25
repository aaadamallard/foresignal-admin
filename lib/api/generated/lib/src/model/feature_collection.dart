//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/feature.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feature_collection.g.dart';

/// FeatureCollection
///
/// Properties:
/// * [type]
/// * [features]
/// * [nextCursor]
/// * [attributions] - Foreign member: aggregated attributions
/// * [watermarkSeq] - ChangeBus.lastPublishedSeq() read before the query; open SSE with after=watermarkSeq
/// * [asOfSeq] - Echo of the pinned snapshot seq (asOfSeq or order=id)
/// * [asOf] - Echo of asOf
/// * [approximate] - asOf only: true when a source is SAMPLED/LATEST or the range is downsampled
/// * [horizon] - asOf only: earliest supported T over the involved sources
/// * [licenceFiltered]
@BuiltValue()
abstract class FeatureCollection
    implements Built<FeatureCollection, FeatureCollectionBuilder> {
  @BuiltValueField(wireName: r'type')
  FeatureCollectionTypeEnum get type;
  // enum typeEnum {  FeatureCollection,  };

  @BuiltValueField(wireName: r'features')
  BuiltList<Feature> get features;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  /// Foreign member: aggregated attributions
  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution>? get attributions;

  /// ChangeBus.lastPublishedSeq() read before the query; open SSE with after=watermarkSeq
  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  /// Echo of the pinned snapshot seq (asOfSeq or order=id)
  @BuiltValueField(wireName: r'asOfSeq')
  int? get asOfSeq;

  /// Echo of asOf
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// asOf only: true when a source is SAMPLED/LATEST or the range is downsampled
  @BuiltValueField(wireName: r'approximate')
  bool? get approximate;

  /// asOf only: earliest supported T over the involved sources
  @BuiltValueField(wireName: r'horizon')
  DateTime? get horizon;

  @BuiltValueField(wireName: r'licenceFiltered')
  int? get licenceFiltered;

  FeatureCollection._();

  factory FeatureCollection([void updates(FeatureCollectionBuilder b)]) =
      _$FeatureCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeatureCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeatureCollection> get serializer =>
      _$FeatureCollectionSerializer();
}

class _$FeatureCollectionSerializer
    implements PrimitiveSerializer<FeatureCollection> {
  @override
  final Iterable<Type> types = const [FeatureCollection, _$FeatureCollection];

  @override
  final String wireName = r'FeatureCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeatureCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(FeatureCollectionTypeEnum),
    );
    yield r'features';
    yield serializers.serialize(
      object.features,
      specifiedType: const FullType(BuiltList, [FullType(Feature)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attributions != null) {
      yield r'attributions';
      yield serializers.serialize(
        object.attributions,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.asOfSeq != null) {
      yield r'asOfSeq';
      yield serializers.serialize(
        object.asOfSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.approximate != null) {
      yield r'approximate';
      yield serializers.serialize(
        object.approximate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType.nullable(DateTime),
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
    FeatureCollection object, {
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
    required FeatureCollectionBuilder result,
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
                    specifiedType: const FullType(FeatureCollectionTypeEnum),
                  )
                  as FeatureCollectionTypeEnum;
          result.type = valueDes;
          break;
        case r'features':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Feature),
                    ]),
                  )
                  as BuiltList<Feature>;
          result.features.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attributions.replace(valueDes);
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
          break;
        case r'asOfSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.asOfSeq = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'approximate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.approximate = valueDes;
          break;
        case r'horizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
          break;
        case r'licenceFiltered':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
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
  FeatureCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeatureCollectionBuilder();
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

class FeatureCollectionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FeatureCollection')
  static const FeatureCollectionTypeEnum featureCollection =
      _$featureCollectionTypeEnum_featureCollection;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FeatureCollectionTypeEnum unknownDefaultOpenApi =
      _$featureCollectionTypeEnum_unknownDefaultOpenApi;

  static Serializer<FeatureCollectionTypeEnum> get serializer =>
      _$featureCollectionTypeEnumSerializer;

  const FeatureCollectionTypeEnum._(String name) : super(name);

  static BuiltSet<FeatureCollectionTypeEnum> get values =>
      _$featureCollectionTypeEnumValues;
  static FeatureCollectionTypeEnum valueOf(String name) =>
      _$featureCollectionTypeEnumValueOf(name);
}
