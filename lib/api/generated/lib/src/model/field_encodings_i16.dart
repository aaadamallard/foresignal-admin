//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_encodings_i16.g.dart';

/// 108: planar little-endian int16 u, v
///
/// Properties:
/// * [url]
/// * [scale]
/// * [offset]
@BuiltValue()
abstract class FieldEncodingsI16
    implements Built<FieldEncodingsI16, FieldEncodingsI16Builder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'scale')
  num? get scale;

  @BuiltValueField(wireName: r'offset')
  num? get offset;

  FieldEncodingsI16._();

  factory FieldEncodingsI16([void updates(FieldEncodingsI16Builder b)]) =
      _$FieldEncodingsI16;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldEncodingsI16Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldEncodingsI16> get serializer =>
      _$FieldEncodingsI16Serializer();
}

class _$FieldEncodingsI16Serializer
    implements PrimitiveSerializer<FieldEncodingsI16> {
  @override
  final Iterable<Type> types = const [FieldEncodingsI16, _$FieldEncodingsI16];

  @override
  final String wireName = r'FieldEncodingsI16';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldEncodingsI16 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.scale != null) {
      yield r'scale';
      yield serializers.serialize(
        object.scale,
        specifiedType: const FullType(num),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldEncodingsI16 object, {
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
    required FieldEncodingsI16Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'scale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.scale = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.offset = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldEncodingsI16 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldEncodingsI16Builder();
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
