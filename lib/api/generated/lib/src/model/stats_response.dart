//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/stats_response_thresholds_inner.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/sample_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_response.g.dart';

/// Area statistics of one product frame
///
/// Properties:
/// * [productId]
/// * [frameKey]
/// * [validTime]
/// * [run]
/// * [ageMinutes]
/// * [units]
/// * [status]
/// * [statusText]
/// * [min]
/// * [max]
/// * [mean]
/// * [p95]
/// * [coveragePct]
/// * [areaKm2] - Area of the query geometry (spherical cell areas)
/// * [thresholds]
/// * [attribution]
@BuiltValue()
abstract class StatsResponse
    implements Built<StatsResponse, StatsResponseBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  @BuiltValueField(wireName: r'frameKey')
  String? get frameKey;

  @BuiltValueField(wireName: r'validTime')
  DateTime? get validTime;

  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'ageMinutes')
  num? get ageMinutes;

  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'status')
  SampleStatus get status;
  // enum statusEnum {  ok,  no-coverage,  no-data,  stale,  unavailable,  stale-position,  };

  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'min')
  num? get min;

  @BuiltValueField(wireName: r'max')
  num? get max;

  @BuiltValueField(wireName: r'mean')
  num? get mean;

  @BuiltValueField(wireName: r'p95')
  num? get p95;

  @BuiltValueField(wireName: r'coveragePct')
  num? get coveragePct;

  /// Area of the query geometry (spherical cell areas)
  @BuiltValueField(wireName: r'areaKm2')
  num? get areaKm2;

  @BuiltValueField(wireName: r'thresholds')
  BuiltList<StatsResponseThresholdsInner> get thresholds;

  @BuiltValueField(wireName: r'attribution')
  Attribution get attribution;

  StatsResponse._();

  factory StatsResponse([void updates(StatsResponseBuilder b)]) =
      _$StatsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsResponse> get serializer =>
      _$StatsResponseSerializer();
}

class _$StatsResponseSerializer implements PrimitiveSerializer<StatsResponse> {
  @override
  final Iterable<Type> types = const [StatsResponse, _$StatsResponse];

  @override
  final String wireName = r'StatsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    if (object.frameKey != null) {
      yield r'frameKey';
      yield serializers.serialize(
        object.frameKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.validTime != null) {
      yield r'validTime';
      yield serializers.serialize(
        object.validTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ageMinutes != null) {
      yield r'ageMinutes';
      yield serializers.serialize(
        object.ageMinutes,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SampleStatus),
    );
    if (object.statusText != null) {
      yield r'statusText';
      yield serializers.serialize(
        object.statusText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.mean != null) {
      yield r'mean';
      yield serializers.serialize(
        object.mean,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.p95 != null) {
      yield r'p95';
      yield serializers.serialize(
        object.p95,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.coveragePct != null) {
      yield r'coveragePct';
      yield serializers.serialize(
        object.coveragePct,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.areaKm2 != null) {
      yield r'areaKm2';
      yield serializers.serialize(
        object.areaKm2,
        specifiedType: const FullType(num),
      );
    }
    yield r'thresholds';
    yield serializers.serialize(
      object.thresholds,
      specifiedType:
          const FullType(BuiltList, [FullType(StatsResponseThresholdsInner)]),
    );
    yield r'attribution';
    yield serializers.serialize(
      object.attribution,
      specifiedType: const FullType(Attribution),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsResponse object, {
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
    required StatsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'frameKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.frameKey = valueDes;
          break;
        case r'validTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.validTime = valueDes;
          break;
        case r'run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'ageMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ageMinutes = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SampleStatus),
          ) as SampleStatus;
          result.status = valueDes;
          break;
        case r'statusText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusText = valueDes;
          break;
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.min = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.max = valueDes;
          break;
        case r'mean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.mean = valueDes;
          break;
        case r'p95':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p95 = valueDes;
          break;
        case r'coveragePct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.coveragePct = valueDes;
          break;
        case r'areaKm2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.areaKm2 = valueDes;
          break;
        case r'thresholds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(StatsResponseThresholdsInner)]),
          ) as BuiltList<StatsResponseThresholdsInner>;
          result.thresholds.replace(valueDes);
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Attribution),
          ) as Attribution;
          result.attribution.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsResponseBuilder();
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
