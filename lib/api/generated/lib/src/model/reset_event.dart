//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reset_event.g.dart';

/// SSE `reset` event, followed by the server closing the stream: reconnect from `resumeAfter` (or the last received id), or re-snapshot when `reason` is `resync_required`
///
/// Properties:
/// * [reason]
/// * [resumeAfter] - Last delivered seq to resume from (null for resync_required)
/// * [watermarkSeq]
@BuiltValue()
abstract class ResetEvent implements Built<ResetEvent, ResetEventBuilder> {
  @BuiltValueField(wireName: r'reason')
  ResetEventReasonEnum get reason;
  // enum reasonEnum {  buffer_overflow,  replay_cap,  resync_required,  };

  /// Last delivered seq to resume from (null for resync_required)
  @BuiltValueField(wireName: r'resumeAfter')
  int? get resumeAfter;

  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  ResetEvent._();

  factory ResetEvent([void updates(ResetEventBuilder b)]) = _$ResetEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResetEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResetEvent> get serializer => _$ResetEventSerializer();
}

class _$ResetEventSerializer implements PrimitiveSerializer<ResetEvent> {
  @override
  final Iterable<Type> types = const [ResetEvent, _$ResetEvent];

  @override
  final String wireName = r'ResetEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResetEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(ResetEventReasonEnum),
    );
    if (object.resumeAfter != null) {
      yield r'resumeAfter';
      yield serializers.serialize(
        object.resumeAfter,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResetEvent object, {
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
    required ResetEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ResetEventReasonEnum),
                  )
                  as ResetEventReasonEnum;
          result.reason = valueDes;
          break;
        case r'resumeAfter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.resumeAfter = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResetEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetEventBuilder();
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

class ResetEventReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'buffer_overflow')
  static const ResetEventReasonEnum bufferOverflow =
      _$resetEventReasonEnum_bufferOverflow;
  @BuiltValueEnumConst(wireName: r'replay_cap')
  static const ResetEventReasonEnum replayCap =
      _$resetEventReasonEnum_replayCap;
  @BuiltValueEnumConst(wireName: r'resync_required')
  static const ResetEventReasonEnum resyncRequired =
      _$resetEventReasonEnum_resyncRequired;

  static Serializer<ResetEventReasonEnum> get serializer =>
      _$resetEventReasonEnumSerializer;

  const ResetEventReasonEnum._(String name) : super(name);

  static BuiltSet<ResetEventReasonEnum> get values =>
      _$resetEventReasonEnumValues;
  static ResetEventReasonEnum valueOf(String name) =>
      _$resetEventReasonEnumValueOf(name);
}
