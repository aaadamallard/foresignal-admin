//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/series_point.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_data.g.dart';

/// Points of one series read through the `SeriesReader`, with explicit gaps
///
/// Properties:
/// * [ref] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [from]
/// * [to]
/// * [asOf] - Knowledge cutoff applied: only points with `knownAt` ≤ asOf
/// * [frequency]
/// * [unit]
/// * [family] - 117 series family or 119 signal family
/// * [valuesWithheld] - True when raw values are withheld (`LOCAL_ONLY` source and no local egress)
/// * [points]
/// * [gaps] - Periods with no point or no coverage
@BuiltValue()
abstract class SeriesData implements Built<SeriesData, SeriesDataBuilder> {
  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  /// Knowledge cutoff applied: only points with `knownAt` ≤ asOf
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'frequency')
  SeriesDataFrequencyEnum get frequency;
  // enum frequencyEnum {  hour,  day,  week,  month,  irregular,  };

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  /// 117 series family or 119 signal family
  @BuiltValueField(wireName: r'family')
  String? get family;

  /// True when raw values are withheld (`LOCAL_ONLY` source and no local egress)
  @BuiltValueField(wireName: r'valuesWithheld')
  bool get valuesWithheld;

  @BuiltValueField(wireName: r'points')
  BuiltList<SeriesPoint> get points;

  /// Periods with no point or no coverage
  @BuiltValueField(wireName: r'gaps')
  BuiltList<TimeRange> get gaps;

  SeriesData._();

  factory SeriesData([void updates(SeriesDataBuilder b)]) = _$SeriesData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesData> get serializer => _$SeriesDataSerializer();
}

class _$SeriesDataSerializer implements PrimitiveSerializer<SeriesData> {
  @override
  final Iterable<Type> types = const [SeriesData, _$SeriesData];

  @override
  final String wireName = r'SeriesData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(SeriesDataFrequencyEnum),
    );
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.family != null) {
      yield r'family';
      yield serializers.serialize(
        object.family,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'valuesWithheld';
    yield serializers.serialize(
      object.valuesWithheld,
      specifiedType: const FullType(bool),
    );
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [FullType(SeriesPoint)]),
    );
    yield r'gaps';
    yield serializers.serialize(
      object.gaps,
      specifiedType: const FullType(BuiltList, [FullType(TimeRange)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesData object, {
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
    required SeriesDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.to = valueDes;
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
        case r'frequency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SeriesDataFrequencyEnum),
                  )
                  as SeriesDataFrequencyEnum;
          result.frequency = valueDes;
          break;
        case r'unit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.family = valueDes;
          break;
        case r'valuesWithheld':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.valuesWithheld = valueDes;
          break;
        case r'points':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SeriesPoint),
                    ]),
                  )
                  as BuiltList<SeriesPoint>;
          result.points.replace(valueDes);
          break;
        case r'gaps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(TimeRange),
                    ]),
                  )
                  as BuiltList<TimeRange>;
          result.gaps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesDataBuilder();
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

class SeriesDataFrequencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour')
  static const SeriesDataFrequencyEnum hour = _$seriesDataFrequencyEnum_hour;
  @BuiltValueEnumConst(wireName: r'day')
  static const SeriesDataFrequencyEnum day = _$seriesDataFrequencyEnum_day;
  @BuiltValueEnumConst(wireName: r'week')
  static const SeriesDataFrequencyEnum week = _$seriesDataFrequencyEnum_week;
  @BuiltValueEnumConst(wireName: r'month')
  static const SeriesDataFrequencyEnum month = _$seriesDataFrequencyEnum_month;
  @BuiltValueEnumConst(wireName: r'irregular')
  static const SeriesDataFrequencyEnum irregular =
      _$seriesDataFrequencyEnum_irregular;

  static Serializer<SeriesDataFrequencyEnum> get serializer =>
      _$seriesDataFrequencyEnumSerializer;

  const SeriesDataFrequencyEnum._(String name) : super(name);

  static BuiltSet<SeriesDataFrequencyEnum> get values =>
      _$seriesDataFrequencyEnumValues;
  static SeriesDataFrequencyEnum valueOf(String name) =>
      _$seriesDataFrequencyEnumValueOf(name);
}
