//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collector_status.g.dart';

/// A live snapshot of the pull governor (prompt 160).
///
/// Properties:
/// * [cap] - The governor's current cap: the maxConcurrentPulls in force.
/// * [inUse] - How many polling fetches hold a permit and are pulling from upstream now. May briefly exceed cap just after the cap is lowered.
/// * [waiting] - How many polling fetches are queued for a permit.
@BuiltValue()
abstract class CollectorStatus
    implements Built<CollectorStatus, CollectorStatusBuilder> {
  /// The governor's current cap: the maxConcurrentPulls in force.
  @BuiltValueField(wireName: r'cap')
  int get cap;

  /// How many polling fetches hold a permit and are pulling from upstream now. May briefly exceed cap just after the cap is lowered.
  @BuiltValueField(wireName: r'inUse')
  int get inUse;

  /// How many polling fetches are queued for a permit.
  @BuiltValueField(wireName: r'waiting')
  int get waiting;

  CollectorStatus._();

  factory CollectorStatus([void updates(CollectorStatusBuilder b)]) =
      _$CollectorStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectorStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectorStatus> get serializer =>
      _$CollectorStatusSerializer();
}

class _$CollectorStatusSerializer
    implements PrimitiveSerializer<CollectorStatus> {
  @override
  final Iterable<Type> types = const [CollectorStatus, _$CollectorStatus];

  @override
  final String wireName = r'CollectorStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectorStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cap';
    yield serializers.serialize(object.cap, specifiedType: const FullType(int));
    yield r'inUse';
    yield serializers.serialize(
      object.inUse,
      specifiedType: const FullType(int),
    );
    yield r'waiting';
    yield serializers.serialize(
      object.waiting,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectorStatus object, {
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
    required CollectorStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cap':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.cap = valueDes;
          break;
        case r'inUse':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.inUse = valueDes;
          break;
        case r'waiting':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.waiting = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectorStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectorStatusBuilder();
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
