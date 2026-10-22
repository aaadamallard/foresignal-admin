//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/exercise_stats_skipped_rules_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exercise_stats.g.dart';

/// Statistics of an exercise run (projected for a dry run) (115)
///
/// Properties:
/// * [versionsScanned]
/// * [alertsByRule]
/// * [notificationsByChannel]
/// * [suppressedByCooldown]
/// * [suppressedByRateCap]
/// * [skippedRules]
/// * [caveats] - e.g. PREDECESSOR_OUTSIDE_WINDOW
/// * [alertsRaised] - Exercise alerts actually raised (a canceled run stops early); absent for a dry run
/// * [error] - Why a FAILED run failed
@BuiltValue()
abstract class ExerciseStats
    implements Built<ExerciseStats, ExerciseStatsBuilder> {
  @BuiltValueField(wireName: r'versionsScanned')
  int get versionsScanned;

  @BuiltValueField(wireName: r'alertsByRule')
  BuiltMap<String, int>? get alertsByRule;

  @BuiltValueField(wireName: r'notificationsByChannel')
  BuiltMap<String, int>? get notificationsByChannel;

  @BuiltValueField(wireName: r'suppressedByCooldown')
  int? get suppressedByCooldown;

  @BuiltValueField(wireName: r'suppressedByRateCap')
  int? get suppressedByRateCap;

  @BuiltValueField(wireName: r'skippedRules')
  BuiltList<ExerciseStatsSkippedRulesInner>? get skippedRules;

  /// e.g. PREDECESSOR_OUTSIDE_WINDOW
  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  /// Exercise alerts actually raised (a canceled run stops early); absent for a dry run
  @BuiltValueField(wireName: r'alertsRaised')
  int? get alertsRaised;

  /// Why a FAILED run failed
  @BuiltValueField(wireName: r'error')
  String? get error;

  ExerciseStats._();

  factory ExerciseStats([void updates(ExerciseStatsBuilder b)]) =
      _$ExerciseStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExerciseStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExerciseStats> get serializer =>
      _$ExerciseStatsSerializer();
}

class _$ExerciseStatsSerializer implements PrimitiveSerializer<ExerciseStats> {
  @override
  final Iterable<Type> types = const [ExerciseStats, _$ExerciseStats];

  @override
  final String wireName = r'ExerciseStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExerciseStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'versionsScanned';
    yield serializers.serialize(
      object.versionsScanned,
      specifiedType: const FullType(int),
    );
    if (object.alertsByRule != null) {
      yield r'alertsByRule';
      yield serializers.serialize(
        object.alertsByRule,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.notificationsByChannel != null) {
      yield r'notificationsByChannel';
      yield serializers.serialize(
        object.notificationsByChannel,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.suppressedByCooldown != null) {
      yield r'suppressedByCooldown';
      yield serializers.serialize(
        object.suppressedByCooldown,
        specifiedType: const FullType(int),
      );
    }
    if (object.suppressedByRateCap != null) {
      yield r'suppressedByRateCap';
      yield serializers.serialize(
        object.suppressedByRateCap,
        specifiedType: const FullType(int),
      );
    }
    if (object.skippedRules != null) {
      yield r'skippedRules';
      yield serializers.serialize(
        object.skippedRules,
        specifiedType: const FullType(
            BuiltList, [FullType(ExerciseStatsSkippedRulesInner)]),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    if (object.alertsRaised != null) {
      yield r'alertsRaised';
      yield serializers.serialize(
        object.alertsRaised,
        specifiedType: const FullType(int),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExerciseStats object, {
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
    required ExerciseStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'versionsScanned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.versionsScanned = valueDes;
          break;
        case r'alertsByRule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.alertsByRule.replace(valueDes);
          break;
        case r'notificationsByChannel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.notificationsByChannel.replace(valueDes);
          break;
        case r'suppressedByCooldown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.suppressedByCooldown = valueDes;
          break;
        case r'suppressedByRateCap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.suppressedByRateCap = valueDes;
          break;
        case r'skippedRules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ExerciseStatsSkippedRulesInner)]),
          ) as BuiltList<ExerciseStatsSkippedRulesInner>?;
          if (valueDes == null) continue;
          result.skippedRules.replace(valueDes);
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        case r'alertsRaised':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alertsRaised = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExerciseStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExerciseStatsBuilder();
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
