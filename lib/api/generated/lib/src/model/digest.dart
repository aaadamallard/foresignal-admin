//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/digest_alerts.dart';
import 'package:foresignal_api/src/model/digest_count.dart';
import 'package:foresignal_api/src/model/digest_health_item.dart';
import 'package:foresignal_api/src/model/place_weather_digest.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/digest_stats_notable_inner.dart';
import 'package:foresignal_api/src/model/digest_active.dart';
import 'package:foresignal_api/src/model/digest_next.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest.g.dart';

/// Structured catch-up document for clients (029); poll with the returned `next` cursors
///
/// Properties:
/// * [fromSeq]
/// * [toSeq]
/// * [gap] - True when fromSeq is below the retention floor of a scope source; counts are incomplete
/// * [gapReason]
/// * [counts]
/// * [active]
/// * [alerts]
/// * [notable]
/// * [health] - null when includeHealth is false
/// * [healthSnapshot] - True when health is the current snapshot rather than stored transitions (always true until health transitions are stored)
/// * [sections] - Sections from BriefingSectionContributor beans (e.g. 056 weather at places)
/// * [fromTime]
/// * [toTime]
/// * [next]
/// * [weatherAtPlaces] - \"Weather at places\" section, present when `places` is passed
@BuiltValue()
abstract class Digest implements Built<Digest, DigestBuilder> {
  @BuiltValueField(wireName: r'fromSeq')
  int get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int get toSeq;

  /// True when fromSeq is below the retention floor of a scope source; counts are incomplete
  @BuiltValueField(wireName: r'gap')
  bool get gap;

  @BuiltValueField(wireName: r'gapReason')
  String? get gapReason;

  @BuiltValueField(wireName: r'counts')
  BuiltList<DigestCount> get counts;

  @BuiltValueField(wireName: r'active')
  BuiltList<DigestActive>? get active;

  @BuiltValueField(wireName: r'alerts')
  DigestAlerts? get alerts;

  @BuiltValueField(wireName: r'notable')
  BuiltList<DigestStatsNotableInner>? get notable;

  /// null when includeHealth is false
  @BuiltValueField(wireName: r'health')
  BuiltList<DigestHealthItem>? get health;

  /// True when health is the current snapshot rather than stored transitions (always true until health transitions are stored)
  @BuiltValueField(wireName: r'healthSnapshot')
  bool? get healthSnapshot;

  /// Sections from BriefingSectionContributor beans (e.g. 056 weather at places)
  @BuiltValueField(wireName: r'sections')
  BuiltMap<String, JsonObject?>? get sections;

  @BuiltValueField(wireName: r'fromTime')
  DateTime get fromTime;

  @BuiltValueField(wireName: r'toTime')
  DateTime get toTime;

  @BuiltValueField(wireName: r'next')
  DigestNext get next;

  /// \"Weather at places\" section, present when `places` is passed
  @BuiltValueField(wireName: r'weatherAtPlaces')
  BuiltList<PlaceWeatherDigest>? get weatherAtPlaces;

  Digest._();

  factory Digest([void updates(DigestBuilder b)]) = _$Digest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Digest> get serializer => _$DigestSerializer();
}

class _$DigestSerializer implements PrimitiveSerializer<Digest> {
  @override
  final Iterable<Type> types = const [Digest, _$Digest];

  @override
  final String wireName = r'Digest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Digest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fromSeq';
    yield serializers.serialize(
      object.fromSeq,
      specifiedType: const FullType(int),
    );
    yield r'toSeq';
    yield serializers.serialize(
      object.toSeq,
      specifiedType: const FullType(int),
    );
    yield r'gap';
    yield serializers.serialize(
      object.gap,
      specifiedType: const FullType(bool),
    );
    if (object.gapReason != null) {
      yield r'gapReason';
      yield serializers.serialize(
        object.gapReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'counts';
    yield serializers.serialize(
      object.counts,
      specifiedType: const FullType(BuiltList, [FullType(DigestCount)]),
    );
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(BuiltList, [FullType(DigestActive)]),
      );
    }
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(DigestAlerts),
      );
    }
    if (object.notable != null) {
      yield r'notable';
      yield serializers.serialize(
        object.notable,
        specifiedType: const FullType(BuiltList, [
          FullType(DigestStatsNotableInner),
        ]),
      );
    }
    if (object.health != null) {
      yield r'health';
      yield serializers.serialize(
        object.health,
        specifiedType: const FullType.nullable(BuiltList, [
          FullType(DigestHealthItem),
        ]),
      );
    }
    if (object.healthSnapshot != null) {
      yield r'healthSnapshot';
      yield serializers.serialize(
        object.healthSnapshot,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sections != null) {
      yield r'sections';
      yield serializers.serialize(
        object.sections,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'fromTime';
    yield serializers.serialize(
      object.fromTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'toTime';
    yield serializers.serialize(
      object.toTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'next';
    yield serializers.serialize(
      object.next,
      specifiedType: const FullType(DigestNext),
    );
    if (object.weatherAtPlaces != null) {
      yield r'weatherAtPlaces';
      yield serializers.serialize(
        object.weatherAtPlaces,
        specifiedType: const FullType(BuiltList, [
          FullType(PlaceWeatherDigest),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Digest object, {
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
    required DigestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.toSeq = valueDes;
          break;
        case r'gap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.gap = valueDes;
          break;
        case r'gapReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.gapReason = valueDes;
          break;
        case r'counts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(DigestCount),
                    ]),
                  )
                  as BuiltList<DigestCount>;
          result.counts.replace(valueDes);
          break;
        case r'active':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DigestActive),
                    ]),
                  )
                  as BuiltList<DigestActive>?;
          if (valueDes == null) continue;
          result.active.replace(valueDes);
          break;
        case r'alerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DigestAlerts),
                  )
                  as DigestAlerts?;
          if (valueDes == null) continue;
          result.alerts.replace(valueDes);
          break;
        case r'notable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DigestStatsNotableInner),
                    ]),
                  )
                  as BuiltList<DigestStatsNotableInner>?;
          if (valueDes == null) continue;
          result.notable.replace(valueDes);
          break;
        case r'health':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DigestHealthItem),
                    ]),
                  )
                  as BuiltList<DigestHealthItem>?;
          if (valueDes == null) continue;
          result.health.replace(valueDes);
          break;
        case r'healthSnapshot':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.healthSnapshot = valueDes;
          break;
        case r'sections':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.sections.replace(valueDes);
          break;
        case r'fromTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.fromTime = valueDes;
          break;
        case r'toTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.toTime = valueDes;
          break;
        case r'next':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DigestNext),
                  )
                  as DigestNext;
          result.next.replace(valueDes);
          break;
        case r'weatherAtPlaces':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(PlaceWeatherDigest),
                    ]),
                  )
                  as BuiltList<PlaceWeatherDigest>?;
          if (valueDes == null) continue;
          result.weatherAtPlaces.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Digest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestBuilder();
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
