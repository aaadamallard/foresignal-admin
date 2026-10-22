//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/event_selector_unexplained_move.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/event_selector_change_point.dart';
import 'package:foresignal_api/src/model/event_selector_situation_activated.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_selector.g.dart';

/// Selects event occurrences: one of 103's selector forms (`rule`, `alertRuleId`, `intelEventType`, `anomalyRuleId` + `classification`) or a 118-121 addition (`alertRuleTag`, `situationActivated`, `changePoint`, `unexplainedMove`, `referenceFamily`, `timestamps`); exactly one form per selector, optionally narrowed by `regionCodes` and `minSeverity`.
///
/// Properties:
/// * [rule] - Inline record filter in 017 trigger-condition syntax
/// * [alertRuleId] - Alerts fired by this 017 rule
/// * [alertRuleTag] - Alerts fired by rules carrying this tag (120 event families)
/// * [intelEventType] - 101 intelligence event type
/// * [anomalyRuleId] - 100 anomaly rule id; use with `classification`
/// * [classification] - 100 anomaly classification, e.g. `activity-up`
/// * [situationActivated]
/// * [changePoint]
/// * [unexplainedMove]
/// * [referenceFamily] - 121 reference-history family, e.g. `conflict:battles` or `seismic:m5`
/// * [timestamps] - Explicit event times
/// * [minSeverity] - Minimum severity of the selected events (alert/intel severities or finding severities)
/// * [regionCodes] - Only occurrences tagged with one of these regions
/// * [label] - Display label (generated when absent)
@BuiltValue()
abstract class EventSelector
    implements Built<EventSelector, EventSelectorBuilder> {
  /// Inline record filter in 017 trigger-condition syntax
  @BuiltValueField(wireName: r'rule')
  BuiltMap<String, JsonObject?>? get rule;

  /// Alerts fired by this 017 rule
  @BuiltValueField(wireName: r'alertRuleId')
  String? get alertRuleId;

  /// Alerts fired by rules carrying this tag (120 event families)
  @BuiltValueField(wireName: r'alertRuleTag')
  String? get alertRuleTag;

  /// 101 intelligence event type
  @BuiltValueField(wireName: r'intelEventType')
  String? get intelEventType;

  /// 100 anomaly rule id; use with `classification`
  @BuiltValueField(wireName: r'anomalyRuleId')
  String? get anomalyRuleId;

  /// 100 anomaly classification, e.g. `activity-up`
  @BuiltValueField(wireName: r'classification')
  String? get classification;

  @BuiltValueField(wireName: r'situationActivated')
  EventSelectorSituationActivated? get situationActivated;

  @BuiltValueField(wireName: r'changePoint')
  EventSelectorChangePoint? get changePoint;

  @BuiltValueField(wireName: r'unexplainedMove')
  EventSelectorUnexplainedMove? get unexplainedMove;

  /// 121 reference-history family, e.g. `conflict:battles` or `seismic:m5`
  @BuiltValueField(wireName: r'referenceFamily')
  String? get referenceFamily;

  /// Explicit event times
  @BuiltValueField(wireName: r'timestamps')
  BuiltList<DateTime>? get timestamps;

  /// Minimum severity of the selected events (alert/intel severities or finding severities)
  @BuiltValueField(wireName: r'minSeverity')
  EventSelectorMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  notable,  significant,  };

  /// Only occurrences tagged with one of these regions
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  /// Display label (generated when absent)
  @BuiltValueField(wireName: r'label')
  String? get label;

  EventSelector._();

  factory EventSelector([void updates(EventSelectorBuilder b)]) =
      _$EventSelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventSelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventSelector> get serializer =>
      _$EventSelectorSerializer();
}

class _$EventSelectorSerializer implements PrimitiveSerializer<EventSelector> {
  @override
  final Iterable<Type> types = const [EventSelector, _$EventSelector];

