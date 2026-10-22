//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_field_unit.g.dart';

/// Unit conversion from the built-in UCUM table; unknown pairs fail validation
///
/// Properties:
/// * [from]
/// * [to]
@BuiltValue()
abstract class MappingFieldUnit
    implements Built<MappingFieldUnit, MappingFieldUnitBuilder> {
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  MappingFieldUnit._();

  factory MappingFieldUnit([void updates(MappingFieldUnitBuilder b)]) =
      _$MappingFieldUnit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingFieldUnitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingFieldUnit> get serializer =>
      _$MappingFieldUnitSerializer();
}

class _$MappingFieldUnitSerializer
    implements PrimitiveSerializer<MappingFieldUnit> {
  @override
  final Iterable<Type> types = const [MappingFieldUnit, _$MappingFieldUnit];

  @override
  final String wireName = r'MappingFieldUnit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingFieldUnit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingFieldUnit object, {
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
    required MappingFieldUnitBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingFieldUnit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingFieldUnitBuilder();
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
