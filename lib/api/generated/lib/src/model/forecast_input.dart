//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/quantiles.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_citations_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_input.g.dart';

/// Submit a forecast; exactly one of probability, distribution or quantiles matching the question type
///
/// Properties:
/// * [probability] - Binary questions
/// * [distribution] - Multiple/ordered: outcome label → probability, summing to 1 ± 1e-6
/// * [quantiles] - Numeric: p05, p10, p25, p50, p75, p90, p95, monotone
/// * [rationale]
/// * [citations]
/// * [forecasterId] - Agent scope only: another registered `operator` or `external` forecaster
@BuiltValue()
abstract class ForecastInput
    implements Built<ForecastInput, ForecastInputBuilder> {
  /// Binary questions
  @BuiltValueField(wireName: r'probability')
  num? get probability;

  /// Multiple/ordered: outcome label → probability, summing to 1 ± 1e-6
  @BuiltValueField(wireName: r'distribution')
  BuiltMap<String, num>? get distribution;

  /// Numeric: p05, p10, p25, p50, p75, p90, p95, monotone
  @BuiltValueField(wireName: r'quantiles')
  Quantiles? get quantiles;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  @BuiltValueField(wireName: r'citations')
  BuiltList<ForecastCitationsInner>? get citations;

  /// Agent scope only: another registered `operator` or `external` forecaster
  @BuiltValueField(wireName: r'forecasterId')
  String? get forecasterId;

  ForecastInput._();

  factory ForecastInput([void updates(ForecastInputBuilder b)]) =
      _$ForecastInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastInput> get serializer =>
      _$ForecastInputSerializer();
}

class _$ForecastInputSerializer implements PrimitiveSerializer<ForecastInput> {
  @override
  final Iterable<Type> types = const [ForecastInput, _$ForecastInput];

  @override
  final String wireName = r'ForecastInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.distribution != null) {
      yield r'distribution';
      yield serializers.serialize(
        object.distribution,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(num)]),
      );
    }
    if (object.quantiles != null) {
      yield r'quantiles';
      yield serializers.serialize(
        object.quantiles,
        specifiedType: const FullType.nullable(Quantiles),
      );
    }
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType:
            const FullType(BuiltList, [FullType(ForecastCitationsInner)]),
      );
    }
    if (object.forecasterId != null) {
      yield r'forecasterId';
      yield serializers.serialize(
        object.forecasterId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastInput object, {
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
    required ForecastInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'probability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'distribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(num)]),
          ) as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.distribution.replace(valueDes);
          break;
        case r'quantiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Quantiles),
          ) as Quantiles?;
          if (valueDes == null) continue;
          result.quantiles.replace(valueDes);
          break;
        case r'rationale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        case r'citations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ForecastCitationsInner)]),
          ) as BuiltList<ForecastCitationsInner>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'forecasterId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.forecasterId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastInputBuilder();
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
