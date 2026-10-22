//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/trigger_test_result_warnings_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record.dart';
import 'package:foresignal_api/src/model/trigger_test_result_window_evaluations_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trigger_test_result.g.dart';

/// TriggerTestResult
///
/// Properties:
/// * [ruleId]
/// * [evaluatedFrom]
/// * [matches]
/// * [truncated]
/// * [fromSeq]
/// * [toSeq]
/// * [matchCount]
/// * [simulated] - True when simulate=true (cooldown, cap and active windows applied)
/// * [wouldFire]
/// * [wouldSuppress]
/// * [truncatedByRetention] - fromSeq is below RetentionState.lowestRetainedSeq
/// * [enrich] - True when the rule would enrich; no LLM is called by testTrigger
/// * [warnings] - Warnings, e.g. DOWNSAMPLED_RANGE: match-mode results over downsampled history under-count; edge reasons are preserved
/// * [approximate] - True for windowed types (versions only)
/// * [approximateReason]
/// * [windowEvaluations] - Windowed types only
@BuiltValue()
abstract class TriggerTestResult
    implements Built<TriggerTestResult, TriggerTestResultBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'evaluatedFrom')
  DateTime? get evaluatedFrom;

  @BuiltValueField(wireName: r'matches')
  BuiltList<Record> get matches;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  @BuiltValueField(wireName: r'matchCount')
  int? get matchCount;

  /// True when simulate=true (cooldown, cap and active windows applied)
  @BuiltValueField(wireName: r'simulated')
  bool? get simulated;

  @BuiltValueField(wireName: r'wouldFire')
  int? get wouldFire;

  @BuiltValueField(wireName: r'wouldSuppress')
  int? get wouldSuppress;

  /// fromSeq is below RetentionState.lowestRetainedSeq
  @BuiltValueField(wireName: r'truncatedByRetention')
  bool? get truncatedByRetention;

  /// True when the rule would enrich; no LLM is called by testTrigger
  @BuiltValueField(wireName: r'enrich')
  bool? get enrich;

  /// Warnings, e.g. DOWNSAMPLED_RANGE: match-mode results over downsampled history under-count; edge reasons are preserved
  @BuiltValueField(wireName: r'warnings')
  BuiltList<TriggerTestResultWarningsInner>? get warnings;

  /// True for windowed types (versions only)
  @BuiltValueField(wireName: r'approximate')
  bool? get approximate;

  @BuiltValueField(wireName: r'approximateReason')
  String? get approximateReason;

  /// Windowed types only
  @BuiltValueField(wireName: r'windowEvaluations')
  BuiltList<TriggerTestResultWindowEvaluationsInner>? get windowEvaluations;

  TriggerTestResult._();

  factory TriggerTestResult([void updates(TriggerTestResultBuilder b)]) =
      _$TriggerTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TriggerTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TriggerTestResult> get serializer =>
      _$TriggerTestResultSerializer();
}

class _$TriggerTestResultSerializer
    implements PrimitiveSerializer<TriggerTestResult> {
  @override
  final Iterable<Type> types = const [TriggerTestResult, _$TriggerTestResult];

  @override
  final String wireName = r'TriggerTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TriggerTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    if (object.evaluatedFrom != null) {
      yield r'evaluatedFrom';
      yield serializers.serialize(
        object.evaluatedFrom,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'matches';
    yield serializers.serialize(
      object.matches,
      specifiedType: const FullType(BuiltList, [FullType(Record)]),
    );
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fromSeq != null) {
      yield r'fromSeq';
      yield serializers.serialize(
        object.fromSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.toSeq != null) {
      yield r'toSeq';
      yield serializers.serialize(
        object.toSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.matchCount != null) {
      yield r'matchCount';
      yield serializers.serialize(
        object.matchCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.simulated != null) {
      yield r'simulated';
      yield serializers.serialize(
        object.simulated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.wouldFire != null) {
      yield r'wouldFire';
      yield serializers.serialize(
        object.wouldFire,
        specifiedType: const FullType(int),
      );
    }
    if (object.wouldSuppress != null) {
      yield r'wouldSuppress';
      yield serializers.serialize(
        object.wouldSuppress,
        specifiedType: const FullType(int),
      );
    }
    if (object.truncatedByRetention != null) {
      yield r'truncatedByRetention';
      yield serializers.serialize(
        object.truncatedByRetention,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enrich != null) {
      yield r'enrich';
      yield serializers.serialize(
        object.enrich,
        specifiedType: const FullType(bool),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [
          FullType(TriggerTestResultWarningsInner),
        ]),
      );
    }
    if (object.approximate != null) {
      yield r'approximate';
      yield serializers.serialize(
        object.approximate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.approximateReason != null) {
      yield r'approximateReason';
      yield serializers.serialize(
        object.approximateReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.windowEvaluations != null) {
      yield r'windowEvaluations';
      yield serializers.serialize(
        object.windowEvaluations,
        specifiedType: const FullType(BuiltList, [
          FullType(TriggerTestResultWindowEvaluationsInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TriggerTestResult object, {
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
    required TriggerTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'evaluatedFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.evaluatedFrom = valueDes;
          break;
        case r'matches':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Record),
                    ]),
                  )
                  as BuiltList<Record>;
          result.matches.replace(valueDes);
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.toSeq = valueDes;
          break;
        case r'matchCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.matchCount = valueDes;
          break;
        case r'simulated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.simulated = valueDes;
          break;
        case r'wouldFire':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.wouldFire = valueDes;
          break;
        case r'wouldSuppress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.wouldSuppress = valueDes;
          break;
        case r'truncatedByRetention':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncatedByRetention = valueDes;
          break;
        case r'enrich':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enrich = valueDes;
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TriggerTestResultWarningsInner),
                    ]),
                  )
                  as BuiltList<TriggerTestResultWarningsInner>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'approximate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.approximate = valueDes;
          break;
        case r'approximateReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.approximateReason = valueDes;
          break;
        case r'windowEvaluations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TriggerTestResultWindowEvaluationsInner),
                    ]),
                  )
                  as BuiltList<TriggerTestResultWindowEvaluationsInner>?;
          if (valueDes == null) continue;
          result.windowEvaluations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TriggerTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TriggerTestResultBuilder();
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
