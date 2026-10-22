//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_score_interval_hits.g.dart';

/// Whether the outcome fell inside the central intervals (numeric)
///
/// Properties:
/// * [p05p95]
/// * [p25p75]
@BuiltValue()
abstract class ForecastScoreIntervalHits
    implements
        Built<ForecastScoreIntervalHits, ForecastScoreIntervalHitsBuilder> {
  @BuiltValueField(wireName: r'p05p95')
  bool? get p05p95;

  @BuiltValueField(wireName: r'p25p75')
  bool? get p25p75;

  ForecastScoreIntervalHits._();

  factory ForecastScoreIntervalHits([
    void updates(ForecastScoreIntervalHitsBuilder b),
  ]) = _$ForecastScoreIntervalHits;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastScoreIntervalHitsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastScoreIntervalHits> get serializer =>
      _$ForecastScoreIntervalHitsSerializer();
}

class _$ForecastScoreIntervalHitsSerializer
    implements PrimitiveSerializer<ForecastScoreIntervalHits> {
  @override
  final Iterable<Type> types = const [
    ForecastScoreIntervalHits,
    _$ForecastScoreIntervalHits,
  ];

  @override
  final String wireName = r'ForecastScoreIntervalHits';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastScoreIntervalHits object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.p05p95 != null) {
      yield r'p05p95';
      yield serializers.serialize(
        object.p05p95,
        specifiedType: const FullType(bool),
      );
    }
    if (object.p25p75 != null) {
      yield r'p25p75';
      yield serializers.serialize(
        object.p25p75,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastScoreIntervalHits object, {
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
    required ForecastScoreIntervalHitsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p05p95':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.p05p95 = valueDes;
          break;
        case r'p25p75':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.p25p75 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastScoreIntervalHits deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastScoreIntervalHitsBuilder();
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
