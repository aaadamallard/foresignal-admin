//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_stream_alerts_filter.g.dart';

/// Filter block for the `alerts` topic of /v1/events/stream
///
/// Properties:
/// * [minSeverity]
/// * [ruleId] - Rule ids
/// * [source_] - Source ids
/// * [kind] - Kinds
/// * [includeSuppressed] - Include alerts suppressed by a rule or alert snooze
@BuiltValue()
abstract class EventStreamAlertsFilter
    implements Built<EventStreamAlertsFilter, EventStreamAlertsFilterBuilder> {
  @BuiltValueField(wireName: r'minSeverity')
  EventStreamAlertsFilterMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  /// Rule ids
  @BuiltValueField(wireName: r'ruleId')
  BuiltList<String>? get ruleId;

  /// Source ids
  @BuiltValueField(wireName: r'source')
  BuiltList<String>? get source_;

  /// Kinds
  @BuiltValueField(wireName: r'kind')
  BuiltList<String>? get kind;

  /// Include alerts suppressed by a rule or alert snooze
  @BuiltValueField(wireName: r'includeSuppressed')
  bool? get includeSuppressed;

  EventStreamAlertsFilter._();

  factory EventStreamAlertsFilter(
          [void updates(EventStreamAlertsFilterBuilder b)]) =
      _$EventStreamAlertsFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStreamAlertsFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStreamAlertsFilter> get serializer =>
      _$EventStreamAlertsFilterSerializer();
}

class _$EventStreamAlertsFilterSerializer
    implements PrimitiveSerializer<EventStreamAlertsFilter> {
  @override
  final Iterable<Type> types = const [
    EventStreamAlertsFilter,
    _$EventStreamAlertsFilter
  ];

  @override
  final String wireName = r'EventStreamAlertsFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStreamAlertsFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType:
            const FullType.nullable(EventStreamAlertsFilterMinSeverityEnum),
      );
    }
    if (object.ruleId != null) {
      yield r'ruleId';
      yield serializers.serialize(
        object.ruleId,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.includeSuppressed != null) {
      yield r'includeSuppressed';
      yield serializers.serialize(
        object.includeSuppressed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStreamAlertsFilter object, {
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
    required EventStreamAlertsFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(EventStreamAlertsFilterMinSeverityEnum),
          ) as EventStreamAlertsFilterMinSeverityEnum?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleId.replace(valueDes);
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.source_.replace(valueDes);
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kind.replace(valueDes);
          break;
        case r'includeSuppressed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includeSuppressed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStreamAlertsFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStreamAlertsFilterBuilder();
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

class EventStreamAlertsFilterMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const EventStreamAlertsFilterMinSeverityEnum info =
      _$eventStreamAlertsFilterMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const EventStreamAlertsFilterMinSeverityEnum warning =
      _$eventStreamAlertsFilterMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const EventStreamAlertsFilterMinSeverityEnum critical =
      _$eventStreamAlertsFilterMinSeverityEnum_critical;

  static Serializer<EventStreamAlertsFilterMinSeverityEnum> get serializer =>
      _$eventStreamAlertsFilterMinSeverityEnumSerializer;

  const EventStreamAlertsFilterMinSeverityEnum._(String name) : super(name);

  static BuiltSet<EventStreamAlertsFilterMinSeverityEnum> get values =>
      _$eventStreamAlertsFilterMinSeverityEnumValues;
  static EventStreamAlertsFilterMinSeverityEnum valueOf(String name) =>
      _$eventStreamAlertsFilterMinSeverityEnumValueOf(name);
}
