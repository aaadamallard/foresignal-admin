//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_area.dart';
import 'package:foresignal_api/src/model/capture_mode.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_layer_patch.g.dart';

/// JSON merge patch for a chronicle layer; applies from the edit's seq onward
///
/// Properties:
/// * [name]
/// * [selector] - What a chronicle layer selects (one variant by `type`)
/// * [areaOverride]
/// * [capture]
/// * [enabled]
@BuiltValue()
abstract class ChronicleLayerPatch
    implements Built<ChronicleLayerPatch, ChronicleLayerPatchBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// What a chronicle layer selects (one variant by `type`)
  @BuiltValueField(wireName: r'selector')
  JsonObject? get selector;

  @BuiltValueField(wireName: r'areaOverride')
  ChronicleArea? get areaOverride;

  @BuiltValueField(wireName: r'capture')
  CaptureMode? get capture;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  ChronicleLayerPatch._();

  factory ChronicleLayerPatch([void updates(ChronicleLayerPatchBuilder b)]) =
      _$ChronicleLayerPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLayerPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLayerPatch> get serializer =>
      _$ChronicleLayerPatchSerializer();
}

class _$ChronicleLayerPatchSerializer
    implements PrimitiveSerializer<ChronicleLayerPatch> {
  @override
  final Iterable<Type> types = const [
    ChronicleLayerPatch,
    _$ChronicleLayerPatch,
  ];

  @override
  final String wireName = r'ChronicleLayerPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLayerPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.areaOverride != null) {
      yield r'areaOverride';
      yield serializers.serialize(
        object.areaOverride,
        specifiedType: const FullType.nullable(ChronicleArea),
      );
    }
    if (object.capture != null) {
      yield r'capture';
      yield serializers.serialize(
        object.capture,
        specifiedType: const FullType(CaptureMode),
      );
    }
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
    ChronicleLayerPatch object, {
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
    required ChronicleLayerPatchBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
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
                    specifiedType: const FullType.nullable(CaptureMode),
                  )
                  as CaptureMode?;
          if (valueDes == null) continue;
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
  ChronicleLayerPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLayerPatchBuilder();
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
