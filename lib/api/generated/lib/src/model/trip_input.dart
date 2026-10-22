//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/trip_schedule.dart';
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trip_input.g.dart';

/// Create or replace a trip. The route comes from the client's own router; Foresignal never routes (114)
///
/// Properties:
/// * [name]
/// * [routePlaceId] - A 036 route place (LineString + bufferMeters); or give `route`
/// * [route] - GeoJSON LineString, at most 5,000 vertices
/// * [bufferMeters]
/// * [schedule]
/// * [expectedDuration] - Trip duration; the watch window is [departAt, departAt + expectedDuration]. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
/// * [leadTime] - Pre-trip check runs at departAt − leadTime. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
/// * [hazardKinds]
/// * [minSeverity]
/// * [channelIds]
/// * [anchor] - Moving-anchor record `{sourceId}/{externalId}` (036), e.g. an OwnTracks device
/// * [notifyWhenClear] - Deliver a 'route clear' briefing too
/// * [enabled]
@BuiltValue()
abstract class TripInput implements Built<TripInput, TripInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// A 036 route place (LineString + bufferMeters); or give `route`
  @BuiltValueField(wireName: r'routePlaceId')
  String? get routePlaceId;

  /// GeoJSON LineString, at most 5,000 vertices
  @BuiltValueField(wireName: r'route')
  Geometry? get route;

  @BuiltValueField(wireName: r'bufferMeters')
  int? get bufferMeters;

  @BuiltValueField(wireName: r'schedule')
  TripSchedule get schedule;

  /// Trip duration; the watch window is [departAt, departAt + expectedDuration]. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'expectedDuration')
  String get expectedDuration;

  /// Pre-trip check runs at departAt − leadTime. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'leadTime')
  String? get leadTime;

  @BuiltValueField(wireName: r'hazardKinds')
  BuiltList<String>? get hazardKinds;

  @BuiltValueField(wireName: r'minSeverity')
  Severity? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  /// Moving-anchor record `{sourceId}/{externalId}` (036), e.g. an OwnTracks device
  @BuiltValueField(wireName: r'anchor')
  String? get anchor;

  /// Deliver a 'route clear' briefing too
  @BuiltValueField(wireName: r'notifyWhenClear')
  bool? get notifyWhenClear;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  TripInput._();

  factory TripInput([void updates(TripInputBuilder b)]) = _$TripInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TripInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TripInput> get serializer => _$TripInputSerializer();
}

class _$TripInputSerializer implements PrimitiveSerializer<TripInput> {
  @override
  final Iterable<Type> types = const [TripInput, _$TripInput];

  @override
  final String wireName = r'TripInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TripInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.routePlaceId != null) {
      yield r'routePlaceId';
      yield serializers.serialize(
        object.routePlaceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.route != null) {
      yield r'route';
      yield serializers.serialize(
        object.route,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.bufferMeters != null) {
      yield r'bufferMeters';
      yield serializers.serialize(
        object.bufferMeters,
        specifiedType: const FullType(int),
      );
    }
    yield r'schedule';
    yield serializers.serialize(
      object.schedule,
      specifiedType: const FullType(TripSchedule),
    );
    yield r'expectedDuration';
    yield serializers.serialize(
      object.expectedDuration,
      specifiedType: const FullType(String),
    );
    if (object.leadTime != null) {
      yield r'leadTime';
      yield serializers.serialize(
        object.leadTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.hazardKinds != null) {
      yield r'hazardKinds';
      yield serializers.serialize(
        object.hazardKinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    if (object.channelIds != null) {
      yield r'channelIds';
      yield serializers.serialize(
        object.channelIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.anchor != null) {
      yield r'anchor';
      yield serializers.serialize(
        object.anchor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.notifyWhenClear != null) {
      yield r'notifyWhenClear';
      yield serializers.serialize(
        object.notifyWhenClear,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TripInput object, {
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
    required TripInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'routePlaceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.routePlaceId = valueDes;
          break;
        case r'route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.route.replace(valueDes);
          break;
        case r'bufferMeters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bufferMeters = valueDes;
          break;
        case r'schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TripSchedule),
          ) as TripSchedule;
          result.schedule.replace(valueDes);
          break;
        case r'expectedDuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expectedDuration = valueDes;
          break;
        case r'leadTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.leadTime = valueDes;
          break;
        case r'hazardKinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hazardKinds.replace(valueDes);
          break;
        case r'minSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Severity),
          ) as Severity?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'channelIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channelIds.replace(valueDes);
          break;
        case r'anchor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.anchor = valueDes;
          break;
        case r'notifyWhenClear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.notifyWhenClear = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TripInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TripInputBuilder();
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
