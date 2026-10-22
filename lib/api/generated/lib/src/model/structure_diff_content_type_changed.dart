//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structure_diff_content_type_changed.g.dart';

/// Content type change
///
/// Properties:
/// * [from]
/// * [to]
@BuiltValue()
abstract class StructureDiffContentTypeChanged
    implements
        Built<StructureDiffContentTypeChanged,
            StructureDiffContentTypeChangedBuilder> {
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  StructureDiffContentTypeChanged._();

  factory StructureDiffContentTypeChanged(
          [void updates(StructureDiffContentTypeChangedBuilder b)]) =
      _$StructureDiffContentTypeChanged;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructureDiffContentTypeChangedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructureDiffContentTypeChanged> get serializer =>
      _$StructureDiffContentTypeChangedSerializer();
}

class _$StructureDiffContentTypeChangedSerializer
    implements PrimitiveSerializer<StructureDiffContentTypeChanged> {
  @override
  final Iterable<Type> types = const [
    StructureDiffContentTypeChanged,
    _$StructureDiffContentTypeChanged
  ];

  @override
  final String wireName = r'StructureDiffContentTypeChanged';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructureDiffContentTypeChanged object, {
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
    StructureDiffContentTypeChanged object, {
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
    required StructureDiffContentTypeChangedBuilder result,
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
  StructureDiffContentTypeChanged deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructureDiffContentTypeChangedBuilder();
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
