//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/intel_calibration_bins_inner.dart';
import 'package:foresignal_api/src/model/intel_calibration_curve_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_calibration.g.dart';

/// The fitted calibration of one scope (151): the CORP recalibration curve, the 10-bin reliability table and the Brier score over resolved outcomes
///
/// Properties:
/// * [scope]
/// * [calibrated] - True once at least `minSamples` outcomes have resolved; until then the raw score is reported unchanged
/// * [sampleN] - Resolved outcomes behind the fit
/// * [minSamples] - Outcomes needed before a scope is calibrated
/// * [brier] - Mean Brier score of the raw scores against the outcomes
/// * [bins] - The 10-bin reliability table
/// * [curve] - The CORP (PAV) recalibration curve, one point per distinct raw score
/// * [fittedAt]
/// * [updatedAt]
@BuiltValue()
abstract class IntelCalibration
    implements Built<IntelCalibration, IntelCalibrationBuilder> {
  @BuiltValueField(wireName: r'scope')
  IntelCalibrationScopeEnum get scope;
  // enum scopeEnum {  intel-event,  precursor-active,  };

  /// True once at least `minSamples` outcomes have resolved; until then the raw score is reported unchanged
  @BuiltValueField(wireName: r'calibrated')
  bool get calibrated;

  /// Resolved outcomes behind the fit
  @BuiltValueField(wireName: r'sampleN')
  int get sampleN;

  /// Outcomes needed before a scope is calibrated
  @BuiltValueField(wireName: r'minSamples')
  int get minSamples;

  /// Mean Brier score of the raw scores against the outcomes
  @BuiltValueField(wireName: r'brier')
  num? get brier;

  /// The 10-bin reliability table
  @BuiltValueField(wireName: r'bins')
  BuiltList<IntelCalibrationBinsInner>? get bins;

  /// The CORP (PAV) recalibration curve, one point per distinct raw score
  @BuiltValueField(wireName: r'curve')
  BuiltList<IntelCalibrationCurveInner>? get curve;

  @BuiltValueField(wireName: r'fittedAt')
  DateTime? get fittedAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  IntelCalibration._();

  factory IntelCalibration([void updates(IntelCalibrationBuilder b)]) =
      _$IntelCalibration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelCalibrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelCalibration> get serializer =>
      _$IntelCalibrationSerializer();
}

class _$IntelCalibrationSerializer
    implements PrimitiveSerializer<IntelCalibration> {
  @override
  final Iterable<Type> types = const [IntelCalibration, _$IntelCalibration];

  @override
  final String wireName = r'IntelCalibration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelCalibration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(IntelCalibrationScopeEnum),
    );
    yield r'calibrated';
    yield serializers.serialize(
      object.calibrated,
      specifiedType: const FullType(bool),
    );
    yield r'sampleN';
    yield serializers.serialize(
      object.sampleN,
      specifiedType: const FullType(int),
    );
    yield r'minSamples';
    yield serializers.serialize(
      object.minSamples,
      specifiedType: const FullType(int),
    );
    if (object.brier != null) {
      yield r'brier';
      yield serializers.serialize(
        object.brier,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.bins != null) {
      yield r'bins';
      yield serializers.serialize(
        object.bins,
        specifiedType:
            const FullType(BuiltList, [FullType(IntelCalibrationBinsInner)]),
      );
    }
    if (object.curve != null) {
      yield r'curve';
      yield serializers.serialize(
        object.curve,
        specifiedType:
            const FullType(BuiltList, [FullType(IntelCalibrationCurveInner)]),
      );
    }
    if (object.fittedAt != null) {
      yield r'fittedAt';
      yield serializers.serialize(
        object.fittedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelCalibration object, {
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
    required IntelCalibrationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelCalibrationScopeEnum),
          ) as IntelCalibrationScopeEnum;
          result.scope = valueDes;
          break;
        case r'calibrated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.calibrated = valueDes;
          break;
        case r'sampleN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sampleN = valueDes;
          break;
        case r'minSamples':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minSamples = valueDes;
          break;
        case r'brier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.brier = valueDes;
          break;
        case r'bins':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(IntelCalibrationBinsInner)]),
          ) as BuiltList<IntelCalibrationBinsInner>?;
          if (valueDes == null) continue;
          result.bins.replace(valueDes);
          break;
        case r'curve':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(IntelCalibrationCurveInner)]),
          ) as BuiltList<IntelCalibrationCurveInner>?;
          if (valueDes == null) continue;
          result.curve.replace(valueDes);
          break;
        case r'fittedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.fittedAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelCalibration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelCalibrationBuilder();
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

class IntelCalibrationScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'intel-event')
  static const IntelCalibrationScopeEnum intelEvent =
      _$intelCalibrationScopeEnum_intelEvent;
  @BuiltValueEnumConst(wireName: r'precursor-active')
  static const IntelCalibrationScopeEnum precursorActive =
      _$intelCalibrationScopeEnum_precursorActive;

  static Serializer<IntelCalibrationScopeEnum> get serializer =>
      _$intelCalibrationScopeEnumSerializer;

  const IntelCalibrationScopeEnum._(String name) : super(name);

  static BuiltSet<IntelCalibrationScopeEnum> get values =>
      _$intelCalibrationScopeEnumValues;
  static IntelCalibrationScopeEnum valueOf(String name) =>
      _$intelCalibrationScopeEnumValueOf(name);
}
