//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_input_attributes.g.dart';

/// PlaceInputAttributes
///
/// Properties:
/// * [zip] - US ZIP for EPA UV (106)
@BuiltValue()
abstract class PlaceInputAttributes
    implements Built<PlaceInputAttributes, PlaceInputAttributesBuilder> {
  /// US ZIP for EPA UV (106)
  @BuiltValueField(wireName: r'zip')
  String? get zip;

  PlaceInputAttributes._();

  factory PlaceInputAttributes([void updates(PlaceInputAttributesBuilder b)]) =
      _$PlaceInputAttributes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceInputAttributesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceInputAttributes> get serializer =>
      _$PlaceInputAttributesSerializer();
}

class _$PlaceInputAttributesSerializer
    implements PrimitiveSerializer<PlaceInputAttributes> {
  @override
  final Iterable<Type> types = const [
    PlaceInputAttributes,
    _$PlaceInputAttributes
  ];

  @override
  final String wireName = r'PlaceInputAttributes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceInputAttributes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.zip != null) {
      yield r'zip';
      yield serializers.serialize(
        object.zip,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceInputAttributes object, {
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
    required PlaceInputAttributesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'zip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.zip = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceInputAttributes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceInputAttributesBuilder();
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
