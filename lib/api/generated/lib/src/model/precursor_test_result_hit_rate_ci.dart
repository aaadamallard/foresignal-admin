//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_test_result_hit_rate_ci.g.dart';

/// Wilson 95% interval
///
/// Properties:
/// * [lower]
/// * [upper]
/// * [method]
@BuiltValue()
abstract class PrecursorTestResultHitRateCi
    implements
        Built<
          PrecursorTestResultHitRateCi,
          PrecursorTestResultHitRateCiBuilder
        > {
  @BuiltValueField(wireName: r'lower')
  num? get lower;

  @BuiltValueField(wireName: r'upper')
  num? get upper;

  @BuiltValueField(wireName: r'method')
  PrecursorTestResultHitRateCiMethodEnum? get method;
  // enum methodEnum {  wilson-95,  };

  PrecursorTestResultHitRateCi._();

  factory PrecursorTestResultHitRateCi([
    void updates(PrecursorTestResultHitRateCiBuilder b),
  ]) = _$PrecursorTestResultHitRateCi;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorTestResultHitRateCiBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorTestResultHitRateCi> get serializer =>
      _$PrecursorTestResultHitRateCiSerializer();
}

class _$PrecursorTestResultHitRateCiSerializer
    implements PrimitiveSerializer<PrecursorTestResultHitRateCi> {
  @override
  final Iterable<Type> types = const [
    PrecursorTestResultHitRateCi,
    _$PrecursorTestResultHitRateCi,
  ];

  @override
  final String wireName = r'PrecursorTestResultHitRateCi';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorTestResultHitRateCi object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lower != null) {
      yield r'lower';
      yield serializers.serialize(
        object.lower,
        specifiedType: const FullType(num),
      );
    }
    if (object.upper != null) {
      yield r'upper';
      yield serializers.serialize(
        object.upper,
        specifiedType: const FullType(num),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(PrecursorTestResultHitRateCiMethodEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestResultHitRateCi object, {
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
    required PrecursorTestResultHitRateCiBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lower':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.lower = valueDes;
          break;
        case r'upper':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.upper = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PrecursorTestResultHitRateCiMethodEnum,
                    ),
                  )
                  as PrecursorTestResultHitRateCiMethodEnum?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorTestResultHitRateCi deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorTestResultHitRateCiBuilder();
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

class PrecursorTestResultHitRateCiMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wilson-95')
  static const PrecursorTestResultHitRateCiMethodEnum wilson95 =
      _$precursorTestResultHitRateCiMethodEnum_wilson95;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PrecursorTestResultHitRateCiMethodEnum unknownDefaultOpenApi =
      _$precursorTestResultHitRateCiMethodEnum_unknownDefaultOpenApi;

  static Serializer<PrecursorTestResultHitRateCiMethodEnum> get serializer =>
      _$precursorTestResultHitRateCiMethodEnumSerializer;

  const PrecursorTestResultHitRateCiMethodEnum._(String name) : super(name);

  static BuiltSet<PrecursorTestResultHitRateCiMethodEnum> get values =>
      _$precursorTestResultHitRateCiMethodEnumValues;
  static PrecursorTestResultHitRateCiMethodEnum valueOf(String name) =>
      _$precursorTestResultHitRateCiMethodEnumValueOf(name);
}
