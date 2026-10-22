//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/series_point.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_series.g.dart';

/// Captured series points and rollups from chronicle storage
///
/// Properties:
/// * [chronicleId] - ULID identifier
/// * [ref] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [from]
/// * [to]
/// * [points]
/// * [backfilled]
@BuiltValue()
abstract class ChronicleSeries
    implements Built<ChronicleSeries, ChronicleSeriesBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'points')
  BuiltList<SeriesPoint> get points;

  @BuiltValueField(wireName: r'backfilled')
  bool? get backfilled;

  ChronicleSeries._();

  factory ChronicleSeries([void updates(ChronicleSeriesBuilder b)]) =
      _$ChronicleSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSeries> get serializer =>
      _$ChronicleSeriesSerializer();
}

class _$ChronicleSeriesSerializer
    implements PrimitiveSerializer<ChronicleSeries> {
  @override
  final Iterable<Type> types = const [ChronicleSeries, _$ChronicleSeries];

  @override
  final String wireName = r'ChronicleSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [FullType(SeriesPoint)]),
    );
    if (object.backfilled != null) {
      yield r'backfilled';
      yield serializers.serialize(
        object.backfilled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSeries object, {
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
    required ChronicleSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chronicleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.chronicleId = valueDes;
          break;
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
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
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
        case r'backfilled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.backfilled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSeriesBuilder();
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
