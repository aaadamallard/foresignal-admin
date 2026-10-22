//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sample_track_request_points_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_track_request.g.dart';

/// Sample products along a track: a record (points from the 037 /track simplification over from/to) or ≤ 500 explicit points
///
/// Properties:
/// * [record] - `{sourceId}/{externalId}`
/// * [from]
/// * [to]
/// * [points]
/// * [products]
/// * [maxGap] - Nearest-frame tolerance; default per-product maxGap. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [run] - Forecast run for future times: latest | previous | <runIso>
/// * [units]
@BuiltValue()
abstract class SampleTrackRequest
    implements Built<SampleTrackRequest, SampleTrackRequestBuilder> {
  /// `{sourceId}/{externalId}`
  @BuiltValueField(wireName: r'record')
  String? get record;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'points')
  BuiltList<SampleTrackRequestPointsInner>? get points;

  @BuiltValueField(wireName: r'products')
  BuiltList<String> get products;

  /// Nearest-frame tolerance; default per-product maxGap. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'maxGap')
  String? get maxGap;

  /// Forecast run for future times: latest | previous | <runIso>
  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'units')
  SampleTrackRequestUnitsEnum? get units;
  // enum unitsEnum {  metric,  imperial,  };

  SampleTrackRequest._();

  factory SampleTrackRequest([void updates(SampleTrackRequestBuilder b)]) =
      _$SampleTrackRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleTrackRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleTrackRequest> get serializer =>
      _$SampleTrackRequestSerializer();
}

class _$SampleTrackRequestSerializer
    implements PrimitiveSerializer<SampleTrackRequest> {
  @override
  final Iterable<Type> types = const [SampleTrackRequest, _$SampleTrackRequest];

  @override
  final String wireName = r'SampleTrackRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleTrackRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.record != null) {
      yield r'record';
      yield serializers.serialize(
        object.record,
        specifiedType: const FullType(String),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.points != null) {
      yield r'points';
      yield serializers.serialize(
        object.points,
        specifiedType: const FullType(
            BuiltList, [FullType(SampleTrackRequestPointsInner)]),
      );
    }
    yield r'products';
    yield serializers.serialize(
      object.products,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.maxGap != null) {
      yield r'maxGap';
      yield serializers.serialize(
        object.maxGap,
        specifiedType: const FullType(String),
      );
    }
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType(String),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(SampleTrackRequestUnitsEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleTrackRequest object, {
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
    required SampleTrackRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'record':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.record = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SampleTrackRequestPointsInner)]),
          ) as BuiltList<SampleTrackRequestPointsInner>?;
          if (valueDes == null) continue;
          result.points.replace(valueDes);
          break;
        case r'products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.products.replace(valueDes);
          break;
        case r'maxGap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maxGap = valueDes;
          break;
        case r'run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SampleTrackRequestUnitsEnum),
          ) as SampleTrackRequestUnitsEnum?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SampleTrackRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleTrackRequestBuilder();
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

class SampleTrackRequestUnitsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'metric')
  static const SampleTrackRequestUnitsEnum metric =
      _$sampleTrackRequestUnitsEnum_metric;
  @BuiltValueEnumConst(wireName: r'imperial')
  static const SampleTrackRequestUnitsEnum imperial =
      _$sampleTrackRequestUnitsEnum_imperial;

  static Serializer<SampleTrackRequestUnitsEnum> get serializer =>
      _$sampleTrackRequestUnitsEnumSerializer;

  const SampleTrackRequestUnitsEnum._(String name) : super(name);

  static BuiltSet<SampleTrackRequestUnitsEnum> get values =>
      _$sampleTrackRequestUnitsEnumValues;
  static SampleTrackRequestUnitsEnum valueOf(String name) =>
      _$sampleTrackRequestUnitsEnumValueOf(name);
}
