//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/external_binding_preview_effects_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_binding_preview.g.dart';

/// What a binding would do over recent items (no side effects)
///
/// Properties:
/// * [evaluated]
/// * [matched]
/// * [effects]
/// * [errors]
@BuiltValue()
abstract class ExternalBindingPreview
    implements Built<ExternalBindingPreview, ExternalBindingPreviewBuilder> {
  @BuiltValueField(wireName: r'evaluated')
  int get evaluated;

  @BuiltValueField(wireName: r'matched')
  int get matched;

  @BuiltValueField(wireName: r'effects')
  BuiltList<ExternalBindingPreviewEffectsInner> get effects;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  ExternalBindingPreview._();

  factory ExternalBindingPreview(
          [void updates(ExternalBindingPreviewBuilder b)]) =
      _$ExternalBindingPreview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalBindingPreviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalBindingPreview> get serializer =>
      _$ExternalBindingPreviewSerializer();
}

class _$ExternalBindingPreviewSerializer
    implements PrimitiveSerializer<ExternalBindingPreview> {
  @override
  final Iterable<Type> types = const [
    ExternalBindingPreview,
    _$ExternalBindingPreview
  ];

  @override
  final String wireName = r'ExternalBindingPreview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalBindingPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'evaluated';
    yield serializers.serialize(
      object.evaluated,
      specifiedType: const FullType(int),
    );
    yield r'matched';
    yield serializers.serialize(
      object.matched,
      specifiedType: const FullType(int),
    );
    yield r'effects';
    yield serializers.serialize(
      object.effects,
      specifiedType: const FullType(
          BuiltList, [FullType(ExternalBindingPreviewEffectsInner)]),
    );
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalBindingPreview object, {
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
    required ExternalBindingPreviewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'evaluated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.evaluated = valueDes;
          break;
        case r'matched':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.matched = valueDes;
          break;
        case r'effects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ExternalBindingPreviewEffectsInner)]),
          ) as BuiltList<ExternalBindingPreviewEffectsInner>;
          result.effects.replace(valueDes);
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalBindingPreview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalBindingPreviewBuilder();
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
