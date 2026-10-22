//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_result.g.dart';

/// Result of executing a notification action capability (033)
///
/// Properties:
/// * [action]
/// * [alertId]
/// * [result] - e.g. acknowledged, snoozed, muted, already-acknowledged, already-resolved
@BuiltValue()
abstract class ActionResult
    implements Built<ActionResult, ActionResultBuilder> {
  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'alertId')
  int get alertId;

  /// e.g. acknowledged, snoozed, muted, already-acknowledged, already-resolved
  @BuiltValueField(wireName: r'result')
  String get result;

  ActionResult._();

  factory ActionResult([void updates(ActionResultBuilder b)]) = _$ActionResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActionResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActionResult> get serializer => _$ActionResultSerializer();
}

class _$ActionResultSerializer implements PrimitiveSerializer<ActionResult> {
  @override
  final Iterable<Type> types = const [ActionResult, _$ActionResult];

  @override
  final String wireName = r'ActionResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    yield r'alertId';
    yield serializers.serialize(
      object.alertId,
      specifiedType: const FullType(int),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ActionResult object, {
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
    required ActionResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'alertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.alertId = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.result = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActionResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActionResultBuilder();
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
