//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_selector_change_point.g.dart';

/// Change-point findings (119) on series of one family
///
/// Properties:
/// * [family] - Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
@BuiltValue()
abstract class EventSelectorChangePoint
    implements
        Built<EventSelectorChangePoint, EventSelectorChangePointBuilder> {
  /// Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
  @BuiltValueField(wireName: r'family')
  String get family;

  EventSelectorChangePoint._();

  factory EventSelectorChangePoint(
          [void updates(EventSelectorChangePointBuilder b)]) =
      _$EventSelectorChangePoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventSelectorChangePointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventSelectorChangePoint> get serializer =>
      _$EventSelectorChangePointSerializer();
}

class _$EventSelectorChangePointSerializer
    implements PrimitiveSerializer<EventSelectorChangePoint> {
  @override
  final Iterable<Type> types = const [
    EventSelectorChangePoint,
    _$EventSelectorChangePoint
  ];

  @override
  final String wireName = r'EventSelectorChangePoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventSelectorChangePoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventSelectorChangePoint object, {
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
    required EventSelectorChangePointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'family':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.family = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventSelectorChangePoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventSelectorChangePointBuilder();
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
