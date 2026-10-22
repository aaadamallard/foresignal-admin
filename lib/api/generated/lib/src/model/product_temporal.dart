//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/product_temporal_retention.dart';
import 'package:foresignal_api/src/model/product_temporal_runs_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_temporal.g.dart';

/// Temporal facts of a product: frame type, cadence, gap tolerance, available range, retention and runs
///
/// Properties:
/// * [type] - observation: one frame per scan; forecast: runs of steps; pass: one frame per satellite pass
/// * [cadence] - Nominal interval between frames (forecasts: between steps). Absent for an external catalog entry without a fixed time dimension
/// * [maxGap] - Largest gap at which a frame still counts as current (`now` alias, sampling `stale`). Absent for an external catalog entry without a fixed time dimension
/// * [earliest] - Valid time of the oldest retained frame
/// * [latest] - Valid time of the newest complete frame
/// * [retention]
/// * [runs] - Forecast runs, newest first (forecast products only)
@BuiltValue()
abstract class ProductTemporal
    implements Built<ProductTemporal, ProductTemporalBuilder> {
  /// observation: one frame per scan; forecast: runs of steps; pass: one frame per satellite pass
  @BuiltValueField(wireName: r'type')
  ProductTemporalTypeEnum get type;
  // enum typeEnum {  observation,  forecast,  pass,  };

  /// Nominal interval between frames (forecasts: between steps). Absent for an external catalog entry without a fixed time dimension
  @BuiltValueField(wireName: r'cadence')
  String? get cadence;

  /// Largest gap at which a frame still counts as current (`now` alias, sampling `stale`). Absent for an external catalog entry without a fixed time dimension
  @BuiltValueField(wireName: r'maxGap')
  String? get maxGap;

  /// Valid time of the oldest retained frame
  @BuiltValueField(wireName: r'earliest')
  DateTime? get earliest;

  /// Valid time of the newest complete frame
  @BuiltValueField(wireName: r'latest')
  DateTime? get latest;

  @BuiltValueField(wireName: r'retention')
  ProductTemporalRetention? get retention;

  /// Forecast runs, newest first (forecast products only)
  @BuiltValueField(wireName: r'runs')
  BuiltList<ProductTemporalRunsInner>? get runs;

  ProductTemporal._();

  factory ProductTemporal([void updates(ProductTemporalBuilder b)]) =
      _$ProductTemporal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductTemporalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductTemporal> get serializer =>
      _$ProductTemporalSerializer();
}

class _$ProductTemporalSerializer
    implements PrimitiveSerializer<ProductTemporal> {
  @override
  final Iterable<Type> types = const [ProductTemporal, _$ProductTemporal];

  @override
  final String wireName = r'ProductTemporal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductTemporal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ProductTemporalTypeEnum),
    );
    if (object.cadence != null) {
      yield r'cadence';
      yield serializers.serialize(
        object.cadence,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxGap != null) {
      yield r'maxGap';
      yield serializers.serialize(
        object.maxGap,
        specifiedType: const FullType(String),
      );
    }
    if (object.earliest != null) {
      yield r'earliest';
      yield serializers.serialize(
        object.earliest,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.latest != null) {
      yield r'latest';
      yield serializers.serialize(
        object.latest,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.retention != null) {
      yield r'retention';
      yield serializers.serialize(
        object.retention,
        specifiedType: const FullType(ProductTemporalRetention),
      );
    }
    if (object.runs != null) {
      yield r'runs';
      yield serializers.serialize(
        object.runs,
        specifiedType: const FullType(BuiltList, [
          FullType(ProductTemporalRunsInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductTemporal object, {
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
    required ProductTemporalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ProductTemporalTypeEnum),
                  )
                  as ProductTemporalTypeEnum;
          result.type = valueDes;
          break;
        case r'cadence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cadence = valueDes;
          break;
        case r'maxGap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.maxGap = valueDes;
          break;
        case r'earliest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.earliest = valueDes;
          break;
        case r'latest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.latest = valueDes;
          break;
        case r'retention':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ProductTemporalRetention,
                    ),
                  )
                  as ProductTemporalRetention?;
          if (valueDes == null) continue;
          result.retention.replace(valueDes);
          break;
        case r'runs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProductTemporalRunsInner),
                    ]),
                  )
                  as BuiltList<ProductTemporalRunsInner>?;
          if (valueDes == null) continue;
          result.runs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductTemporal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductTemporalBuilder();
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

/// observation: one frame per scan; forecast: runs of steps; pass: one frame per satellite pass
class ProductTemporalTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'observation')
  static const ProductTemporalTypeEnum observation =
      _$productTemporalTypeEnum_observation;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const ProductTemporalTypeEnum forecast =
      _$productTemporalTypeEnum_forecast;
  @BuiltValueEnumConst(wireName: r'pass')
  static const ProductTemporalTypeEnum pass = _$productTemporalTypeEnum_pass;

  static Serializer<ProductTemporalTypeEnum> get serializer =>
      _$productTemporalTypeEnumSerializer;

  const ProductTemporalTypeEnum._(String name) : super(name);

  static BuiltSet<ProductTemporalTypeEnum> get values =>
      _$productTemporalTypeEnumValues;
  static ProductTemporalTypeEnum valueOf(String name) =>
      _$productTemporalTypeEnumValueOf(name);
}
