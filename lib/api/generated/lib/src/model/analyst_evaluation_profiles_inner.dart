//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analyst_evaluation_profiles_inner_tokens_per_day_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_evaluation_profiles_inner.g.dart';

/// Aggregates for one profile
///
/// Properties:
/// * [profileId] - ULID identifier
/// * [runsByStatus]
/// * [noopShare]
/// * [tokensPerDay]
/// * [proposalAcceptanceRate] - confirmed ÷ decided
/// * [notesDismissedShare]
/// * [usefulRatio]
/// * [wrongRatio]
/// * [citationsDroppedPerRun]
@BuiltValue()
abstract class AnalystEvaluationProfilesInner
    implements
        Built<AnalystEvaluationProfilesInner,
            AnalystEvaluationProfilesInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'profileId')
  String get profileId;

  @BuiltValueField(wireName: r'runsByStatus')
  BuiltMap<String, int> get runsByStatus;

  @BuiltValueField(wireName: r'noopShare')
  num? get noopShare;

  @BuiltValueField(wireName: r'tokensPerDay')
  BuiltList<AnalystEvaluationProfilesInnerTokensPerDayInner>? get tokensPerDay;

  /// confirmed ÷ decided
  @BuiltValueField(wireName: r'proposalAcceptanceRate')
  num? get proposalAcceptanceRate;

  @BuiltValueField(wireName: r'notesDismissedShare')
  num? get notesDismissedShare;

  @BuiltValueField(wireName: r'usefulRatio')
  num? get usefulRatio;

  @BuiltValueField(wireName: r'wrongRatio')
  num? get wrongRatio;

  @BuiltValueField(wireName: r'citationsDroppedPerRun')
  num? get citationsDroppedPerRun;

  AnalystEvaluationProfilesInner._();

  factory AnalystEvaluationProfilesInner(
          [void updates(AnalystEvaluationProfilesInnerBuilder b)]) =
      _$AnalystEvaluationProfilesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystEvaluationProfilesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystEvaluationProfilesInner> get serializer =>
      _$AnalystEvaluationProfilesInnerSerializer();
}

class _$AnalystEvaluationProfilesInnerSerializer
    implements PrimitiveSerializer<AnalystEvaluationProfilesInner> {
  @override
  final Iterable<Type> types = const [
    AnalystEvaluationProfilesInner,
    _$AnalystEvaluationProfilesInner
  ];

  @override
  final String wireName = r'AnalystEvaluationProfilesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystEvaluationProfilesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'profileId';
    yield serializers.serialize(
      object.profileId,
      specifiedType: const FullType(String),
    );
    yield r'runsByStatus';
    yield serializers.serialize(
      object.runsByStatus,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(int)]),
    );
    if (object.noopShare != null) {
      yield r'noopShare';
      yield serializers.serialize(
        object.noopShare,
        specifiedType: const FullType(num),
      );
    }
    if (object.tokensPerDay != null) {
      yield r'tokensPerDay';
      yield serializers.serialize(
        object.tokensPerDay,
        specifiedType: const FullType(BuiltList,
            [FullType(AnalystEvaluationProfilesInnerTokensPerDayInner)]),
      );
    }
    if (object.proposalAcceptanceRate != null) {
      yield r'proposalAcceptanceRate';
      yield serializers.serialize(
        object.proposalAcceptanceRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.notesDismissedShare != null) {
      yield r'notesDismissedShare';
      yield serializers.serialize(
        object.notesDismissedShare,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.usefulRatio != null) {
      yield r'usefulRatio';
      yield serializers.serialize(
        object.usefulRatio,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.wrongRatio != null) {
      yield r'wrongRatio';
      yield serializers.serialize(
        object.wrongRatio,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.citationsDroppedPerRun != null) {
      yield r'citationsDroppedPerRun';
      yield serializers.serialize(
        object.citationsDroppedPerRun,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystEvaluationProfilesInner object, {
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
    required AnalystEvaluationProfilesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'profileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profileId = valueDes;
          break;
        case r'runsByStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.runsByStatus.replace(valueDes);
          break;
        case r'noopShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.noopShare = valueDes;
          break;
        case r'tokensPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(AnalystEvaluationProfilesInnerTokensPerDayInner)]),
          ) as BuiltList<AnalystEvaluationProfilesInnerTokensPerDayInner>?;
          if (valueDes == null) continue;
          result.tokensPerDay.replace(valueDes);
          break;
        case r'proposalAcceptanceRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.proposalAcceptanceRate = valueDes;
          break;
        case r'notesDismissedShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.notesDismissedShare = valueDes;
          break;
        case r'usefulRatio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.usefulRatio = valueDes;
          break;
        case r'wrongRatio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.wrongRatio = valueDes;
          break;
        case r'citationsDroppedPerRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.citationsDroppedPerRun = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystEvaluationProfilesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystEvaluationProfilesInnerBuilder();
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
