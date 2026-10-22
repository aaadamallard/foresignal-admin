//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_test_result_multiple_testing.g.dart';

/// Tests run on this instance in the last 30 days
///
/// Properties:
/// * [testsLast30d]
/// * [bonferroniPValue]
@BuiltValue()
abstract class PrecursorTestResultMultipleTesting
    implements
        Built<PrecursorTestResultMultipleTesting,
            PrecursorTestResultMultipleTestingBuilder> {
  @BuiltValueField(wireName: r'testsLast30d')
  int? get testsLast30d;

  @BuiltValueField(wireName: r'bonferroniPValue')
  num? get bonferroniPValue;

  PrecursorTestResultMultipleTesting._();

  factory PrecursorTestResultMultipleTesting(
          [void updates(PrecursorTestResultMultipleTestingBuilder b)]) =
      _$PrecursorTestResultMultipleTesting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorTestResultMultipleTestingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorTestResultMultipleTesting> get serializer =>
      _$PrecursorTestResultMultipleTestingSerializer();
}

class _$PrecursorTestResultMultipleTestingSerializer
    implements PrimitiveSerializer<PrecursorTestResultMultipleTesting> {
  @override
  final Iterable<Type> types = const [
    PrecursorTestResultMultipleTesting,
    _$PrecursorTestResultMultipleTesting
  ];

  @override
  final String wireName = r'PrecursorTestResultMultipleTesting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorTestResultMultipleTesting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.testsLast30d != null) {
      yield r'testsLast30d';
      yield serializers.serialize(
        object.testsLast30d,
        specifiedType: const FullType(int),
      );
    }
    if (object.bonferroniPValue != null) {
      yield r'bonferroniPValue';
      yield serializers.serialize(
        object.bonferroniPValue,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestResultMultipleTesting object, {
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
    required PrecursorTestResultMultipleTestingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'testsLast30d':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.testsLast30d = valueDes;
          break;
        case r'bonferroniPValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.bonferroniPValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorTestResultMultipleTesting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorTestResultMultipleTestingBuilder();
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
