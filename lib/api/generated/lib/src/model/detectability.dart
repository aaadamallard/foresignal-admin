//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/confidence_level.dart';
import 'package:foresignal_api/src/model/observability_estimate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detectability.g.dart';

/// Combined detection probability for a family at a place and time: 1 − Π(1 − p) across independence groups, max within a group, using estimates valid at `at` (116)
///
/// Properties:
/// * [family]
/// * [regionCode]
/// * [cell]
/// * [band]
/// * [at]
/// * [p]
/// * [lo]
/// * [hi]
/// * [methods]
/// * [sources]
/// * [confidence]
/// * [absenceOk] - Healthy sources and p ≥ absenceMinDetect: an absence here may be read as 'nothing happened'
/// * [reason] - When absenceOk is false, e.g. LOW_DETECTABILITY or a coverage reason
/// * [estimates] - Per-source estimates (include=estimates)
@BuiltValue()
abstract class Detectability
    implements Built<Detectability, DetectabilityBuilder> {
  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  @BuiltValueField(wireName: r'cell')
  String? get cell;

  @BuiltValueField(wireName: r'band')
  String? get band;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'p')
  num get p;

  @BuiltValueField(wireName: r'lo')
  num get lo;

  @BuiltValueField(wireName: r'hi')
  num get hi;

  @BuiltValueField(wireName: r'methods')
  BuiltList<DetectabilityMethodsEnum> get methods;
  // enum methodsEnum {  capture-recapture,  presence-proxy,  receiver-range,  declared,  platform-volume,  };

  @BuiltValueField(wireName: r'sources')
  BuiltList<String> get sources;

  @BuiltValueField(wireName: r'confidence')
  ConfidenceLevel? get confidence;
  // enum confidenceEnum {  low,  moderate,  high,  };

  /// Healthy sources and p ≥ absenceMinDetect: an absence here may be read as 'nothing happened'
  @BuiltValueField(wireName: r'absenceOk')
  bool get absenceOk;

  /// When absenceOk is false, e.g. LOW_DETECTABILITY or a coverage reason
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Per-source estimates (include=estimates)
  @BuiltValueField(wireName: r'estimates')
  BuiltList<ObservabilityEstimate>? get estimates;

  Detectability._();

  factory Detectability([void updates(DetectabilityBuilder b)]) =
      _$Detectability;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DetectabilityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Detectability> get serializer =>
      _$DetectabilitySerializer();
}

class _$DetectabilitySerializer implements PrimitiveSerializer<Detectability> {
  @override
  final Iterable<Type> types = const [Detectability, _$Detectability];

  @override
  final String wireName = r'Detectability';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Detectability object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'p';
    yield serializers.serialize(object.p, specifiedType: const FullType(num));
    yield r'lo';
    yield serializers.serialize(object.lo, specifiedType: const FullType(num));
    yield r'hi';
    yield serializers.serialize(object.hi, specifiedType: const FullType(num));
    yield r'methods';
    yield serializers.serialize(
      object.methods,
      specifiedType: const FullType(BuiltList, [
        FullType(DetectabilityMethodsEnum),
      ]),
    );
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(ConfidenceLevel),
      );
    }
    yield r'absenceOk';
    yield serializers.serialize(
      object.absenceOk,
      specifiedType: const FullType(bool),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.estimates != null) {
      yield r'estimates';
      yield serializers.serialize(
        object.estimates,
        specifiedType: const FullType(BuiltList, [
          FullType(ObservabilityEstimate),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Detectability object, {
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
    required DetectabilityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'p':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.p = valueDes;
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
        case r'methods':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(DetectabilityMethodsEnum),
                    ]),
                  )
                  as BuiltList<DetectabilityMethodsEnum>;
          result.methods.replace(valueDes);
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.sources.replace(valueDes);
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
        case r'absenceOk':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.absenceOk = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'estimates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObservabilityEstimate),
                    ]),
                  )
                  as BuiltList<ObservabilityEstimate>?;
          if (valueDes == null) continue;
          result.estimates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Detectability deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectabilityBuilder();
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

class DetectabilityMethodsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'capture-recapture')
  static const DetectabilityMethodsEnum captureRecapture =
      _$detectabilityMethodsEnum_captureRecapture;
  @BuiltValueEnumConst(wireName: r'presence-proxy')
  static const DetectabilityMethodsEnum presenceProxy =
      _$detectabilityMethodsEnum_presenceProxy;
  @BuiltValueEnumConst(wireName: r'receiver-range')
  static const DetectabilityMethodsEnum receiverRange =
      _$detectabilityMethodsEnum_receiverRange;
  @BuiltValueEnumConst(wireName: r'declared')
  static const DetectabilityMethodsEnum declared =
      _$detectabilityMethodsEnum_declared;
  @BuiltValueEnumConst(wireName: r'platform-volume')
  static const DetectabilityMethodsEnum platformVolume =
      _$detectabilityMethodsEnum_platformVolume;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DetectabilityMethodsEnum unknownDefaultOpenApi =
      _$detectabilityMethodsEnum_unknownDefaultOpenApi;

  static Serializer<DetectabilityMethodsEnum> get serializer =>
      _$detectabilityMethodsEnumSerializer;

  const DetectabilityMethodsEnum._(String name) : super(name);

  static BuiltSet<DetectabilityMethodsEnum> get values =>
      _$detectabilityMethodsEnumValues;
  static DetectabilityMethodsEnum valueOf(String name) =>
      _$detectabilityMethodsEnumValueOf(name);
}
