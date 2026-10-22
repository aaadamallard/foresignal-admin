//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/sample_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sample_value_derived.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_value.g.dart';

/// One product value at a point with validity, age, run and status
///
/// Properties:
/// * [productId]
/// * [value] - Physical value (null for u/v products and non-ok statuses)
/// * [u]
/// * [v]
/// * [derived]
/// * [units]
/// * [label] - Human label, e.g. category or `52.5 dBZ`
/// * [frameKey]
/// * [validTime]
/// * [localTime] - Valid time in the place's timezone (else UTC), ISO-8601 with offset
/// * [ageMinutes]
/// * [run]
/// * [step]
/// * [method]
/// * [coverage]
/// * [status]
/// * [statusText] - Always present for non-ok statuses
/// * [attribution]
@BuiltValue()
abstract class SampleValue implements Built<SampleValue, SampleValueBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  /// Physical value (null for u/v products and non-ok statuses)
  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'u')
  num? get u;

  @BuiltValueField(wireName: r'v')
  num? get v;

  @BuiltValueField(wireName: r'derived')
  SampleValueDerived? get derived;

  @BuiltValueField(wireName: r'units')
  String? get units;

  /// Human label, e.g. category or `52.5 dBZ`
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'frameKey')
  String? get frameKey;

  @BuiltValueField(wireName: r'validTime')
  DateTime? get validTime;

  /// Valid time in the place's timezone (else UTC), ISO-8601 with offset
  @BuiltValueField(wireName: r'localTime')
  String? get localTime;

  @BuiltValueField(wireName: r'ageMinutes')
  num? get ageMinutes;

  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'step')
  int? get step;

  @BuiltValueField(wireName: r'method')
  SampleValueMethodEnum? get method;
  // enum methodEnum {  nearest,  bilinear,  };

  @BuiltValueField(wireName: r'coverage')
  SampleValueCoverageEnum? get coverage;
  // enum coverageEnum {  CONUS,  global,  station-disc,  swath,  };

  @BuiltValueField(wireName: r'status')
  SampleStatus get status;
  // enum statusEnum {  ok,  no-coverage,  no-data,  stale,  unavailable,  stale-position,  };

  /// Always present for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'attribution')
  Attribution get attribution;

  SampleValue._();

  factory SampleValue([void updates(SampleValueBuilder b)]) = _$SampleValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleValue> get serializer => _$SampleValueSerializer();
}

class _$SampleValueSerializer implements PrimitiveSerializer<SampleValue> {
  @override
  final Iterable<Type> types = const [SampleValue, _$SampleValue];

  @override
  final String wireName = r'SampleValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.u != null) {
      yield r'u';
      yield serializers.serialize(
        object.u,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.v != null) {
      yield r'v';
      yield serializers.serialize(
        object.v,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.derived != null) {
      yield r'derived';
      yield serializers.serialize(
        object.derived,
        specifiedType: const FullType.nullable(SampleValueDerived),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.localTime != null) {
      yield r'localTime';
      yield serializers.serialize(
        object.localTime,
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
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(SampleValueMethodEnum),
      );
    }
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType(SampleValueCoverageEnum),
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
    yield r'attribution';
    yield serializers.serialize(
      object.attribution,
      specifiedType: const FullType(Attribution),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleValue object, {
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
    required SampleValueBuilder result,
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
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'u':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.u = valueDes;
          break;
        case r'v':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.v = valueDes;
          break;
        case r'derived':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SampleValueDerived),
          ) as SampleValueDerived?;
          if (valueDes == null) continue;
          result.derived.replace(valueDes);
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
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
        case r'localTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.localTime = valueDes;
          break;
        case r'ageMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ageMinutes = valueDes;
          break;
        case r'run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SampleValueMethodEnum),
          ) as SampleValueMethodEnum?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'coverage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SampleValueCoverageEnum),
          ) as SampleValueCoverageEnum?;
          if (valueDes == null) continue;
          result.coverage = valueDes;
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
  SampleValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleValueBuilder();
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

class SampleValueMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'nearest')
  static const SampleValueMethodEnum nearest = _$sampleValueMethodEnum_nearest;
  @BuiltValueEnumConst(wireName: r'bilinear')
  static const SampleValueMethodEnum bilinear =
      _$sampleValueMethodEnum_bilinear;

  static Serializer<SampleValueMethodEnum> get serializer =>
      _$sampleValueMethodEnumSerializer;

  const SampleValueMethodEnum._(String name) : super(name);

  static BuiltSet<SampleValueMethodEnum> get values =>
      _$sampleValueMethodEnumValues;
  static SampleValueMethodEnum valueOf(String name) =>
      _$sampleValueMethodEnumValueOf(name);
}

class SampleValueCoverageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CONUS')
  static const SampleValueCoverageEnum CONUS = _$sampleValueCoverageEnum_CONUS;
  @BuiltValueEnumConst(wireName: r'global')
  static const SampleValueCoverageEnum global =
      _$sampleValueCoverageEnum_global;
  @BuiltValueEnumConst(wireName: r'station-disc')
  static const SampleValueCoverageEnum stationDisc =
      _$sampleValueCoverageEnum_stationDisc;
  @BuiltValueEnumConst(wireName: r'swath')
  static const SampleValueCoverageEnum swath = _$sampleValueCoverageEnum_swath;

  static Serializer<SampleValueCoverageEnum> get serializer =>
      _$sampleValueCoverageEnumSerializer;

  const SampleValueCoverageEnum._(String name) : super(name);

  static BuiltSet<SampleValueCoverageEnum> get values =>
      _$sampleValueCoverageEnumValues;
  static SampleValueCoverageEnum valueOf(String name) =>
      _$sampleValueCoverageEnumValueOf(name);
}
