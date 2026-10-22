//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_test_result_lag.g.dart';

/// Lag distribution of hits (ISO-8601 durations)
///
/// Properties:
/// * [min]
/// * [p25]
/// * [median]
/// * [p75]
/// * [max]
/// * [mean]
@BuiltValue()
abstract class PrecursorTestResultLag
    implements Built<PrecursorTestResultLag, PrecursorTestResultLagBuilder> {
  @BuiltValueField(wireName: r'min')
  String? get min;

  @BuiltValueField(wireName: r'p25')
  String? get p25;

  @BuiltValueField(wireName: r'median')
  String? get median;

  @BuiltValueField(wireName: r'p75')
  String? get p75;

  @BuiltValueField(wireName: r'max')
  String? get max;

  @BuiltValueField(wireName: r'mean')
  String? get mean;

  PrecursorTestResultLag._();

  factory PrecursorTestResultLag(
          [void updates(PrecursorTestResultLagBuilder b)]) =
      _$PrecursorTestResultLag;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorTestResultLagBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorTestResultLag> get serializer =>
      _$PrecursorTestResultLagSerializer();
}

class _$PrecursorTestResultLagSerializer
    implements PrimitiveSerializer<PrecursorTestResultLag> {
  @override
  final Iterable<Type> types = const [
    PrecursorTestResultLag,
    _$PrecursorTestResultLag
  ];

  @override
  final String wireName = r'PrecursorTestResultLag';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorTestResultLag object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.p25 != null) {
      yield r'p25';
      yield serializers.serialize(
        object.p25,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.median != null) {
      yield r'median';
      yield serializers.serialize(
        object.median,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.p75 != null) {
      yield r'p75';
      yield serializers.serialize(
        object.p75,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.mean != null) {
      yield r'mean';
      yield serializers.serialize(
        object.mean,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestResultLag object, {
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
    required PrecursorTestResultLagBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.min = valueDes;
          break;
        case r'p25':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.p25 = valueDes;
          break;
        case r'median':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.median = valueDes;
          break;
        case r'p75':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.p75 = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.max = valueDes;
          break;
        case r'mean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mean = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorTestResultLag deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorTestResultLagBuilder();
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
