//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_area.dart';
import 'package:foresignal_api/src/model/capture_mode.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_layer_input.g.dart';

/// Add a layer to a chronicle
///
/// Properties:
/// * [name]
/// * [selector] - What a chronicle layer selects (one variant by `type`)
/// * [areaOverride]
/// * [capture]
/// * [enabled]
@BuiltValue()
abstract class ChronicleLayerInput
    implements Built<ChronicleLayerInput, ChronicleLayerInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// What a chronicle layer selects (one variant by `type`)
  @BuiltValueField(wireName: r'selector')
  JsonObject? get selector;

  @BuiltValueField(wireName: r'areaOverride')
  ChronicleArea? get areaOverride;

  @BuiltValueField(wireName: r'capture')
  CaptureMode get capture;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  ChronicleLayerInput._();

  factory ChronicleLayerInput([void updates(ChronicleLayerInputBuilder b)]) =
      _$ChronicleLayerInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLayerInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLayerInput> get serializer =>
      _$ChronicleLayerInputSerializer();
}

class _$ChronicleLayerInputSerializer
    implements PrimitiveSerializer<ChronicleLayerInput> {
  @override
  final Iterable<Type> types = const [
    ChronicleLayerInput,
    _$ChronicleLayerInput,
  ];

  @override
  final String wireName = r'ChronicleLayerInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLayerInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'selector';
    yield object.selector == null
        ? null
        : serializers.serialize(
            object.selector,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.areaOverride != null) {
      yield r'areaOverride';
      yield serializers.serialize(
        object.areaOverride,
        specifiedType: const FullType.nullable(ChronicleArea),
      );
    }
    yield r'capture';
    yield serializers.serialize(
      object.capture,
      specifiedType: const FullType(CaptureMode),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleLayerInput object, {
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
    required ChronicleLayerInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'selector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.selector = valueDes;
          break;
        case r'areaOverride':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChronicleArea),
                  )
                  as ChronicleArea?;
          if (valueDes == null) continue;
          result.areaOverride.replace(valueDes);
          break;
        case r'capture':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CaptureMode),
                  )
                  as CaptureMode;
          result.capture.replace(valueDes);
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleLayerInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLayerInputBuilder();
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
