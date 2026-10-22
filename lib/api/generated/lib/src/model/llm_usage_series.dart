//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/llm_usage_point.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_usage_series.g.dart';

/// LlmUsageSeries
///
/// Properties:
/// * [provider]
/// * [resolution]
/// * [points]
/// * [totals]
@BuiltValue()
abstract class LlmUsageSeries
    implements Built<LlmUsageSeries, LlmUsageSeriesBuilder> {
  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'resolution')
  LlmUsageSeriesResolutionEnum get resolution;
  // enum resolutionEnum {  minute,  hour,  day,  };

  @BuiltValueField(wireName: r'points')
  BuiltList<LlmUsagePoint> get points;

  @BuiltValueField(wireName: r'totals')
  LlmUsagePoint? get totals;

  LlmUsageSeries._();

  factory LlmUsageSeries([void updates(LlmUsageSeriesBuilder b)]) =
      _$LlmUsageSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmUsageSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmUsageSeries> get serializer =>
      _$LlmUsageSeriesSerializer();
}

class _$LlmUsageSeriesSerializer
    implements PrimitiveSerializer<LlmUsageSeries> {
  @override
  final Iterable<Type> types = const [LlmUsageSeries, _$LlmUsageSeries];

  @override
  final String wireName = r'LlmUsageSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmUsageSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'resolution';
    yield serializers.serialize(
      object.resolution,
      specifiedType: const FullType(LlmUsageSeriesResolutionEnum),
    );
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [FullType(LlmUsagePoint)]),
    );
    if (object.totals != null) {
      yield r'totals';
      yield serializers.serialize(
        object.totals,
        specifiedType: const FullType(LlmUsagePoint),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmUsageSeries object, {
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
    required LlmUsageSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.provider = valueDes;
          break;
        case r'resolution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LlmUsageSeriesResolutionEnum),
          ) as LlmUsageSeriesResolutionEnum;
          result.resolution = valueDes;
          break;
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LlmUsagePoint)]),
          ) as BuiltList<LlmUsagePoint>;
          result.points.replace(valueDes);
          break;
        case r'totals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LlmUsagePoint),
          ) as LlmUsagePoint?;
          if (valueDes == null) continue;
          result.totals.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmUsageSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmUsageSeriesBuilder();
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

class LlmUsageSeriesResolutionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'minute')
  static const LlmUsageSeriesResolutionEnum minute =
      _$llmUsageSeriesResolutionEnum_minute;
  @BuiltValueEnumConst(wireName: r'hour')
  static const LlmUsageSeriesResolutionEnum hour =
      _$llmUsageSeriesResolutionEnum_hour;
  @BuiltValueEnumConst(wireName: r'day')
  static const LlmUsageSeriesResolutionEnum day =
      _$llmUsageSeriesResolutionEnum_day;

  static Serializer<LlmUsageSeriesResolutionEnum> get serializer =>
      _$llmUsageSeriesResolutionEnumSerializer;

  const LlmUsageSeriesResolutionEnum._(String name) : super(name);

  static BuiltSet<LlmUsageSeriesResolutionEnum> get values =>
      _$llmUsageSeriesResolutionEnumValues;
  static LlmUsageSeriesResolutionEnum valueOf(String name) =>
      _$llmUsageSeriesResolutionEnumValueOf(name);
}
