//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_binding_preview_effects_inner.g.dart';

/// ExternalBindingPreviewEffectsInner
///
/// Properties:
/// * [itemRef]
/// * [action]
/// * [targetRef]
@BuiltValue()
abstract class ExternalBindingPreviewEffectsInner
    implements
        Built<ExternalBindingPreviewEffectsInner,
            ExternalBindingPreviewEffectsInnerBuilder> {
  @BuiltValueField(wireName: r'itemRef')
  String? get itemRef;

  @BuiltValueField(wireName: r'action')
  String? get action;

  @BuiltValueField(wireName: r'targetRef')
  String? get targetRef;

  ExternalBindingPreviewEffectsInner._();

  factory ExternalBindingPreviewEffectsInner(
          [void updates(ExternalBindingPreviewEffectsInnerBuilder b)]) =
      _$ExternalBindingPreviewEffectsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalBindingPreviewEffectsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalBindingPreviewEffectsInner> get serializer =>
      _$ExternalBindingPreviewEffectsInnerSerializer();
}

class _$ExternalBindingPreviewEffectsInnerSerializer
    implements PrimitiveSerializer<ExternalBindingPreviewEffectsInner> {
  @override
  final Iterable<Type> types = const [
    ExternalBindingPreviewEffectsInner,
    _$ExternalBindingPreviewEffectsInner
  ];

  @override
  final String wireName = r'ExternalBindingPreviewEffectsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalBindingPreviewEffectsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.itemRef != null) {
      yield r'itemRef';
      yield serializers.serialize(
        object.itemRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.targetRef != null) {
      yield r'targetRef';
      yield serializers.serialize(
        object.targetRef,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalBindingPreviewEffectsInner object, {
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
    required ExternalBindingPreviewEffectsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'itemRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.itemRef = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.action = valueDes;
          break;
        case r'targetRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.targetRef = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalBindingPreviewEffectsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalBindingPreviewEffectsInnerBuilder();
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
