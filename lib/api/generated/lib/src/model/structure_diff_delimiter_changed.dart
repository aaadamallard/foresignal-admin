//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structure_diff_delimiter_changed.g.dart';

/// Delimiter change
///
/// Properties:
/// * [from]
/// * [to]
@BuiltValue()
abstract class StructureDiffDelimiterChanged
    implements
        Built<StructureDiffDelimiterChanged,
            StructureDiffDelimiterChangedBuilder> {
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  StructureDiffDelimiterChanged._();

  factory StructureDiffDelimiterChanged(
          [void updates(StructureDiffDelimiterChangedBuilder b)]) =
      _$StructureDiffDelimiterChanged;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructureDiffDelimiterChangedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructureDiffDelimiterChanged> get serializer =>
      _$StructureDiffDelimiterChangedSerializer();
}

class _$StructureDiffDelimiterChangedSerializer
    implements PrimitiveSerializer<StructureDiffDelimiterChanged> {
  @override
  final Iterable<Type> types = const [
    StructureDiffDelimiterChanged,
    _$StructureDiffDelimiterChanged
  ];

  @override
  final String wireName = r'StructureDiffDelimiterChanged';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructureDiffDelimiterChanged object, {
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
    StructureDiffDelimiterChanged object, {
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
    required StructureDiffDelimiterChangedBuilder result,
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
  StructureDiffDelimiterChanged deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructureDiffDelimiterChangedBuilder();
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
