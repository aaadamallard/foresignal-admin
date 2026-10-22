//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/intel_board_latest_assessments_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/intel_board_calibration.dart';
import 'package:foresignal_api/src/model/intel_board_benchmarks_inner.dart';
import 'package:foresignal_api/src/model/intel_board_indicators_observed_inner.dart';
import 'package:foresignal_api/src/model/intel_board_band_changes_inner.dart';
import 'package:foresignal_api/src/model/intel_board_situations_inner.dart';
import 'package:foresignal_api/src/model/intel_board_forecasts_due_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board.g.dart';

/// Small summary of the intelligence layer (≤ 8 KB)
///
/// Properties:
/// * [generatedAt]
/// * [situations]
/// * [bandChanges]
/// * [indicatorsObserved]
/// * [forecastsDue]
/// * [latestAssessments]
/// * [calibration]
/// * [benchmarks]
/// * [truncated] - Sections truncated to stay within 8 KB
@BuiltValue()
abstract class IntelBoard implements Built<IntelBoard, IntelBoardBuilder> {
  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  @BuiltValueField(wireName: r'situations')
  BuiltList<IntelBoardSituationsInner> get situations;

  @BuiltValueField(wireName: r'bandChanges')
  BuiltList<IntelBoardBandChangesInner> get bandChanges;

  @BuiltValueField(wireName: r'indicatorsObserved')
  BuiltList<IntelBoardIndicatorsObservedInner> get indicatorsObserved;

  @BuiltValueField(wireName: r'forecastsDue')
  BuiltList<IntelBoardForecastsDueInner> get forecastsDue;

  @BuiltValueField(wireName: r'latestAssessments')
  BuiltList<IntelBoardLatestAssessmentsInner> get latestAssessments;

  @BuiltValueField(wireName: r'calibration')
  IntelBoardCalibration? get calibration;

  @BuiltValueField(wireName: r'benchmarks')
  BuiltList<IntelBoardBenchmarksInner>? get benchmarks;

  /// Sections truncated to stay within 8 KB
  @BuiltValueField(wireName: r'truncated')
  BuiltList<String>? get truncated;

  IntelBoard._();

  factory IntelBoard([void updates(IntelBoardBuilder b)]) = _$IntelBoard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoard> get serializer => _$IntelBoardSerializer();
}

class _$IntelBoardSerializer implements PrimitiveSerializer<IntelBoard> {
  @override
  final Iterable<Type> types = const [IntelBoard, _$IntelBoard];

  @override
  final String wireName = r'IntelBoard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'situations';
    yield serializers.serialize(
      object.situations,
      specifiedType:
          const FullType(BuiltList, [FullType(IntelBoardSituationsInner)]),
    );
    yield r'bandChanges';
    yield serializers.serialize(
      object.bandChanges,
      specifiedType:
          const FullType(BuiltList, [FullType(IntelBoardBandChangesInner)]),
    );
    yield r'indicatorsObserved';
    yield serializers.serialize(
      object.indicatorsObserved,
      specifiedType: const FullType(
          BuiltList, [FullType(IntelBoardIndicatorsObservedInner)]),
    );
    yield r'forecastsDue';
    yield serializers.serialize(
      object.forecastsDue,
      specifiedType:
          const FullType(BuiltList, [FullType(IntelBoardForecastsDueInner)]),
    );
    yield r'latestAssessments';
    yield serializers.serialize(
      object.latestAssessments,
      specifiedType: const FullType(
          BuiltList, [FullType(IntelBoardLatestAssessmentsInner)]),
    );
    if (object.calibration != null) {
      yield r'calibration';
      yield serializers.serialize(
        object.calibration,
        specifiedType: const FullType(IntelBoardCalibration),
      );
    }
    if (object.benchmarks != null) {
      yield r'benchmarks';
      yield serializers.serialize(
        object.benchmarks,
        specifiedType:
            const FullType(BuiltList, [FullType(IntelBoardBenchmarksInner)]),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelBoard object, {
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
    required IntelBoardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'generatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'situations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(IntelBoardSituationsInner)]),
          ) as BuiltList<IntelBoardSituationsInner>;
          result.situations.replace(valueDes);
          break;
        case r'bandChanges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(IntelBoardBandChangesInner)]),
          ) as BuiltList<IntelBoardBandChangesInner>;
          result.bandChanges.replace(valueDes);
          break;
        case r'indicatorsObserved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(IntelBoardIndicatorsObservedInner)]),
          ) as BuiltList<IntelBoardIndicatorsObservedInner>;
          result.indicatorsObserved.replace(valueDes);
          break;
        case r'forecastsDue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(IntelBoardForecastsDueInner)]),
          ) as BuiltList<IntelBoardForecastsDueInner>;
          result.forecastsDue.replace(valueDes);
          break;
        case r'latestAssessments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(IntelBoardLatestAssessmentsInner)]),
          ) as BuiltList<IntelBoardLatestAssessmentsInner>;
          result.latestAssessments.replace(valueDes);
          break;
        case r'calibration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IntelBoardCalibration),
          ) as IntelBoardCalibration?;
          if (valueDes == null) continue;
          result.calibration.replace(valueDes);
          break;
        case r'benchmarks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(IntelBoardBenchmarksInner)]),
          ) as BuiltList<IntelBoardBenchmarksInner>?;
          if (valueDes == null) continue;
          result.benchmarks.replace(valueDes);
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.truncated.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelBoard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardBuilder();
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
