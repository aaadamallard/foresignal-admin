//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/social_volume_series.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:foresignal_api/src/model/social_volume_scope.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_volume.g.dart';

/// Hourly mention volume of a topic, place or entity per platform with seasonal, denominator-scaled baselines (`SocialBaseline` 1.0.0)
///
/// Properties:
/// * [scope]
/// * [metric]
/// * [interval]
/// * [since]
/// * [until]
/// * [series]
/// * [baseline]
/// * [caveats]
@BuiltValue()
abstract class SocialVolume
    implements Built<SocialVolume, SocialVolumeBuilder> {
  @BuiltValueField(wireName: r'scope')
  SocialVolumeScope get scope;

  @BuiltValueField(wireName: r'metric')
  SocialVolumeMetricEnum get metric;
  // enum metricEnum {  posts,  uniqueAuthors,  reposts,  engagement,  denominator,  };

  @BuiltValueField(wireName: r'interval')
  SocialVolumeIntervalEnum get interval;
  // enum intervalEnum {  PT1H,  P1D,  };

  @BuiltValueField(wireName: r'since')
  DateTime get since;

  @BuiltValueField(wireName: r'until')
  DateTime get until;

  @BuiltValueField(wireName: r'series')
  BuiltList<SocialVolumeSeries> get series;

  @BuiltValueField(wireName: r'baseline')
  DetectorRef get baseline;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  SocialVolume._();

  factory SocialVolume([void updates(SocialVolumeBuilder b)]) = _$SocialVolume;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVolumeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVolume> get serializer => _$SocialVolumeSerializer();
}

class _$SocialVolumeSerializer implements PrimitiveSerializer<SocialVolume> {
  @override
  final Iterable<Type> types = const [SocialVolume, _$SocialVolume];

  @override
  final String wireName = r'SocialVolume';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVolume object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(SocialVolumeScope),
    );
    yield r'metric';
    yield serializers.serialize(
      object.metric,
      specifiedType: const FullType(SocialVolumeMetricEnum),
    );
    yield r'interval';
    yield serializers.serialize(
      object.interval,
      specifiedType: const FullType(SocialVolumeIntervalEnum),
    );
    yield r'since';
    yield serializers.serialize(
      object.since,
      specifiedType: const FullType(DateTime),
    );
    yield r'until';
    yield serializers.serialize(
      object.until,
      specifiedType: const FullType(DateTime),
    );
    yield r'series';
    yield serializers.serialize(
      object.series,
      specifiedType: const FullType(BuiltList, [FullType(SocialVolumeSeries)]),
    );
    yield r'baseline';
    yield serializers.serialize(
      object.baseline,
      specifiedType: const FullType(DetectorRef),
    );
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialVolume object, {
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
    required SocialVolumeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialVolumeScope),
          ) as SocialVolumeScope;
          result.scope.replace(valueDes);
          break;
        case r'metric':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialVolumeMetricEnum),
          ) as SocialVolumeMetricEnum;
          result.metric = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialVolumeIntervalEnum),
          ) as SocialVolumeIntervalEnum;
          result.interval = valueDes;
          break;
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.since = valueDes;
          break;
        case r'until':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.until = valueDes;
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(SocialVolumeSeries)]),
          ) as BuiltList<SocialVolumeSeries>;
          result.series.replace(valueDes);
          break;
        case r'baseline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetectorRef),
          ) as DetectorRef;
          result.baseline.replace(valueDes);
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialVolume deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVolumeBuilder();
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

class SocialVolumeMetricEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'posts')
  static const SocialVolumeMetricEnum posts = _$socialVolumeMetricEnum_posts;
  @BuiltValueEnumConst(wireName: r'uniqueAuthors')
  static const SocialVolumeMetricEnum uniqueAuthors =
      _$socialVolumeMetricEnum_uniqueAuthors;
  @BuiltValueEnumConst(wireName: r'reposts')
  static const SocialVolumeMetricEnum reposts =
      _$socialVolumeMetricEnum_reposts;
  @BuiltValueEnumConst(wireName: r'engagement')
  static const SocialVolumeMetricEnum engagement =
      _$socialVolumeMetricEnum_engagement;
  @BuiltValueEnumConst(wireName: r'denominator')
  static const SocialVolumeMetricEnum denominator =
      _$socialVolumeMetricEnum_denominator;

  static Serializer<SocialVolumeMetricEnum> get serializer =>
      _$socialVolumeMetricEnumSerializer;

  const SocialVolumeMetricEnum._(String name) : super(name);

  static BuiltSet<SocialVolumeMetricEnum> get values =>
      _$socialVolumeMetricEnumValues;
  static SocialVolumeMetricEnum valueOf(String name) =>
      _$socialVolumeMetricEnumValueOf(name);
}

class SocialVolumeIntervalEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PT1H')
  static const SocialVolumeIntervalEnum PT1H = _$socialVolumeIntervalEnum_PT1H;
  @BuiltValueEnumConst(wireName: r'P1D')
  static const SocialVolumeIntervalEnum P1D = _$socialVolumeIntervalEnum_P1D;

  static Serializer<SocialVolumeIntervalEnum> get serializer =>
      _$socialVolumeIntervalEnumSerializer;

  const SocialVolumeIntervalEnum._(String name) : super(name);

  static BuiltSet<SocialVolumeIntervalEnum> get values =>
      _$socialVolumeIntervalEnumValues;
  static SocialVolumeIntervalEnum valueOf(String name) =>
      _$socialVolumeIntervalEnumValueOf(name);
}
