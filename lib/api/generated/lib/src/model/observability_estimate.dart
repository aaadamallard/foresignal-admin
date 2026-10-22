//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/confidence_level.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'observability_estimate.g.dart';

/// Time-versioned detection probability of one source for a family, region or cell and band (116)
///
/// Properties:
/// * [sourceId]
/// * [family]
/// * [regionCode]
/// * [cell] - H3 res-4 cell index
/// * [band] - Threshold bucket, e.g. M4.5-5
/// * [periodStart]
/// * [periodEnd]
/// * [pDetect]
/// * [lo]
/// * [hi]
/// * [n]
/// * [method]
/// * [confidence]
/// * [computedAt]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class ObservabilityEstimate
    implements Built<ObservabilityEstimate, ObservabilityEstimateBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  /// H3 res-4 cell index
  @BuiltValueField(wireName: r'cell')
  String? get cell;

  /// Threshold bucket, e.g. M4.5-5
  @BuiltValueField(wireName: r'band')
  String? get band;

  @BuiltValueField(wireName: r'periodStart')
  DateTime get periodStart;

  @BuiltValueField(wireName: r'periodEnd')
  DateTime get periodEnd;

  @BuiltValueField(wireName: r'pDetect')
  num get pDetect;

  @BuiltValueField(wireName: r'lo')
  num get lo;

  @BuiltValueField(wireName: r'hi')
  num get hi;

  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'method')
  ObservabilityEstimateMethodEnum get method;
  // enum methodEnum {  capture-recapture,  presence-proxy,  receiver-range,  declared,  platform-volume,  };

  @BuiltValueField(wireName: r'confidence')
  ConfidenceLevel? get confidence;
  // enum confidenceEnum {  low,  moderate,  high,  };

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  ObservabilityEstimate._();

  factory ObservabilityEstimate([
    void updates(ObservabilityEstimateBuilder b),
  ]) = _$ObservabilityEstimate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObservabilityEstimateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObservabilityEstimate> get serializer =>
      _$ObservabilityEstimateSerializer();
}

class _$ObservabilityEstimateSerializer
    implements PrimitiveSerializer<ObservabilityEstimate> {
  @override
  final Iterable<Type> types = const [
    ObservabilityEstimate,
    _$ObservabilityEstimate,
  ];

  @override
  final String wireName = r'ObservabilityEstimate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObservabilityEstimate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    if (object.regionCode != null) {
      yield r'regionCode';
      yield serializers.serialize(
        object.regionCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cell != null) {
      yield r'cell';
      yield serializers.serialize(
        object.cell,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.band != null) {
      yield r'band';
      yield serializers.serialize(
        object.band,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'periodStart';
    yield serializers.serialize(
      object.periodStart,
      specifiedType: const FullType(DateTime),
    );
    yield r'periodEnd';
    yield serializers.serialize(
      object.periodEnd,
      specifiedType: const FullType(DateTime),
    );
    yield r'pDetect';
    yield serializers.serialize(
      object.pDetect,
      specifiedType: const FullType(num),
    );
    yield r'lo';
    yield serializers.serialize(object.lo, specifiedType: const FullType(num));
    yield r'hi';
    yield serializers.serialize(object.hi, specifiedType: const FullType(num));
    yield r'n';
    yield serializers.serialize(object.n, specifiedType: const FullType(int));
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(ObservabilityEstimateMethodEnum),
    );
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(ConfidenceLevel),
      );
    }
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObservabilityEstimate object, {
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
    required ObservabilityEstimateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.family = valueDes;
          break;
        case r'regionCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        case r'cell':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cell = valueDes;
          break;
        case r'band':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.band = valueDes;
          break;
        case r'periodStart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.periodStart = valueDes;
          break;
        case r'periodEnd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.periodEnd = valueDes;
          break;
        case r'pDetect':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pDetect = valueDes;
          break;
        case r'lo':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lo = valueDes;
          break;
        case r'hi':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.hi = valueDes;
          break;
        case r'n':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.n = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ObservabilityEstimateMethodEnum,
                    ),
                  )
                  as ObservabilityEstimateMethodEnum;
          result.method = valueDes;
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ConfidenceLevel),
                  )
                  as ConfidenceLevel?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.computedAt = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObservabilityEstimate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObservabilityEstimateBuilder();
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

class ObservabilityEstimateMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'capture-recapture')
  static const ObservabilityEstimateMethodEnum captureRecapture =
      _$observabilityEstimateMethodEnum_captureRecapture;
  @BuiltValueEnumConst(wireName: r'presence-proxy')
  static const ObservabilityEstimateMethodEnum presenceProxy =
      _$observabilityEstimateMethodEnum_presenceProxy;
  @BuiltValueEnumConst(wireName: r'receiver-range')
  static const ObservabilityEstimateMethodEnum receiverRange =
      _$observabilityEstimateMethodEnum_receiverRange;
  @BuiltValueEnumConst(wireName: r'declared')
  static const ObservabilityEstimateMethodEnum declared =
      _$observabilityEstimateMethodEnum_declared;
  @BuiltValueEnumConst(wireName: r'platform-volume')
  static const ObservabilityEstimateMethodEnum platformVolume =
      _$observabilityEstimateMethodEnum_platformVolume;

  static Serializer<ObservabilityEstimateMethodEnum> get serializer =>
      _$observabilityEstimateMethodEnumSerializer;

  const ObservabilityEstimateMethodEnum._(String name) : super(name);

  static BuiltSet<ObservabilityEstimateMethodEnum> get values =>
      _$observabilityEstimateMethodEnumValues;
  static ObservabilityEstimateMethodEnum valueOf(String name) =>
      _$observabilityEstimateMethodEnumValueOf(name);
}
