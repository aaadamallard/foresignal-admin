//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hazard_forecast_probability_field_inner.g.dart';

/// Published probability band
///
/// Properties:
/// * [band]
/// * [pMin]
/// * [pMax]
/// * [geometry]
@BuiltValue()
abstract class HazardForecastProbabilityFieldInner
    implements
        Built<HazardForecastProbabilityFieldInner,
            HazardForecastProbabilityFieldInnerBuilder> {
  @BuiltValueField(wireName: r'band')
  String? get band;

  @BuiltValueField(wireName: r'pMin')
  num get pMin;

  @BuiltValueField(wireName: r'pMax')
  num? get pMax;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  HazardForecastProbabilityFieldInner._();

  factory HazardForecastProbabilityFieldInner(
          [void updates(HazardForecastProbabilityFieldInnerBuilder b)]) =
      _$HazardForecastProbabilityFieldInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HazardForecastProbabilityFieldInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HazardForecastProbabilityFieldInner> get serializer =>
      _$HazardForecastProbabilityFieldInnerSerializer();
}

class _$HazardForecastProbabilityFieldInnerSerializer
    implements PrimitiveSerializer<HazardForecastProbabilityFieldInner> {
  @override
  final Iterable<Type> types = const [
    HazardForecastProbabilityFieldInner,
    _$HazardForecastProbabilityFieldInner
  ];

  @override
  final String wireName = r'HazardForecastProbabilityFieldInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HazardForecastProbabilityFieldInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.band != null) {
      yield r'band';
      yield serializers.serialize(
        object.band,
        specifiedType: const FullType(String),
      );
    }
    yield r'pMin';
    yield serializers.serialize(
      object.pMin,
      specifiedType: const FullType(num),
    );
    if (object.pMax != null) {
      yield r'pMax';
      yield serializers.serialize(
        object.pMax,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType(Geometry),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HazardForecastProbabilityFieldInner object, {
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
    required HazardForecastProbabilityFieldInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'band':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.band = valueDes;
          break;
        case r'pMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.pMin = valueDes;
          break;
        case r'pMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pMax = valueDes;
          break;
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HazardForecastProbabilityFieldInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HazardForecastProbabilityFieldInnerBuilder();
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
