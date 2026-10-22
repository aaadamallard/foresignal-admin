//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coordination_indicator.g.dart';

/// One coordination statistic against its null model
///
/// Properties:
/// * [value]
/// * [nullExpectation]
/// * [pValue]
/// * [qValue] - Benjamini–Hochberg adjusted across the day's narratives
/// * [n]
/// * [available] - False when the platform does not provide the data (e.g. account creation dates)
@BuiltValue()
abstract class CoordinationIndicator
    implements Built<CoordinationIndicator, CoordinationIndicatorBuilder> {
  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'nullExpectation')
  num? get nullExpectation;

  @BuiltValueField(wireName: r'pValue')
  num? get pValue;

  /// Benjamini–Hochberg adjusted across the day's narratives
  @BuiltValueField(wireName: r'qValue')
  num? get qValue;

  @BuiltValueField(wireName: r'n')
  int? get n;

  /// False when the platform does not provide the data (e.g. account creation dates)
  @BuiltValueField(wireName: r'available')
  bool get available;

  CoordinationIndicator._();

  factory CoordinationIndicator(
      [void updates(CoordinationIndicatorBuilder b)]) = _$CoordinationIndicator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoordinationIndicatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoordinationIndicator> get serializer =>
      _$CoordinationIndicatorSerializer();
}

class _$CoordinationIndicatorSerializer
    implements PrimitiveSerializer<CoordinationIndicator> {
  @override
  final Iterable<Type> types = const [
    CoordinationIndicator,
    _$CoordinationIndicator
  ];

  @override
  final String wireName = r'CoordinationIndicator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoordinationIndicator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield object.value == null
        ? null
        : serializers.serialize(
            object.value,
            specifiedType: const FullType.nullable(num),
          );
    yield r'nullExpectation';
    yield object.nullExpectation == null
        ? null
        : serializers.serialize(
            object.nullExpectation,
            specifiedType: const FullType.nullable(num),
          );
    yield r'pValue';
    yield object.pValue == null
        ? null
        : serializers.serialize(
            object.pValue,
            specifiedType: const FullType.nullable(num),
          );
    if (object.qValue != null) {
      yield r'qValue';
      yield serializers.serialize(
        object.qValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType(int),
      );
    }
    yield r'available';
    yield serializers.serialize(
      object.available,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CoordinationIndicator object, {
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
    required CoordinationIndicatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'nullExpectation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nullExpectation = valueDes;
          break;
        case r'pValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pValue = valueDes;
          break;
        case r'qValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.qValue = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        case r'available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.available = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CoordinationIndicator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoordinationIndicatorBuilder();
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
