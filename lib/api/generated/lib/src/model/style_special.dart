//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style_special.g.dart';

/// Special value rendering
///
/// Properties:
/// * [kind]
/// * [color] - `transparent` or a colour
/// * [label]
@BuiltValue()
abstract class StyleSpecial
    implements Built<StyleSpecial, StyleSpecialBuilder> {
  @BuiltValueField(wireName: r'kind')
  StyleSpecialKindEnum get kind;
  // enum kindEnum {  noCoverage,  noEcho,  noData,  };

  /// `transparent` or a colour
  @BuiltValueField(wireName: r'color')
  String get color;

  @BuiltValueField(wireName: r'label')
  String get label;

  StyleSpecial._();

  factory StyleSpecial([void updates(StyleSpecialBuilder b)]) = _$StyleSpecial;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StyleSpecialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StyleSpecial> get serializer => _$StyleSpecialSerializer();
}

class _$StyleSpecialSerializer implements PrimitiveSerializer<StyleSpecial> {
  @override
  final Iterable<Type> types = const [StyleSpecial, _$StyleSpecial];

  @override
  final String wireName = r'StyleSpecial';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StyleSpecial object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(StyleSpecialKindEnum),
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
    StyleSpecial object, {
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
    required StyleSpecialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StyleSpecialKindEnum),
          ) as StyleSpecialKindEnum;
          result.kind = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
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
  StyleSpecial deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StyleSpecialBuilder();
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

class StyleSpecialKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'noCoverage')
  static const StyleSpecialKindEnum noCoverage =
      _$styleSpecialKindEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'noEcho')
  static const StyleSpecialKindEnum noEcho = _$styleSpecialKindEnum_noEcho;
  @BuiltValueEnumConst(wireName: r'noData')
  static const StyleSpecialKindEnum noData = _$styleSpecialKindEnum_noData;

  static Serializer<StyleSpecialKindEnum> get serializer =>
      _$styleSpecialKindEnumSerializer;

  const StyleSpecialKindEnum._(String name) : super(name);

  static BuiltSet<StyleSpecialKindEnum> get values =>
      _$styleSpecialKindEnumValues;
  static StyleSpecialKindEnum valueOf(String name) =>
      _$styleSpecialKindEnumValueOf(name);
}
