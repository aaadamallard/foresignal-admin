//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_filters.g.dart';

/// Which notifications a push target receives (031; shared by subscriptions and native devices)
///
/// Properties:
/// * [events]
/// * [ruleIds] - null = all rules
/// * [minSeverity]
/// * [tags] - Any-of rule tags
@BuiltValue()
abstract class PushFilters implements Built<PushFilters, PushFiltersBuilder> {
  @BuiltValueField(wireName: r'events')
  BuiltList<PushFiltersEventsEnum>? get events;
  // enum eventsEnum {  alert,  briefing,  system,  };

  /// null = all rules
  @BuiltValueField(wireName: r'ruleIds')
  BuiltList<String>? get ruleIds;

  @BuiltValueField(wireName: r'minSeverity')
  PushFiltersMinSeverityEnum? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  /// Any-of rule tags
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  PushFilters._();

  factory PushFilters([void updates(PushFiltersBuilder b)]) = _$PushFilters;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushFiltersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushFilters> get serializer => _$PushFiltersSerializer();
}

class _$PushFiltersSerializer implements PrimitiveSerializer<PushFilters> {
  @override
  final Iterable<Type> types = const [PushFilters, _$PushFilters];

  @override
  final String wireName = r'PushFilters';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.events != null) {
      yield r'events';
      yield serializers.serialize(
        object.events,
        specifiedType: const FullType(BuiltList, [
          FullType(PushFiltersEventsEnum),
        ]),
      );
    }
    if (object.ruleIds != null) {
      yield r'ruleIds';
      yield serializers.serialize(
        object.ruleIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(PushFiltersMinSeverityEnum),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushFilters object, {
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
    required PushFiltersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'events':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(PushFiltersEventsEnum),
                    ]),
                  )
                  as BuiltList<PushFiltersEventsEnum>?;
          if (valueDes == null) continue;
          result.events.replace(valueDes);
          break;
        case r'ruleIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleIds.replace(valueDes);
          break;
        case r'minSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushFiltersMinSeverityEnum,
                    ),
                  )
                  as PushFiltersMinSeverityEnum?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushFilters deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushFiltersBuilder();
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

class PushFiltersEventsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const PushFiltersEventsEnum alert = _$pushFiltersEventsEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const PushFiltersEventsEnum briefing =
      _$pushFiltersEventsEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const PushFiltersEventsEnum system = _$pushFiltersEventsEnum_system;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushFiltersEventsEnum unknownDefaultOpenApi =
      _$pushFiltersEventsEnum_unknownDefaultOpenApi;

  static Serializer<PushFiltersEventsEnum> get serializer =>
      _$pushFiltersEventsEnumSerializer;

  const PushFiltersEventsEnum._(String name) : super(name);

  static BuiltSet<PushFiltersEventsEnum> get values =>
      _$pushFiltersEventsEnumValues;
  static PushFiltersEventsEnum valueOf(String name) =>
      _$pushFiltersEventsEnumValueOf(name);
}

class PushFiltersMinSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const PushFiltersMinSeverityEnum info =
      _$pushFiltersMinSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const PushFiltersMinSeverityEnum warning =
      _$pushFiltersMinSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const PushFiltersMinSeverityEnum critical =
      _$pushFiltersMinSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushFiltersMinSeverityEnum unknownDefaultOpenApi =
      _$pushFiltersMinSeverityEnum_unknownDefaultOpenApi;

  static Serializer<PushFiltersMinSeverityEnum> get serializer =>
      _$pushFiltersMinSeverityEnumSerializer;

  const PushFiltersMinSeverityEnum._(String name) : super(name);

  static BuiltSet<PushFiltersMinSeverityEnum> get values =>
      _$pushFiltersMinSeverityEnumValues;
  static PushFiltersMinSeverityEnum valueOf(String name) =>
      _$pushFiltersMinSeverityEnumValueOf(name);
}
