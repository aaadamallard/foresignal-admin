//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/place_weather_digest_period_hazards_entered_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_period.g.dart';

/// The briefing lookback
///
/// Properties:
/// * [from]
/// * [to]
/// * [partial] - Window starts below the retention floor (\"partial period\")
/// * [maxDbz] - Largest radar.maxDbzInRadius of the ok place-weather versions in the window (null when none was ok); omitted when weatherProducts excludes mrms-reflectivity
/// * [maxMeshMm] - Largest hail.meshMaxMmInRadius of the ok place-weather versions (null when none); omitted when weatherProducts excludes mrms-mesh-60m
/// * [lightningTotal] - GOES GLM flashes within the place radius over the window, from the 14-day flash archive (the largest count over satellites); null when GLM is unavailable
/// * [hazardsEntered]
/// * [notes] - Why a period value is unknown or partial, for example \"lightning total unavailable: GOES GLM is disabled or not installed\"
@BuiltValue()
abstract class PlaceWeatherDigestPeriod
    implements
        Built<PlaceWeatherDigestPeriod, PlaceWeatherDigestPeriodBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  /// Window starts below the retention floor (\"partial period\")
  @BuiltValueField(wireName: r'partial')
  bool? get partial;

  /// Largest radar.maxDbzInRadius of the ok place-weather versions in the window (null when none was ok); omitted when weatherProducts excludes mrms-reflectivity
  @BuiltValueField(wireName: r'maxDbz')
  num? get maxDbz;

  /// Largest hail.meshMaxMmInRadius of the ok place-weather versions (null when none); omitted when weatherProducts excludes mrms-mesh-60m
  @BuiltValueField(wireName: r'maxMeshMm')
  num? get maxMeshMm;

  /// GOES GLM flashes within the place radius over the window, from the 14-day flash archive (the largest count over satellites); null when GLM is unavailable
  @BuiltValueField(wireName: r'lightningTotal')
  int? get lightningTotal;

  @BuiltValueField(wireName: r'hazardsEntered')
  BuiltList<PlaceWeatherDigestPeriodHazardsEnteredInner>? get hazardsEntered;

  /// Why a period value is unknown or partial, for example \"lightning total unavailable: GOES GLM is disabled or not installed\"
  @BuiltValueField(wireName: r'notes')
  BuiltList<String>? get notes;

  PlaceWeatherDigestPeriod._();

  factory PlaceWeatherDigestPeriod(
          [void updates(PlaceWeatherDigestPeriodBuilder b)]) =
      _$PlaceWeatherDigestPeriod;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestPeriodBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestPeriod> get serializer =>
      _$PlaceWeatherDigestPeriodSerializer();
}

class _$PlaceWeatherDigestPeriodSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestPeriod> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestPeriod,
    _$PlaceWeatherDigestPeriod
  ];

  @override
  final String wireName = r'PlaceWeatherDigestPeriod';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestPeriod object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.partial != null) {
      yield r'partial';
      yield serializers.serialize(
        object.partial,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxDbz != null) {
      yield r'maxDbz';
      yield serializers.serialize(
        object.maxDbz,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.maxMeshMm != null) {
      yield r'maxMeshMm';
      yield serializers.serialize(
        object.maxMeshMm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.lightningTotal != null) {
      yield r'lightningTotal';
      yield serializers.serialize(
        object.lightningTotal,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.hazardsEntered != null) {
      yield r'hazardsEntered';
      yield serializers.serialize(
        object.hazardsEntered,
        specifiedType: const FullType(
            BuiltList, [FullType(PlaceWeatherDigestPeriodHazardsEnteredInner)]),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestPeriod object, {
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
    required PlaceWeatherDigestPeriodBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'partial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.partial = valueDes;
          break;
        case r'maxDbz':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxDbz = valueDes;
          break;
        case r'maxMeshMm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxMeshMm = valueDes;
          break;
        case r'lightningTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lightningTotal = valueDes;
          break;
        case r'hazardsEntered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(PlaceWeatherDigestPeriodHazardsEnteredInner)]),
          ) as BuiltList<PlaceWeatherDigestPeriodHazardsEnteredInner>?;
          if (valueDes == null) continue;
          result.hazardsEntered.replace(valueDes);
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.notes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestPeriod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestPeriodBuilder();
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
