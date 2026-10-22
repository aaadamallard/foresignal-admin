//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/indicator_signal_series_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_signal_series.g.dart';

/// Series condition or change point
///
/// Properties:
/// * [ref] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [condition]
/// * [changePoint]
/// * [direction]
@BuiltValue()
abstract class IndicatorSignalSeries
    implements Built<IndicatorSignalSeries, IndicatorSignalSeriesBuilder> {
  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'condition')
  IndicatorSignalSeriesCondition? get condition;

  @BuiltValueField(wireName: r'changePoint')
  bool? get changePoint;

  @BuiltValueField(wireName: r'direction')
  IndicatorSignalSeriesDirectionEnum? get direction;
  // enum directionEnum {  up,  down,  any,  };

  IndicatorSignalSeries._();

  factory IndicatorSignalSeries(
      [void updates(IndicatorSignalSeriesBuilder b)]) = _$IndicatorSignalSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorSignalSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorSignalSeries> get serializer =>
      _$IndicatorSignalSeriesSerializer();
}

class _$IndicatorSignalSeriesSerializer
    implements PrimitiveSerializer<IndicatorSignalSeries> {
  @override
  final Iterable<Type> types = const [
    IndicatorSignalSeries,
    _$IndicatorSignalSeries
  ];

  @override
  final String wireName = r'IndicatorSignalSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorSignalSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.condition != null) {
      yield r'condition';
      yield serializers.serialize(
        object.condition,
        specifiedType: const FullType.nullable(IndicatorSignalSeriesCondition),
      );
    }
    if (object.changePoint != null) {
      yield r'changePoint';
      yield serializers.serialize(
        object.changePoint,
        specifiedType: const FullType(bool),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType:
            const FullType.nullable(IndicatorSignalSeriesDirectionEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorSignalSeries object, {
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
    required IndicatorSignalSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'condition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(IndicatorSignalSeriesCondition),
          ) as IndicatorSignalSeriesCondition?;
          if (valueDes == null) continue;
          result.condition.replace(valueDes);
          break;
        case r'changePoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.changePoint = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(IndicatorSignalSeriesDirectionEnum),
          ) as IndicatorSignalSeriesDirectionEnum?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorSignalSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorSignalSeriesBuilder();
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

class IndicatorSignalSeriesDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'up')
  static const IndicatorSignalSeriesDirectionEnum up =
      _$indicatorSignalSeriesDirectionEnum_up;
  @BuiltValueEnumConst(wireName: r'down')
  static const IndicatorSignalSeriesDirectionEnum down =
      _$indicatorSignalSeriesDirectionEnum_down;
  @BuiltValueEnumConst(wireName: r'any')
  static const IndicatorSignalSeriesDirectionEnum any =
      _$indicatorSignalSeriesDirectionEnum_any;

  static Serializer<IndicatorSignalSeriesDirectionEnum> get serializer =>
      _$indicatorSignalSeriesDirectionEnumSerializer;

  const IndicatorSignalSeriesDirectionEnum._(String name) : super(name);

  static BuiltSet<IndicatorSignalSeriesDirectionEnum> get values =>
      _$indicatorSignalSeriesDirectionEnumValues;
  static IndicatorSignalSeriesDirectionEnum valueOf(String name) =>
      _$indicatorSignalSeriesDirectionEnumValueOf(name);
}
