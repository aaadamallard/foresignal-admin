//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/event_selector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watch_pair.g.dart';

/// Event-study watch pair: qualifying events of a family checked against this series live
///
/// Properties:
/// * [eventFamily] - Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
/// * [regionCodes] - Event regions (empty = any)
/// * [selector] - Optional narrower event selector
/// * [minEffect] - Minimum |CAR| in standard deviations
/// * [releaseLagDays] - Publication lag of the series; triggers a re-check and `LAGGED_PUBLICATION`
@BuiltValue()
abstract class WatchPair implements Built<WatchPair, WatchPairBuilder> {
  /// Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
  @BuiltValueField(wireName: r'eventFamily')
  String get eventFamily;

  /// Event regions (empty = any)
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  /// Optional narrower event selector
  @BuiltValueField(wireName: r'selector')
  EventSelector? get selector;

  /// Minimum |CAR| in standard deviations
  @BuiltValueField(wireName: r'minEffect')
  num? get minEffect;

  /// Publication lag of the series; triggers a re-check and `LAGGED_PUBLICATION`
  @BuiltValueField(wireName: r'releaseLagDays')
  int? get releaseLagDays;

  WatchPair._();

  factory WatchPair([void updates(WatchPairBuilder b)]) = _$WatchPair;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchPairBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchPair> get serializer => _$WatchPairSerializer();
}

class _$WatchPairSerializer implements PrimitiveSerializer<WatchPair> {
  @override
  final Iterable<Type> types = const [WatchPair, _$WatchPair];

  @override
  final String wireName = r'WatchPair';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchPair object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'eventFamily';
    yield serializers.serialize(
      object.eventFamily,
      specifiedType: const FullType(String),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType.nullable(EventSelector),
      );
    }
    if (object.minEffect != null) {
      yield r'minEffect';
      yield serializers.serialize(
        object.minEffect,
        specifiedType: const FullType(num),
      );
    }
    if (object.releaseLagDays != null) {
      yield r'releaseLagDays';
      yield serializers.serialize(
        object.releaseLagDays,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchPair object, {
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
    required WatchPairBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'eventFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.eventFamily = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'selector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EventSelector),
                  )
                  as EventSelector?;
          if (valueDes == null) continue;
          result.selector.replace(valueDes);
          break;
        case r'minEffect':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.minEffect = valueDes;
          break;
        case r'releaseLagDays':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.releaseLagDays = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WatchPair deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchPairBuilder();
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
