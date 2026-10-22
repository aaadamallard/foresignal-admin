//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/glance_alerts.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/glance_activity.dart';
import 'package:foresignal_api/src/model/glance_briefing.dart';
import 'package:foresignal_api/src/model/glance_sources.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'glance.g.dart';

/// ≤ 2,048-byte status document for widgets, watches and e-ink (038). Anonymous callers get status, serverTime, alerts.latest and lastSeq only (counts omitted unless glance.exposeCountsAnonymously).
///
/// Properties:
/// * [serverTime]
/// * [status]
/// * [alerts]
/// * [sources]
/// * [briefing]
/// * [activity]
/// * [lastSeq]
/// * [links] - Deep links from clientLinks
/// * [sections] - GlanceContributor sections (e.g. weather at place, 056), each within a byte budget
@BuiltValue()
abstract class Glance implements Built<Glance, GlanceBuilder> {
  @BuiltValueField(wireName: r'serverTime')
  DateTime get serverTime;

  @BuiltValueField(wireName: r'status')
  GlanceStatusEnum get status;
  // enum statusEnum {  ok,  degraded,  failing,  };

  @BuiltValueField(wireName: r'alerts')
  GlanceAlerts? get alerts;

  @BuiltValueField(wireName: r'sources')
  GlanceSources? get sources;

  @BuiltValueField(wireName: r'briefing')
  GlanceBriefing? get briefing;

  @BuiltValueField(wireName: r'activity')
  GlanceActivity? get activity;

  @BuiltValueField(wireName: r'lastSeq')
  int get lastSeq;

  /// Deep links from clientLinks
  @BuiltValueField(wireName: r'links')
  BuiltMap<String, String>? get links;

  /// GlanceContributor sections (e.g. weather at place, 056), each within a byte budget
  @BuiltValueField(wireName: r'sections')
  BuiltMap<String, JsonObject?>? get sections;

  Glance._();

  factory Glance([void updates(GlanceBuilder b)]) = _$Glance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GlanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Glance> get serializer => _$GlanceSerializer();
}

class _$GlanceSerializer implements PrimitiveSerializer<Glance> {
  @override
  final Iterable<Type> types = const [Glance, _$Glance];

  @override
  final String wireName = r'Glance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Glance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'serverTime';
    yield serializers.serialize(
      object.serverTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(GlanceStatusEnum),
    );
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(GlanceAlerts),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(GlanceSources),
      );
    }
    if (object.briefing != null) {
      yield r'briefing';
      yield serializers.serialize(
        object.briefing,
        specifiedType: const FullType.nullable(GlanceBriefing),
      );
    }
    if (object.activity != null) {
      yield r'activity';
      yield serializers.serialize(
        object.activity,
        specifiedType: const FullType(GlanceActivity),
      );
    }
    yield r'lastSeq';
    yield serializers.serialize(
      object.lastSeq,
      specifiedType: const FullType(int),
    );
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.sections != null) {
      yield r'sections';
      yield serializers.serialize(
        object.sections,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Glance object, {
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
    required GlanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'serverTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.serverTime = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(GlanceStatusEnum),
                  )
                  as GlanceStatusEnum;
          result.status = valueDes;
          break;
        case r'alerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(GlanceAlerts),
                  )
                  as GlanceAlerts?;
          if (valueDes == null) continue;
          result.alerts.replace(valueDes);
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(GlanceSources),
                  )
                  as GlanceSources?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'briefing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(GlanceBriefing),
                  )
                  as GlanceBriefing?;
          if (valueDes == null) continue;
          result.briefing.replace(valueDes);
          break;
        case r'activity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(GlanceActivity),
                  )
                  as GlanceActivity?;
          if (valueDes == null) continue;
          result.activity.replace(valueDes);
          break;
        case r'lastSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.lastSeq = valueDes;
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'sections':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.sections.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Glance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlanceBuilder();
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

class GlanceStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const GlanceStatusEnum ok = _$glanceStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'degraded')
  static const GlanceStatusEnum degraded = _$glanceStatusEnum_degraded;
  @BuiltValueEnumConst(wireName: r'failing')
  static const GlanceStatusEnum failing = _$glanceStatusEnum_failing;

  static Serializer<GlanceStatusEnum> get serializer =>
      _$glanceStatusEnumSerializer;

  const GlanceStatusEnum._(String name) : super(name);

  static BuiltSet<GlanceStatusEnum> get values => _$glanceStatusEnumValues;
  static GlanceStatusEnum valueOf(String name) =>
      _$glanceStatusEnumValueOf(name);
}
