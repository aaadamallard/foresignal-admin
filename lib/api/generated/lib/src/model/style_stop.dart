//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style_stop.g.dart';

/// Colour stop of a continuous or discrete style
///
/// Properties:
/// * [value]
/// * [color]
/// * [label]
@BuiltValue()
abstract class StyleStop implements Built<StyleStop, StyleStopBuilder> {
  @BuiltValueField(wireName: r'value')
  num get value;

  @BuiltValueField(wireName: r'color')
  String get color;

  @BuiltValueField(wireName: r'label')
  String? get label;

  StyleStop._();

  factory StyleStop([void updates(StyleStopBuilder b)]) = _$StyleStop;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StyleStopBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StyleStop> get serializer => _$StyleStopSerializer();
}

class _$StyleStopSerializer implements PrimitiveSerializer<StyleStop> {
  @override
  final Iterable<Type> types = const [StyleStop, _$StyleStop];

  @override
  final String wireName = r'StyleStop';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StyleStop object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(num),
    );
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StyleStop object, {
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
    required StyleStopBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.value = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StyleStop deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StyleStopBuilder();
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
