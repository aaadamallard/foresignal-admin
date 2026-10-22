//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/precursor_event_precursor.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_event.g.dart';

/// SSE payload on topic `analytics` for precursor lifecycle changes
///
/// Properties:
/// * [event]
/// * [precursor]
/// * [at]
@BuiltValue()
abstract class PrecursorEvent
    implements Built<PrecursorEvent, PrecursorEventBuilder> {
  @BuiltValueField(wireName: r'event')
  PrecursorEventEventEnum get event;
  // enum eventEnum {  precursor.validated,  precursor.stale,  precursor.retired,  };

  @BuiltValueField(wireName: r'precursor')
  PrecursorEventPrecursor get precursor;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  PrecursorEvent._();

  factory PrecursorEvent([void updates(PrecursorEventBuilder b)]) =
      _$PrecursorEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorEvent> get serializer =>
      _$PrecursorEventSerializer();
}

class _$PrecursorEventSerializer
    implements PrimitiveSerializer<PrecursorEvent> {
  @override
  final Iterable<Type> types = const [PrecursorEvent, _$PrecursorEvent];

  @override
  final String wireName = r'PrecursorEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(PrecursorEventEventEnum),
    );
    yield r'precursor';
    yield serializers.serialize(
      object.precursor,
      specifiedType: const FullType(PrecursorEventPrecursor),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorEvent object, {
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
    required PrecursorEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorEventEventEnum),
                  )
                  as PrecursorEventEventEnum;
          result.event = valueDes;
          break;
        case r'precursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorEventPrecursor),
                  )
                  as PrecursorEventPrecursor;
          result.precursor.replace(valueDes);
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorEventBuilder();
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

class PrecursorEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'precursor.validated')
  static const PrecursorEventEventEnum precursorPeriodValidated =
      _$precursorEventEventEnum_precursorPeriodValidated;
  @BuiltValueEnumConst(wireName: r'precursor.stale')
  static const PrecursorEventEventEnum precursorPeriodStale =
      _$precursorEventEventEnum_precursorPeriodStale;
  @BuiltValueEnumConst(wireName: r'precursor.retired')
  static const PrecursorEventEventEnum precursorPeriodRetired =
      _$precursorEventEventEnum_precursorPeriodRetired;

  static Serializer<PrecursorEventEventEnum> get serializer =>
      _$precursorEventEventEnumSerializer;

  const PrecursorEventEventEnum._(String name) : super(name);

  static BuiltSet<PrecursorEventEventEnum> get values =>
      _$precursorEventEventEnumValues;
  static PrecursorEventEventEnum valueOf(String name) =>
      _$precursorEventEventEnumValueOf(name);
}
