//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trigger_test_result_warnings_inner.g.dart';

/// Test warning
///
/// Properties:
/// * [code]
/// * [message]
@BuiltValue()
abstract class TriggerTestResultWarningsInner
    implements
        Built<
          TriggerTestResultWarningsInner,
          TriggerTestResultWarningsInnerBuilder
        > {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'message')
  String get message;

  TriggerTestResultWarningsInner._();

  factory TriggerTestResultWarningsInner([
    void updates(TriggerTestResultWarningsInnerBuilder b),
  ]) = _$TriggerTestResultWarningsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TriggerTestResultWarningsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TriggerTestResultWarningsInner> get serializer =>
      _$TriggerTestResultWarningsInnerSerializer();
}

class _$TriggerTestResultWarningsInnerSerializer
    implements PrimitiveSerializer<TriggerTestResultWarningsInner> {
  @override
  final Iterable<Type> types = const [
    TriggerTestResultWarningsInner,
    _$TriggerTestResultWarningsInner,
  ];

  @override
  final String wireName = r'TriggerTestResultWarningsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TriggerTestResultWarningsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TriggerTestResultWarningsInner object, {
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
    required TriggerTestResultWarningsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TriggerTestResultWarningsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TriggerTestResultWarningsInnerBuilder();
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
