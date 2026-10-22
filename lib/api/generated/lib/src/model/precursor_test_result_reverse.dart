//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_test_result_reverse.g.dart';

/// Same test with roles swapped
///
/// Properties:
/// * [hits]
/// * [hitRate]
/// * [lift]
/// * [pValue]
@BuiltValue()
abstract class PrecursorTestResultReverse
    implements
        Built<PrecursorTestResultReverse, PrecursorTestResultReverseBuilder> {
  @BuiltValueField(wireName: r'hits')
  int? get hits;

  @BuiltValueField(wireName: r'hitRate')
  num? get hitRate;

  @BuiltValueField(wireName: r'lift')
  num? get lift;

  @BuiltValueField(wireName: r'pValue')
  num? get pValue;

  PrecursorTestResultReverse._();

  factory PrecursorTestResultReverse([
    void updates(PrecursorTestResultReverseBuilder b),
  ]) = _$PrecursorTestResultReverse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorTestResultReverseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorTestResultReverse> get serializer =>
      _$PrecursorTestResultReverseSerializer();
}

class _$PrecursorTestResultReverseSerializer
    implements PrimitiveSerializer<PrecursorTestResultReverse> {
  @override
  final Iterable<Type> types = const [
    PrecursorTestResultReverse,
    _$PrecursorTestResultReverse,
  ];

  @override
  final String wireName = r'PrecursorTestResultReverse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorTestResultReverse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hits != null) {
      yield r'hits';
      yield serializers.serialize(
        object.hits,
        specifiedType: const FullType(int),
      );
    }
    if (object.hitRate != null) {
      yield r'hitRate';
      yield serializers.serialize(
        object.hitRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.lift != null) {
      yield r'lift';
      yield serializers.serialize(
        object.lift,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.pValue != null) {
      yield r'pValue';
      yield serializers.serialize(
        object.pValue,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestResultReverse object, {
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
    required PrecursorTestResultReverseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hits':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.hits = valueDes;
          break;
        case r'hitRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.hitRate = valueDes;
          break;
        case r'lift':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.lift = valueDes;
          break;
        case r'pValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.pValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorTestResultReverse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorTestResultReverseBuilder();
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
