//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_lag_distribution.g.dart';

/// Lag quartiles of hits
///
/// Properties:
/// * [p25] - ISO-8601 duration
/// * [median] - ISO-8601 duration
/// * [p75] - ISO-8601 duration
@BuiltValue()
abstract class PrecursorLagDistribution
    implements
        Built<PrecursorLagDistribution, PrecursorLagDistributionBuilder> {
  /// ISO-8601 duration
  @BuiltValueField(wireName: r'p25')
  String? get p25;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'median')
  String? get median;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'p75')
  String? get p75;

  PrecursorLagDistribution._();

  factory PrecursorLagDistribution([
    void updates(PrecursorLagDistributionBuilder b),
  ]) = _$PrecursorLagDistribution;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorLagDistributionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorLagDistribution> get serializer =>
      _$PrecursorLagDistributionSerializer();
}

class _$PrecursorLagDistributionSerializer
    implements PrimitiveSerializer<PrecursorLagDistribution> {
  @override
  final Iterable<Type> types = const [
    PrecursorLagDistribution,
    _$PrecursorLagDistribution,
  ];

  @override
  final String wireName = r'PrecursorLagDistribution';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorLagDistribution object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.p25 != null) {
      yield r'p25';
      yield serializers.serialize(
        object.p25,
        specifiedType: const FullType(String),
      );
    }
    if (object.median != null) {
      yield r'median';
      yield serializers.serialize(
        object.median,
        specifiedType: const FullType(String),
      );
    }
    if (object.p75 != null) {
      yield r'p75';
      yield serializers.serialize(
        object.p75,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorLagDistribution object, {
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
    required PrecursorLagDistributionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p25':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.p25 = valueDes;
          break;
        case r'median':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.median = valueDes;
          break;
        case r'p75':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.p75 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorLagDistribution deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorLagDistributionBuilder();
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
