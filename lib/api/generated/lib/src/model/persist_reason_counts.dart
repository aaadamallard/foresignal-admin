//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'persist_reason_counts.g.dart';

/// Persisted-version counts per persist reason; all nine reasons are always present (zeros included)
///
/// Properties:
/// * [FIRST]
/// * [REAPPEAR]
/// * [SIGNIFICANT]
/// * [TOMBSTONE]
/// * [CHANGE]
/// * [SAMPLE]
/// * [KEYFRAME]
/// * [HEARTBEAT]
/// * [TRIGGER_EDGE]
@BuiltValue()
abstract class PersistReasonCounts
    implements Built<PersistReasonCounts, PersistReasonCountsBuilder> {
  @BuiltValueField(wireName: r'FIRST')
  int get FIRST;

  @BuiltValueField(wireName: r'REAPPEAR')
  int get REAPPEAR;

  @BuiltValueField(wireName: r'SIGNIFICANT')
  int get SIGNIFICANT;

  @BuiltValueField(wireName: r'TOMBSTONE')
  int get TOMBSTONE;

  @BuiltValueField(wireName: r'CHANGE')
  int get CHANGE;

  @BuiltValueField(wireName: r'SAMPLE')
  int get SAMPLE;

  @BuiltValueField(wireName: r'KEYFRAME')
  int get KEYFRAME;

  @BuiltValueField(wireName: r'HEARTBEAT')
  int get HEARTBEAT;

  @BuiltValueField(wireName: r'TRIGGER_EDGE')
  int get TRIGGER_EDGE;

  PersistReasonCounts._();

  factory PersistReasonCounts([void updates(PersistReasonCountsBuilder b)]) =
      _$PersistReasonCounts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersistReasonCountsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PersistReasonCounts> get serializer =>
      _$PersistReasonCountsSerializer();
}

class _$PersistReasonCountsSerializer
    implements PrimitiveSerializer<PersistReasonCounts> {
  @override
  final Iterable<Type> types = const [
    PersistReasonCounts,
    _$PersistReasonCounts,
  ];

  @override
  final String wireName = r'PersistReasonCounts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PersistReasonCounts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'FIRST';
    yield serializers.serialize(
      object.FIRST,
      specifiedType: const FullType(int),
    );
    yield r'REAPPEAR';
    yield serializers.serialize(
      object.REAPPEAR,
      specifiedType: const FullType(int),
    );
    yield r'SIGNIFICANT';
    yield serializers.serialize(
      object.SIGNIFICANT,
      specifiedType: const FullType(int),
    );
    yield r'TOMBSTONE';
    yield serializers.serialize(
      object.TOMBSTONE,
      specifiedType: const FullType(int),
    );
    yield r'CHANGE';
    yield serializers.serialize(
      object.CHANGE,
      specifiedType: const FullType(int),
    );
    yield r'SAMPLE';
    yield serializers.serialize(
      object.SAMPLE,
      specifiedType: const FullType(int),
    );
    yield r'KEYFRAME';
    yield serializers.serialize(
      object.KEYFRAME,
      specifiedType: const FullType(int),
    );
    yield r'HEARTBEAT';
    yield serializers.serialize(
      object.HEARTBEAT,
      specifiedType: const FullType(int),
    );
    yield r'TRIGGER_EDGE';
    yield serializers.serialize(
      object.TRIGGER_EDGE,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PersistReasonCounts object, {
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
    required PersistReasonCountsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'FIRST':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.FIRST = valueDes;
          break;
        case r'REAPPEAR':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.REAPPEAR = valueDes;
          break;
        case r'SIGNIFICANT':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.SIGNIFICANT = valueDes;
          break;
        case r'TOMBSTONE':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.TOMBSTONE = valueDes;
          break;
        case r'CHANGE':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.CHANGE = valueDes;
          break;
        case r'SAMPLE':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.SAMPLE = valueDes;
          break;
        case r'KEYFRAME':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.KEYFRAME = valueDes;
          break;
        case r'HEARTBEAT':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.HEARTBEAT = valueDes;
          break;
        case r'TRIGGER_EDGE':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.TRIGGER_EDGE = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PersistReasonCounts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersistReasonCountsBuilder();
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
