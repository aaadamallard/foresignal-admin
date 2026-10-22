//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analog_result_signature.g.dart';

/// Signature used
///
/// Properties:
/// * [dayN]
/// * [computedAt]
@BuiltValue()
abstract class AnalogResultSignature
    implements Built<AnalogResultSignature, AnalogResultSignatureBuilder> {
  @BuiltValueField(wireName: r'dayN')
  int get dayN;

  @BuiltValueField(wireName: r'computedAt')
  DateTime? get computedAt;

  AnalogResultSignature._();

  factory AnalogResultSignature(
      [void updates(AnalogResultSignatureBuilder b)]) = _$AnalogResultSignature;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalogResultSignatureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalogResultSignature> get serializer =>
      _$AnalogResultSignatureSerializer();
}

class _$AnalogResultSignatureSerializer
    implements PrimitiveSerializer<AnalogResultSignature> {
  @override
  final Iterable<Type> types = const [
    AnalogResultSignature,
    _$AnalogResultSignature
  ];

  @override
  final String wireName = r'AnalogResultSignature';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalogResultSignature object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dayN';
    yield serializers.serialize(
      object.dayN,
      specifiedType: const FullType(int),
    );
    if (object.computedAt != null) {
      yield r'computedAt';
      yield serializers.serialize(
        object.computedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalogResultSignature object, {
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
    required AnalogResultSignatureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dayN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dayN = valueDes;
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalogResultSignature deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalogResultSignatureBuilder();
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
