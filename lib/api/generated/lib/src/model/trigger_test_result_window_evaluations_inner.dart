//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trigger_test_result_window_evaluations_inner.g.dart';

/// Windowed test result at one step instant
///
/// Properties:
/// * [at]
/// * [groupKey]
/// * [value]
/// * [state]
/// * [reason]
@BuiltValue()
abstract class TriggerTestResultWindowEvaluationsInner
    implements
        Built<
          TriggerTestResultWindowEvaluationsInner,
          TriggerTestResultWindowEvaluationsInnerBuilder
        > {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'groupKey')
  String get groupKey;

  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'state')
  TriggerTestResultWindowEvaluationsInnerStateEnum get state;
  // enum stateEnum {  active,  clear,  unknown,  learning,  };

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  TriggerTestResultWindowEvaluationsInner._();

  factory TriggerTestResultWindowEvaluationsInner([
    void updates(TriggerTestResultWindowEvaluationsInnerBuilder b),
  ]) = _$TriggerTestResultWindowEvaluationsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TriggerTestResultWindowEvaluationsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TriggerTestResultWindowEvaluationsInner> get serializer =>
      _$TriggerTestResultWindowEvaluationsInnerSerializer();
}

class _$TriggerTestResultWindowEvaluationsInnerSerializer
    implements PrimitiveSerializer<TriggerTestResultWindowEvaluationsInner> {
  @override
  final Iterable<Type> types = const [
    TriggerTestResultWindowEvaluationsInner,
    _$TriggerTestResultWindowEvaluationsInner,
  ];

  @override
  final String wireName = r'TriggerTestResultWindowEvaluationsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TriggerTestResultWindowEvaluationsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'groupKey';
    yield serializers.serialize(
      object.groupKey,
      specifiedType: const FullType(String),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(
        TriggerTestResultWindowEvaluationsInnerStateEnum,
      ),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TriggerTestResultWindowEvaluationsInner object, {
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
    required TriggerTestResultWindowEvaluationsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'groupKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.groupKey = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      TriggerTestResultWindowEvaluationsInnerStateEnum,
                    ),
                  )
                  as TriggerTestResultWindowEvaluationsInnerStateEnum;
          result.state = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TriggerTestResultWindowEvaluationsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TriggerTestResultWindowEvaluationsInnerBuilder();
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

class TriggerTestResultWindowEvaluationsInnerStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const TriggerTestResultWindowEvaluationsInnerStateEnum active =
      _$triggerTestResultWindowEvaluationsInnerStateEnum_active;
  @BuiltValueEnumConst(wireName: r'clear')
  static const TriggerTestResultWindowEvaluationsInnerStateEnum clear =
      _$triggerTestResultWindowEvaluationsInnerStateEnum_clear;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const TriggerTestResultWindowEvaluationsInnerStateEnum unknown =
      _$triggerTestResultWindowEvaluationsInnerStateEnum_unknown;
  @BuiltValueEnumConst(wireName: r'learning')
  static const TriggerTestResultWindowEvaluationsInnerStateEnum learning =
      _$triggerTestResultWindowEvaluationsInnerStateEnum_learning;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TriggerTestResultWindowEvaluationsInnerStateEnum
  unknownDefaultOpenApi =
      _$triggerTestResultWindowEvaluationsInnerStateEnum_unknownDefaultOpenApi;

  static Serializer<TriggerTestResultWindowEvaluationsInnerStateEnum>
  get serializer =>
      _$triggerTestResultWindowEvaluationsInnerStateEnumSerializer;

  const TriggerTestResultWindowEvaluationsInnerStateEnum._(String name)
    : super(name);

  static BuiltSet<TriggerTestResultWindowEvaluationsInnerStateEnum>
  get values => _$triggerTestResultWindowEvaluationsInnerStateEnumValues;
  static TriggerTestResultWindowEvaluationsInnerStateEnum valueOf(
    String name,
  ) => _$triggerTestResultWindowEvaluationsInnerStateEnumValueOf(name);
}