  @override
  final String wireName = r'EventSelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rule != null) {
      yield r'rule';
      yield serializers.serialize(
        object.rule,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.alertRuleId != null) {
      yield r'alertRuleId';
      yield serializers.serialize(
        object.alertRuleId,
        specifiedType: const FullType(String),
      );
    }
    if (object.alertRuleTag != null) {
      yield r'alertRuleTag';
      yield serializers.serialize(
        object.alertRuleTag,
        specifiedType: const FullType(String),
      );
    }
    if (object.intelEventType != null) {
      yield r'intelEventType';
      yield serializers.serialize(
        object.intelEventType,
        specifiedType: const FullType(String),
      );
    }
    if (object.anomalyRuleId != null) {
      yield r'anomalyRuleId';
      yield serializers.serialize(
        object.anomalyRuleId,
        specifiedType: const FullType(String),
      );
    }
    if (object.classification != null) {
      yield r'classification';
      yield serializers.serialize(
        object.classification,
        specifiedType: const FullType(String),
      );
    }
    if (object.situationActivated != null) {
      yield r'situationActivated';
      yield serializers.serialize(
        object.situationActivated,
        specifiedType: const FullType(EventSelectorSituationActivated),
      );
    }
    if (object.changePoint != null) {
      yield r'changePoint';
      yield serializers.serialize(
        object.changePoint,
        specifiedType: const FullType(EventSelectorChangePoint),
      );
    }
    if (object.unexplainedMove != null) {
      yield r'unexplainedMove';
      yield serializers.serialize(
        object.unexplainedMove,
        specifiedType: const FullType(EventSelectorUnexplainedMove),
      );
    }
    if (object.referenceFamily != null) {
      yield r'referenceFamily';
      yield serializers.serialize(
        object.referenceFamily,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestamps != null) {
      yield r'timestamps';
      yield serializers.serialize(
        object.timestamps,
        specifiedType: const FullType(BuiltList, [FullType(DateTime)]),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType.nullable(EventSelectorMinSeverityEnum),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventSelector object, {
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
    required EventSelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.rule.replace(valueDes);
          break;
        case r'alertRuleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.alertRuleId = valueDes;
          break;
        case r'alertRuleTag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.alertRuleTag = valueDes;
          break;
        case r'intelEventType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.intelEventType = valueDes;
          break;
        case r'anomalyRuleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.anomalyRuleId = valueDes;
          break;
        case r'classification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.classification = valueDes;
          break;
        case r'situationActivated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(EventSelectorSituationActivated),
          ) as EventSelectorSituationActivated?;
          if (valueDes == null) continue;
          result.situationActivated.replace(valueDes);
          break;
        case r'changePoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EventSelectorChangePoint),
          ) as EventSelectorChangePoint?;
          if (valueDes == null) continue;
          result.changePoint.replace(valueDes);
          break;
        case r'unexplainedMove':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(EventSelectorUnexplainedMove),
          ) as EventSelectorUnexplainedMove?;
          if (valueDes == null) continue;
          result.unexplainedMove.replace(valueDes);
          break;
        case r'referenceFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referenceFamily = valueDes;
          break;
        case r'timestamps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(DateTime)]),
          ) as BuiltList<DateTime>?;
          if (valueDes == null) continue;
          result.timestamps.replace(valueDes);
          break;
        case r'minSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(EventSelectorMinSeverityEnum),
          ) as EventSelectorMinSeverityEnum?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'regionCodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventSelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventSelectorBuilder();
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

/// Minimum severity of the selected events (alert/intel severities or finding severities)
class EventSelectorMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const EventSelectorMinSeverityEnum info =
      _$eventSelectorMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const EventSelectorMinSeverityEnum warning =
      _$eventSelectorMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const EventSelectorMinSeverityEnum critical =
      _$eventSelectorMinSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'notable')
  static const EventSelectorMinSeverityEnum notable =
      _$eventSelectorMinSeverityEnum_notable;
  @BuiltValueEnumConst(wireName: r'significant')
  static const EventSelectorMinSeverityEnum significant =
      _$eventSelectorMinSeverityEnum_significant;

  static Serializer<EventSelectorMinSeverityEnum> get serializer =>
      _$eventSelectorMinSeverityEnumSerializer;

  const EventSelectorMinSeverityEnum._(String name) : super(name);

  static BuiltSet<EventSelectorMinSeverityEnum> get values =>
      _$eventSelectorMinSeverityEnumValues;
  static EventSelectorMinSeverityEnum valueOf(String name) =>
      _$eventSelectorMinSeverityEnumValueOf(name);
}
