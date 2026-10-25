//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resync_event.g.dart';

/// SSE `resync` event: live updates were lost; re-fetch current state for the view (`/v1/records?order=id` or tiles) and keep the stream open
///
/// Properties:
/// * [reason]
/// * [watermarkSeq]
@BuiltValue()
abstract class ResyncEvent implements Built<ResyncEvent, ResyncEventBuilder> {
  @BuiltValueField(wireName: r'reason')
  ResyncEventReasonEnum get reason;
  // enum reasonEnum {  gap,  live_cap,  live_dropped,  };

  @BuiltValueField(wireName: r'watermarkSeq')
  int get watermarkSeq;

  ResyncEvent._();

  factory ResyncEvent([void updates(ResyncEventBuilder b)]) = _$ResyncEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResyncEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResyncEvent> get serializer => _$ResyncEventSerializer();
}

class _$ResyncEventSerializer implements PrimitiveSerializer<ResyncEvent> {
  @override
  final Iterable<Type> types = const [ResyncEvent, _$ResyncEvent];

  @override
  final String wireName = r'ResyncEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResyncEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(ResyncEventReasonEnum),
    );
    yield r'watermarkSeq';
    yield serializers.serialize(
      object.watermarkSeq,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResyncEvent object, {
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
    required ResyncEventBuilder result,
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
                    specifiedType: const FullType(ResyncEventReasonEnum),
                  )
                  as ResyncEventReasonEnum;
          result.reason = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
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
  ResyncEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResyncEventBuilder();
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

class ResyncEventReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'gap')
  static const ResyncEventReasonEnum gap = _$resyncEventReasonEnum_gap;
  @BuiltValueEnumConst(wireName: r'live_cap')
  static const ResyncEventReasonEnum liveCap = _$resyncEventReasonEnum_liveCap;
  @BuiltValueEnumConst(wireName: r'live_dropped')
  static const ResyncEventReasonEnum liveDropped =
      _$resyncEventReasonEnum_liveDropped;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ResyncEventReasonEnum unknownDefaultOpenApi =
      _$resyncEventReasonEnum_unknownDefaultOpenApi;

  static Serializer<ResyncEventReasonEnum> get serializer =>
      _$resyncEventReasonEnumSerializer;

  const ResyncEventReasonEnum._(String name) : super(name);

  static BuiltSet<ResyncEventReasonEnum> get values =>
      _$resyncEventReasonEnumValues;
  static ResyncEventReasonEnum valueOf(String name) =>
      _$resyncEventReasonEnumValueOf(name);
}
