//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'window_state_payload.g.dart';

/// Payload of `rule-windows` records of kind `window-state` (externalId `{ruleId}:{groupKey}`); excludes the evaluation timestamp so it changes only with state
///
/// Properties:
/// * [ruleId]
/// * [name]
/// * [type]
/// * [groupKey]
/// * [state]
/// * [value]
/// * [threshold]
/// * [reason]
/// * [detector]
/// * [automated]
@BuiltValue()
abstract class WindowStatePayload
    implements Built<WindowStatePayload, WindowStatePayloadBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  WindowStatePayloadTypeEnum get type;
  // enum typeEnum {  count,  absence,  anomaly,  };

  @BuiltValueField(wireName: r'groupKey')
  String get groupKey;

  @BuiltValueField(wireName: r'state')
  WindowStatePayloadStateEnum get state;
  // enum stateEnum {  active,  clear,  unknown,  learning,  };

  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'threshold')
  num? get threshold;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'detector')
  DetectorRef? get detector;

  @BuiltValueField(wireName: r'automated')
  bool? get automated;

  WindowStatePayload._();

  factory WindowStatePayload([void updates(WindowStatePayloadBuilder b)]) =
      _$WindowStatePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WindowStatePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WindowStatePayload> get serializer =>
      _$WindowStatePayloadSerializer();
}

class _$WindowStatePayloadSerializer
    implements PrimitiveSerializer<WindowStatePayload> {
  @override
  final Iterable<Type> types = const [WindowStatePayload, _$WindowStatePayload];

  @override
  final String wireName = r'WindowStatePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WindowStatePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(WindowStatePayloadTypeEnum),
    );
    yield r'groupKey';
    yield serializers.serialize(
      object.groupKey,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(WindowStatePayloadStateEnum),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.threshold != null) {
      yield r'threshold';
      yield serializers.serialize(
        object.threshold,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.detector != null) {
      yield r'detector';
      yield serializers.serialize(
        object.detector,
        specifiedType: const FullType(DetectorRef),
      );
    }
    if (object.automated != null) {
      yield r'automated';
      yield serializers.serialize(
        object.automated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WindowStatePayload object, {
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
    required WindowStatePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WindowStatePayloadTypeEnum),
                  )
                  as WindowStatePayloadTypeEnum;
          result.type = valueDes;
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
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WindowStatePayloadStateEnum),
                  )
                  as WindowStatePayloadStateEnum;
          result.state = valueDes;
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
        case r'threshold':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.threshold = valueDes;
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
        case r'detector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DetectorRef),
                  )
                  as DetectorRef?;
          if (valueDes == null) continue;
          result.detector.replace(valueDes);
          break;
        case r'automated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.automated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WindowStatePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WindowStatePayloadBuilder();
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

class WindowStatePayloadTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'count')
  static const WindowStatePayloadTypeEnum count =
      _$windowStatePayloadTypeEnum_count;
  @BuiltValueEnumConst(wireName: r'absence')
  static const WindowStatePayloadTypeEnum absence =
      _$windowStatePayloadTypeEnum_absence;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const WindowStatePayloadTypeEnum anomaly =
      _$windowStatePayloadTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WindowStatePayloadTypeEnum unknownDefaultOpenApi =
      _$windowStatePayloadTypeEnum_unknownDefaultOpenApi;

  static Serializer<WindowStatePayloadTypeEnum> get serializer =>
      _$windowStatePayloadTypeEnumSerializer;

  const WindowStatePayloadTypeEnum._(String name) : super(name);

  static BuiltSet<WindowStatePayloadTypeEnum> get values =>
      _$windowStatePayloadTypeEnumValues;
  static WindowStatePayloadTypeEnum valueOf(String name) =>
      _$windowStatePayloadTypeEnumValueOf(name);
}

class WindowStatePayloadStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const WindowStatePayloadStateEnum active =
      _$windowStatePayloadStateEnum_active;
  @BuiltValueEnumConst(wireName: r'clear')
  static const WindowStatePayloadStateEnum clear =
      _$windowStatePayloadStateEnum_clear;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const WindowStatePayloadStateEnum unknown =
      _$windowStatePayloadStateEnum_unknown;
  @BuiltValueEnumConst(wireName: r'learning')
  static const WindowStatePayloadStateEnum learning =
      _$windowStatePayloadStateEnum_learning;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WindowStatePayloadStateEnum unknownDefaultOpenApi =
      _$windowStatePayloadStateEnum_unknownDefaultOpenApi;

  static Serializer<WindowStatePayloadStateEnum> get serializer =>
      _$windowStatePayloadStateEnumSerializer;

  const WindowStatePayloadStateEnum._(String name) : super(name);

  static BuiltSet<WindowStatePayloadStateEnum> get values =>
      _$windowStatePayloadStateEnumValues;
  static WindowStatePayloadStateEnum valueOf(String name) =>
      _$windowStatePayloadStateEnumValueOf(name);
}
