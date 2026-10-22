//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_selector_unexplained_move.g.dart';

/// `unexplained-move` findings (119) on series of one family
///
/// Properties:
/// * [family] - Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
@BuiltValue()
abstract class EventSelectorUnexplainedMove
    implements
        Built<
          EventSelectorUnexplainedMove,
          EventSelectorUnexplainedMoveBuilder
        > {
  /// Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
  @BuiltValueField(wireName: r'family')
  String get family;

  EventSelectorUnexplainedMove._();

  factory EventSelectorUnexplainedMove([
    void updates(EventSelectorUnexplainedMoveBuilder b),
  ]) = _$EventSelectorUnexplainedMove;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventSelectorUnexplainedMoveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventSelectorUnexplainedMove> get serializer =>
      _$EventSelectorUnexplainedMoveSerializer();
}

class _$EventSelectorUnexplainedMoveSerializer
    implements PrimitiveSerializer<EventSelectorUnexplainedMove> {
  @override
  final Iterable<Type> types = const [
    EventSelectorUnexplainedMove,
    _$EventSelectorUnexplainedMove,
  ];

  @override
  final String wireName = r'EventSelectorUnexplainedMove';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventSelectorUnexplainedMove object, {
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
    EventSelectorUnexplainedMove object, {
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
    required EventSelectorUnexplainedMoveBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  EventSelectorUnexplainedMove deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventSelectorUnexplainedMoveBuilder();
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
