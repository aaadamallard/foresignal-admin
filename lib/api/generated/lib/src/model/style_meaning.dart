//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style_meaning.g.dart';

/// Plain-language meaning of a value range
///
/// Properties:
/// * [min]
/// * [max]
/// * [text]
@BuiltValue()
abstract class StyleMeaning
    implements Built<StyleMeaning, StyleMeaningBuilder> {
  @BuiltValueField(wireName: r'min')
  num? get min;

  @BuiltValueField(wireName: r'max')
  num? get max;

  @BuiltValueField(wireName: r'text')
  String get text;

  StyleMeaning._();

  factory StyleMeaning([void updates(StyleMeaningBuilder b)]) = _$StyleMeaning;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StyleMeaningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StyleMeaning> get serializer => _$StyleMeaningSerializer();
}

class _$StyleMeaningSerializer implements PrimitiveSerializer<StyleMeaning> {
  @override
  final Iterable<Type> types = const [StyleMeaning, _$StyleMeaning];

  @override
  final String wireName = r'StyleMeaning';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StyleMeaning object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StyleMeaning object, {
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
    required StyleMeaningBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'min':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.min = valueDes;
          break;
        case r'max':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.max = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StyleMeaning deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StyleMeaningBuilder();
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
