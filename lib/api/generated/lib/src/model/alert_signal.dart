//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert_signal.g.dart';

/// An implicit alert-quality signal (non-exercise alerts only; never stored as feedback) (115)
///
/// Properties:
/// * [alertId]
/// * [type] - ACK_FAST acknowledged within 15 min; SNOOZED alert or rule snoozed; FLAP resolved via inverse_edge within 10 min; UNOPENED notification unread after 24 h
/// * [at]
@BuiltValue()
abstract class AlertSignal implements Built<AlertSignal, AlertSignalBuilder> {
  @BuiltValueField(wireName: r'alertId')
  int get alertId;

  /// ACK_FAST acknowledged within 15 min; SNOOZED alert or rule snoozed; FLAP resolved via inverse_edge within 10 min; UNOPENED notification unread after 24 h
  @BuiltValueField(wireName: r'type')
  AlertSignalTypeEnum get type;
  // enum typeEnum {  ACK_FAST,  SNOOZED,  FLAP,  UNOPENED,  };

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  AlertSignal._();

  factory AlertSignal([void updates(AlertSignalBuilder b)]) = _$AlertSignal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertSignalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertSignal> get serializer => _$AlertSignalSerializer();
}

class _$AlertSignalSerializer implements PrimitiveSerializer<AlertSignal> {
  @override
  final Iterable<Type> types = const [AlertSignal, _$AlertSignal];

  @override
  final String wireName = r'AlertSignal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertSignal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alertId';
    yield serializers.serialize(
      object.alertId,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AlertSignalTypeEnum),
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
    AlertSignal object, {
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
    required AlertSignalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.alertId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlertSignalTypeEnum),
          ) as AlertSignalTypeEnum;
          result.type = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
  AlertSignal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertSignalBuilder();
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

/// ACK_FAST acknowledged within 15 min; SNOOZED alert or rule snoozed; FLAP resolved via inverse_edge within 10 min; UNOPENED notification unread after 24 h
class AlertSignalTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACK_FAST')
  static const AlertSignalTypeEnum ACK_FAST = _$alertSignalTypeEnum_ACK_FAST;
  @BuiltValueEnumConst(wireName: r'SNOOZED')
  static const AlertSignalTypeEnum SNOOZED = _$alertSignalTypeEnum_SNOOZED;
  @BuiltValueEnumConst(wireName: r'FLAP')
  static const AlertSignalTypeEnum FLAP = _$alertSignalTypeEnum_FLAP;
  @BuiltValueEnumConst(wireName: r'UNOPENED')
  static const AlertSignalTypeEnum UNOPENED = _$alertSignalTypeEnum_UNOPENED;

  static Serializer<AlertSignalTypeEnum> get serializer =>
      _$alertSignalTypeEnumSerializer;

  const AlertSignalTypeEnum._(String name) : super(name);

  static BuiltSet<AlertSignalTypeEnum> get values =>
      _$alertSignalTypeEnumValues;
  static AlertSignalTypeEnum valueOf(String name) =>
      _$alertSignalTypeEnumValueOf(name);
}
