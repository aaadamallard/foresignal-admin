//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style_category.g.dart';

/// Category of a categorical style
///
/// Properties:
/// * [code]
/// * [color]
/// * [label]
@BuiltValue()
abstract class StyleCategory
    implements Built<StyleCategory, StyleCategoryBuilder> {
  @BuiltValueField(wireName: r'code')
  int get code;

  @BuiltValueField(wireName: r'color')
  String get color;

  @BuiltValueField(wireName: r'label')
  String get label;

  StyleCategory._();

  factory StyleCategory([void updates(StyleCategoryBuilder b)]) =
      _$StyleCategory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StyleCategoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StyleCategory> get serializer =>
      _$StyleCategorySerializer();
}

class _$StyleCategorySerializer implements PrimitiveSerializer<StyleCategory> {
  @override
  final Iterable<Type> types = const [StyleCategory, _$StyleCategory];

  @override
  final String wireName = r'StyleCategory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StyleCategory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(int),
    );
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StyleCategory object, {
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
    required StyleCategoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.code = valueDes;
          break;
        case r'color':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.color = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  StyleCategory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StyleCategoryBuilder();
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
