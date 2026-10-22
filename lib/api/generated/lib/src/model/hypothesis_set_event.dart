//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/hypothesis_probability_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/hypothesis_set_event_band_changes_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_event.g.dart';

/// SSE payload for `set.created|revised|band_changed|resolved` (topic `hypotheses`)
///
/// Properties:
/// * [setId] - ULID identifier
/// * [version]
/// * [question]
/// * [status]
/// * [revisionId] - ULID identifier
/// * [cause]
/// * [hypotheses]
/// * [bandChanges]
/// * [private]
/// * [at]
@BuiltValue()
abstract class HypothesisSetEvent
    implements Built<HypothesisSetEvent, HypothesisSetEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'question')
  String? get question;

  @BuiltValueField(wireName: r'status')
  HypothesisSetEventStatusEnum get status;
  // enum statusEnum {  active,  resolved,  archived,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'revisionId')
  String? get revisionId;

  @BuiltValueField(wireName: r'cause')
  HypothesisSetEventCauseEnum? get cause;
  // enum causeEnum {  indicator-observed,  indicator-absent,  evidence-added,  evidence-removed,  base-rate-refresh,  review,  operator,  created,  };

  @BuiltValueField(wireName: r'hypotheses')
  BuiltList<HypothesisProbabilityState>? get hypotheses;

  @BuiltValueField(wireName: r'bandChanges')
  BuiltList<HypothesisSetEventBandChangesInner>? get bandChanges;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  HypothesisSetEvent._();

  factory HypothesisSetEvent([void updates(HypothesisSetEventBuilder b)]) =
      _$HypothesisSetEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetEvent> get serializer =>
      _$HypothesisSetEventSerializer();
}

class _$HypothesisSetEventSerializer
    implements PrimitiveSerializer<HypothesisSetEvent> {
  @override
  final Iterable<Type> types = const [HypothesisSetEvent, _$HypothesisSetEvent];

  @override
  final String wireName = r'HypothesisSetEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(HypothesisSetEventStatusEnum),
    );
    if (object.revisionId != null) {
      yield r'revisionId';
      yield serializers.serialize(
        object.revisionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cause != null) {
      yield r'cause';
      yield serializers.serialize(
        object.cause,
        specifiedType: const FullType.nullable(HypothesisSetEventCauseEnum),
      );
    }
    if (object.hypotheses != null) {
      yield r'hypotheses';
      yield serializers.serialize(
        object.hypotheses,
        specifiedType:
            const FullType(BuiltList, [FullType(HypothesisProbabilityState)]),
      );
    }
    if (object.bandChanges != null) {
      yield r'bandChanges';
      yield serializers.serialize(
        object.bandChanges,
        specifiedType: const FullType(
            BuiltList, [FullType(HypothesisSetEventBandChangesInner)]),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetEvent object, {
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
    required HypothesisSetEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'setId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setId = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.question = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HypothesisSetEventStatusEnum),
          ) as HypothesisSetEventStatusEnum;
          result.status = valueDes;
          break;
        case r'revisionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.revisionId = valueDes;
          break;
        case r'cause':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HypothesisSetEventCauseEnum),
          ) as HypothesisSetEventCauseEnum?;
          if (valueDes == null) continue;
          result.cause = valueDes;
          break;
        case r'hypotheses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(HypothesisProbabilityState)]),
          ) as BuiltList<HypothesisProbabilityState>?;
          if (valueDes == null) continue;
          result.hypotheses.replace(valueDes);
          break;
        case r'bandChanges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(HypothesisSetEventBandChangesInner)]),
          ) as BuiltList<HypothesisSetEventBandChangesInner>?;
          if (valueDes == null) continue;
          result.bandChanges.replace(valueDes);
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetEventBuilder();
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

class HypothesisSetEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const HypothesisSetEventStatusEnum active =
      _$hypothesisSetEventStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const HypothesisSetEventStatusEnum resolved =
      _$hypothesisSetEventStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'archived')
  static const HypothesisSetEventStatusEnum archived =
      _$hypothesisSetEventStatusEnum_archived;

  static Serializer<HypothesisSetEventStatusEnum> get serializer =>
      _$hypothesisSetEventStatusEnumSerializer;

  const HypothesisSetEventStatusEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetEventStatusEnum> get values =>
      _$hypothesisSetEventStatusEnumValues;
  static HypothesisSetEventStatusEnum valueOf(String name) =>
      _$hypothesisSetEventStatusEnumValueOf(name);
}

class HypothesisSetEventCauseEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'indicator-observed')
  static const HypothesisSetEventCauseEnum indicatorObserved =
      _$hypothesisSetEventCauseEnum_indicatorObserved;
  @BuiltValueEnumConst(wireName: r'indicator-absent')
  static const HypothesisSetEventCauseEnum indicatorAbsent =
      _$hypothesisSetEventCauseEnum_indicatorAbsent;
  @BuiltValueEnumConst(wireName: r'evidence-added')
  static const HypothesisSetEventCauseEnum evidenceAdded =
      _$hypothesisSetEventCauseEnum_evidenceAdded;
  @BuiltValueEnumConst(wireName: r'evidence-removed')
  static const HypothesisSetEventCauseEnum evidenceRemoved =
      _$hypothesisSetEventCauseEnum_evidenceRemoved;
  @BuiltValueEnumConst(wireName: r'base-rate-refresh')
  static const HypothesisSetEventCauseEnum baseRateRefresh =
      _$hypothesisSetEventCauseEnum_baseRateRefresh;
  @BuiltValueEnumConst(wireName: r'review')
  static const HypothesisSetEventCauseEnum review =
      _$hypothesisSetEventCauseEnum_review;
  @BuiltValueEnumConst(wireName: r'operator')
  static const HypothesisSetEventCauseEnum operator_ =
      _$hypothesisSetEventCauseEnum_operator_;
  @BuiltValueEnumConst(wireName: r'created')
  static const HypothesisSetEventCauseEnum created =
      _$hypothesisSetEventCauseEnum_created;

  static Serializer<HypothesisSetEventCauseEnum> get serializer =>
      _$hypothesisSetEventCauseEnumSerializer;

  const HypothesisSetEventCauseEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetEventCauseEnum> get values =>
      _$hypothesisSetEventCauseEnumValues;
  static HypothesisSetEventCauseEnum valueOf(String name) =>
      _$hypothesisSetEventCauseEnumValueOf(name);
}
