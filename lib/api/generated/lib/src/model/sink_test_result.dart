//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_test_result.g.dart';

/// Result of validating, connecting or binding once and sending one synthetic record (110)
///
/// Properties:
/// * [ok]
/// * [phase] - Last phase reached
/// * [message]
/// * [latencyMs]
/// * [details]
@BuiltValue()
abstract class SinkTestResult
    implements Built<SinkTestResult, SinkTestResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  /// Last phase reached
  @BuiltValueField(wireName: r'phase')
  SinkTestResultPhaseEnum get phase;
  // enum phaseEnum {  validate,  connect,  bind,  send,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'latencyMs')
  int? get latencyMs;

  @BuiltValueField(wireName: r'details')
  BuiltMap<String, JsonObject?>? get details;

  SinkTestResult._();

  factory SinkTestResult([void updates(SinkTestResultBuilder b)]) =
      _$SinkTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkTestResult> get serializer =>
      _$SinkTestResultSerializer();
}

class _$SinkTestResultSerializer
    implements PrimitiveSerializer<SinkTestResult> {
  @override
  final Iterable<Type> types = const [SinkTestResult, _$SinkTestResult];

  @override
  final String wireName = r'SinkTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(object.ok, specifiedType: const FullType(bool));
    yield r'phase';
    yield serializers.serialize(
      object.phase,
      specifiedType: const FullType(SinkTestResultPhaseEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.latencyMs != null) {
      yield r'latencyMs';
      yield serializers.serialize(
        object.latencyMs,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkTestResult object, {
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
    required SinkTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.ok = valueDes;
          break;
        case r'phase':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkTestResultPhaseEnum),
                  )
                  as SinkTestResultPhaseEnum;
          result.phase = valueDes;
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
        case r'latencyMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.latencyMs = valueDes;
          break;
        case r'details':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkTestResultBuilder();
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

/// Last phase reached
class SinkTestResultPhaseEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'validate')
  static const SinkTestResultPhaseEnum validate =
      _$sinkTestResultPhaseEnum_validate;
  @BuiltValueEnumConst(wireName: r'connect')
  static const SinkTestResultPhaseEnum connect =
      _$sinkTestResultPhaseEnum_connect;
  @BuiltValueEnumConst(wireName: r'bind')
  static const SinkTestResultPhaseEnum bind = _$sinkTestResultPhaseEnum_bind;
  @BuiltValueEnumConst(wireName: r'send')
  static const SinkTestResultPhaseEnum send = _$sinkTestResultPhaseEnum_send;

  static Serializer<SinkTestResultPhaseEnum> get serializer =>
      _$sinkTestResultPhaseEnumSerializer;

  const SinkTestResultPhaseEnum._(String name) : super(name);

  static BuiltSet<SinkTestResultPhaseEnum> get values =>
      _$sinkTestResultPhaseEnumValues;
  static SinkTestResultPhaseEnum valueOf(String name) =>
      _$sinkTestResultPhaseEnumValueOf(name);
}
