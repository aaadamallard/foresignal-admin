//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/alert.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert_event.g.dart';

/// Alert lifecycle event (AlertBus; SSE `alert`, `alert.updated`, `alert.resolved`); clients upsert by `alert.id`
///
/// Properties:
/// * [type] - Lifecycle transition; SSE maps fired → `alert`, resolved → `alert.resolved`, all others → `alert.updated`
/// * [alert]
/// * [suppressed] - Suppressed by a rule or alert snooze (not routed to channels; hidden on streams unless includeSuppressed)
/// * [exercise] - Exercise alert
@BuiltValue()
abstract class AlertEvent implements Built<AlertEvent, AlertEventBuilder> {
  /// Lifecycle transition; SSE maps fired → `alert`, resolved → `alert.resolved`, all others → `alert.updated`
  @BuiltValueField(wireName: r'type')
  AlertEventTypeEnum get type;
  // enum typeEnum {  fired,  updated,  acknowledged,  snoozed,  resolved,  };

  @BuiltValueField(wireName: r'alert')
  Alert get alert;

  /// Suppressed by a rule or alert snooze (not routed to channels; hidden on streams unless includeSuppressed)
  @BuiltValueField(wireName: r'suppressed')
  bool? get suppressed;

  /// Exercise alert
  @BuiltValueField(wireName: r'exercise')
  bool? get exercise;

  AlertEvent._();

  factory AlertEvent([void updates(AlertEventBuilder b)]) = _$AlertEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertEvent> get serializer => _$AlertEventSerializer();
}

class _$AlertEventSerializer implements PrimitiveSerializer<AlertEvent> {
  @override
  final Iterable<Type> types = const [AlertEvent, _$AlertEvent];

  @override
  final String wireName = r'AlertEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AlertEventTypeEnum),
    );
    yield r'alert';
    yield serializers.serialize(
      object.alert,
      specifiedType: const FullType(Alert),
    );
    if (object.suppressed != null) {
      yield r'suppressed';
      yield serializers.serialize(
        object.suppressed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exercise != null) {
      yield r'exercise';
      yield serializers.serialize(
        object.exercise,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlertEvent object, {
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
    required AlertEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlertEventTypeEnum),
                  )
                  as AlertEventTypeEnum;
          result.type = valueDes;
          break;
        case r'alert':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Alert),
                  )
                  as Alert;
          result.alert.replace(valueDes);
          break;
        case r'suppressed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.suppressed = valueDes;
          break;
        case r'exercise':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exercise = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlertEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertEventBuilder();
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

/// Lifecycle transition; SSE maps fired → `alert`, resolved → `alert.resolved`, all others → `alert.updated`
class AlertEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'fired')
  static const AlertEventTypeEnum fired = _$alertEventTypeEnum_fired;
  @BuiltValueEnumConst(wireName: r'updated')
  static const AlertEventTypeEnum updated = _$alertEventTypeEnum_updated;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const AlertEventTypeEnum acknowledged =
      _$alertEventTypeEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'snoozed')
  static const AlertEventTypeEnum snoozed = _$alertEventTypeEnum_snoozed;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const AlertEventTypeEnum resolved = _$alertEventTypeEnum_resolved;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlertEventTypeEnum unknownDefaultOpenApi =
      _$alertEventTypeEnum_unknownDefaultOpenApi;

  static Serializer<AlertEventTypeEnum> get serializer =>
      _$alertEventTypeEnumSerializer;

  const AlertEventTypeEnum._(String name) : super(name);

  static BuiltSet<AlertEventTypeEnum> get values => _$alertEventTypeEnumValues;
  static AlertEventTypeEnum valueOf(String name) =>
      _$alertEventTypeEnumValueOf(name);
}
