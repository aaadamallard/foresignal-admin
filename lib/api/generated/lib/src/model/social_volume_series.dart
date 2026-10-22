//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_collection_type.dart';
import 'package:foresignal_api/src/model/social_volume_point.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_volume_series.g.dart';

/// One platform (and language) series of a scope
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [language]
/// * [seriesRef] - 119 analysis-series registry id `social:{scope}/{platform}/{metric}`
/// * [collectionType]
/// * [baselineEligible] - False for sampled paths (no baseline, no velocity)
/// * [points]
@BuiltValue()
abstract class SocialVolumeSeries
    implements Built<SocialVolumeSeries, SocialVolumeSeriesBuilder> {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'language')
  String? get language;

  /// 119 analysis-series registry id `social:{scope}/{platform}/{metric}`
  @BuiltValueField(wireName: r'seriesRef')
  String get seriesRef;

  @BuiltValueField(wireName: r'collectionType')
  SocialCollectionType get collectionType;
  // enum collectionTypeEnum {  complete,  paged,  sampled,  };

  /// False for sampled paths (no baseline, no velocity)
  @BuiltValueField(wireName: r'baselineEligible')
  bool get baselineEligible;

  @BuiltValueField(wireName: r'points')
  BuiltList<SocialVolumePoint> get points;

  SocialVolumeSeries._();

  factory SocialVolumeSeries([void updates(SocialVolumeSeriesBuilder b)]) =
      _$SocialVolumeSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVolumeSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVolumeSeries> get serializer =>
      _$SocialVolumeSeriesSerializer();
}

class _$SocialVolumeSeriesSerializer
    implements PrimitiveSerializer<SocialVolumeSeries> {
  @override
  final Iterable<Type> types = const [SocialVolumeSeries, _$SocialVolumeSeries];

  @override
  final String wireName = r'SocialVolumeSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVolumeSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'seriesRef';
    yield serializers.serialize(
      object.seriesRef,
      specifiedType: const FullType(String),
    );
    yield r'collectionType';
    yield serializers.serialize(
      object.collectionType,
      specifiedType: const FullType(SocialCollectionType),
    );
    yield r'baselineEligible';
    yield serializers.serialize(
      object.baselineEligible,
      specifiedType: const FullType(bool),
    );
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [FullType(SocialVolumePoint)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialVolumeSeries object, {
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
    required SocialVolumeSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.platform = valueDes;
          break;
        case r'language':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'seriesRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.seriesRef = valueDes;
          break;
        case r'collectionType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialCollectionType),
                  )
                  as SocialCollectionType;
          result.collectionType = valueDes;
          break;
        case r'baselineEligible':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.baselineEligible = valueDes;
          break;
        case r'points':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SocialVolumePoint),
                    ]),
                  )
                  as BuiltList<SocialVolumePoint>;
          result.points.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialVolumeSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVolumeSeriesBuilder();
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
