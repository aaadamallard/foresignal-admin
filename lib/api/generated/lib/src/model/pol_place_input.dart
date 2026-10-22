//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_place_input.g.dart';

/// Set a place label (114)
///
/// Properties:
/// * [label]
@BuiltValue()
abstract class PolPlaceInput
    implements Built<PolPlaceInput, PolPlaceInputBuilder> {
  @BuiltValueField(wireName: r'label')
  String? get label;

  PolPlaceInput._();

  factory PolPlaceInput([void updates(PolPlaceInputBuilder b)]) =
      _$PolPlaceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolPlaceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolPlaceInput> get serializer =>
      _$PolPlaceInputSerializer();
}

class _$PolPlaceInputSerializer implements PrimitiveSerializer<PolPlaceInput> {
  @override
  final Iterable<Type> types = const [PolPlaceInput, _$PolPlaceInput];

  @override
  final String wireName = r'PolPlaceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolPlaceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'label';
    yield object.label == null
        ? null
        : serializers.serialize(
            object.label,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    PolPlaceInput object, {
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
    required PolPlaceInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  PolPlaceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolPlaceInputBuilder();
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
