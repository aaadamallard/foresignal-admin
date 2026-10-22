//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/trigger_rule_input_window.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/trigger_rule_input_conditions_inner.dart';
import 'package:foresignal_api/src/model/geofence_ref.dart';
import 'package:foresignal_api/src/model/active_window.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trigger_rule_input.g.dart';

/// All conditions are ANDed. At least one of sources, kinds, conditions, geofence or near is required. Unknown sources → 400; unknown kinds warn.
///
/// Properties:
/// * [name]
/// * [enabled]
/// * [source_] - Deprecated alias normalised into `sources` (both given → 400)
/// * [kind] - Deprecated alias normalised into `kinds` (both given → 400)
/// * [conditions] - Payload conditions and `approach` conditions, ANDed
/// * [geofence] - Polygon/MultiPolygon, or LineString/MultiLineString with bufferMeters (buffered server-side as ST_Buffer(line::geography, bufferMeters)); ≤ 10,000 vertices; fixed, split at the antimeridian and stored as MultiPolygon. Mutually exclusive with near. When `geofenceRoute` (a line) is sent together with bufferMeters, the route is the input and `geofence` is ignored, so a rule read back can be sent back unchanged.
/// * [mode] - match: every matching non-HEARTBEAT version. enter: matches and the previous version did not (or was a tombstone, or is new). exit: the previous version matched and this one does not or is a tombstone. Edge modes need a geofence, near or a condition.
/// * [onlyNew]
/// * [cooldown] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [messageTemplate] - Placeholders {{name}}, {{source}}, {{externalId}}, {{kind}}, {{title}}, {{severity}}, {{observedAt}}, {{eventTime}}, {{time}}, {{validFrom}}, {{payload.<path>}}; region placeholders (040), empty when unknown: {{near.name}}, {{near.km}}, {{near.mi}}, {{near.bearing}} (16-point compass), {{near.text}} (\"12 km NNE of Austin, TX\"; miles with {{near.text|imperial}} or a channel's config.units=imperial), {{country}} (ISO2), {{country.name}}, {{admin1}}, {{admin1.name}}, {{county}} (the county name, else its FIPS5) and {{sea}}
/// * [severity]
/// * [enrich] - Add an LLM context summary to each alert (030). Accepted without a chat provider: the flag is stored and enrichment is skipped until one is assigned and llm.enrichmentEnabled is on
/// * [enrichRadiusKm] - Enrichment radius (030)
/// * [enrichWindow] - Context window around the alert for enrichment (030): ISO-8601 duration or shorthand, 10m to 7d
/// * [tags] - Copied to alerts
/// * [sources] - Source ids (≤ 50)
/// * [kinds] - Kinds (≤ 50)
/// * [bufferMeters] - Required when geofence is a LineString/MultiLineString: corridor half-width (1–50,000 m)
/// * [hysteresisMeters] - Edge band for enter/exit geofence and near rules (0–5,000 m, default 0): an enter edge needs the position inside the fence shrunk by the band, an exit edge outside the fence grown by it, and edges per (rule, entity) alternate, so jitter along a boundary fires nothing. 400 GEOFENCE_TOO_SMALL_FOR_HYSTERESIS when the shrunk fence is empty.
/// * [near] - Places, point or moving anchor (036); materialised into geofence
/// * [reappearAsEnter] - Fire enter on REAPPEAR (default true with a geofence, else false)
/// * [cooldownScope]
/// * [autoResolve] - true = all defaults on, false/null = off; not allowed on exit rules
/// * [maxAlertsPerHour] - Storm cap per rule (null → triggers.defaultMaxAlertsPerHour, default 120; 0 = unlimited)
/// * [autoDisableOnStorm]
/// * [activeFrom]
/// * [activeUntil] - Rule is disabled automatically after this time
/// * [activeWindow]
/// * [forecastHorizon] - Fire on versions whose validFrom ≤ evaluation time + horizon (400 FEATURE_UNAVAILABLE without validFrom). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [escalationPolicyId] - Escalation policy (033), validated on save
/// * [geofenceRef] - Region preset instead of a polygon (040); 409 REFERENCE_DATA_MISSING when reference data is absent
/// * [weatherContext] - Compute `alert.context.weather` for this rule's geolocated alerts (global setting `weather.alertContext`)
/// * [type] - Rule type; existing rules are `record`. `onlyNew`, `mode` and `reappearAsEnter` are rejected for windowed types (400 WINDOW_RULE_INVALID).
/// * [window]
@BuiltValue()
abstract class TriggerRuleInput
    implements Built<TriggerRuleInput, TriggerRuleInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// Deprecated alias normalised into `sources` (both given → 400)
  @Deprecated('source_ has been deprecated')
  @BuiltValueField(wireName: r'source')
  String? get source_;

  /// Deprecated alias normalised into `kinds` (both given → 400)
  @Deprecated('kind has been deprecated')
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// Payload conditions and `approach` conditions, ANDed
  @BuiltValueField(wireName: r'conditions')
  BuiltList<TriggerRuleInputConditionsInner>? get conditions;

  /// Polygon/MultiPolygon, or LineString/MultiLineString with bufferMeters (buffered server-side as ST_Buffer(line::geography, bufferMeters)); ≤ 10,000 vertices; fixed, split at the antimeridian and stored as MultiPolygon. Mutually exclusive with near. When `geofenceRoute` (a line) is sent together with bufferMeters, the route is the input and `geofence` is ignored, so a rule read back can be sent back unchanged.
  @BuiltValueField(wireName: r'geofence')
  Geometry? get geofence;

  /// match: every matching non-HEARTBEAT version. enter: matches and the previous version did not (or was a tombstone, or is new). exit: the previous version matched and this one does not or is a tombstone. Edge modes need a geofence, near or a condition.
  @BuiltValueField(wireName: r'mode')
  TriggerRuleInputModeEnum? get mode;
  // enum modeEnum {  match,  enter,  exit,  };

  @BuiltValueField(wireName: r'onlyNew')
  bool? get onlyNew;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'cooldown')
  String? get cooldown;

  /// Placeholders {{name}}, {{source}}, {{externalId}}, {{kind}}, {{title}}, {{severity}}, {{observedAt}}, {{eventTime}}, {{time}}, {{validFrom}}, {{payload.<path>}}; region placeholders (040), empty when unknown: {{near.name}}, {{near.km}}, {{near.mi}}, {{near.bearing}} (16-point compass), {{near.text}} (\"12 km NNE of Austin, TX\"; miles with {{near.text|imperial}} or a channel's config.units=imperial), {{country}} (ISO2), {{country.name}}, {{admin1}}, {{admin1.name}}, {{county}} (the county name, else its FIPS5) and {{sea}}
  @BuiltValueField(wireName: r'messageTemplate')
  String? get messageTemplate;

  @BuiltValueField(wireName: r'severity')
  TriggerRuleInputSeverityEnum? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  /// Add an LLM context summary to each alert (030). Accepted without a chat provider: the flag is stored and enrichment is skipped until one is assigned and llm.enrichmentEnabled is on
  @BuiltValueField(wireName: r'enrich')
  bool? get enrich;

  /// Enrichment radius (030)
  @BuiltValueField(wireName: r'enrichRadiusKm')
  num? get enrichRadiusKm;

  /// Context window around the alert for enrichment (030): ISO-8601 duration or shorthand, 10m to 7d
  @BuiltValueField(wireName: r'enrichWindow')
  String? get enrichWindow;

  /// Copied to alerts
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Source ids (≤ 50)
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  /// Kinds (≤ 50)
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// Required when geofence is a LineString/MultiLineString: corridor half-width (1–50,000 m)
  @BuiltValueField(wireName: r'bufferMeters')
  num? get bufferMeters;

  /// Edge band for enter/exit geofence and near rules (0–5,000 m, default 0): an enter edge needs the position inside the fence shrunk by the band, an exit edge outside the fence grown by it, and edges per (rule, entity) alternate, so jitter along a boundary fires nothing. 400 GEOFENCE_TOO_SMALL_FOR_HYSTERESIS when the shrunk fence is empty.
  @BuiltValueField(wireName: r'hysteresisMeters')
  num? get hysteresisMeters;

  /// Places, point or moving anchor (036); materialised into geofence
  @BuiltValueField(wireName: r'near')
  JsonObject? get near;

  /// Fire enter on REAPPEAR (default true with a geofence, else false)
  @BuiltValueField(wireName: r'reappearAsEnter')
  bool? get reappearAsEnter;

  @BuiltValueField(wireName: r'cooldownScope')
  TriggerRuleInputCooldownScopeEnum? get cooldownScope;
  // enum cooldownScopeEnum {  record,  rule,  };

  /// true = all defaults on, false/null = off; not allowed on exit rules
  @BuiltValueField(wireName: r'autoResolve')
  JsonObject? get autoResolve;

  /// Storm cap per rule (null → triggers.defaultMaxAlertsPerHour, default 120; 0 = unlimited)
  @BuiltValueField(wireName: r'maxAlertsPerHour')
  int? get maxAlertsPerHour;

  @BuiltValueField(wireName: r'autoDisableOnStorm')
  bool? get autoDisableOnStorm;

  @BuiltValueField(wireName: r'activeFrom')
  DateTime? get activeFrom;

  /// Rule is disabled automatically after this time
  @BuiltValueField(wireName: r'activeUntil')
  DateTime? get activeUntil;

  @BuiltValueField(wireName: r'activeWindow')
  ActiveWindow? get activeWindow;

  /// Fire on versions whose validFrom ≤ evaluation time + horizon (400 FEATURE_UNAVAILABLE without validFrom). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'forecastHorizon')
  String? get forecastHorizon;

  /// Escalation policy (033), validated on save
  @BuiltValueField(wireName: r'escalationPolicyId')
  String? get escalationPolicyId;

  /// Region preset instead of a polygon (040); 409 REFERENCE_DATA_MISSING when reference data is absent
  @BuiltValueField(wireName: r'geofenceRef')
  GeofenceRef? get geofenceRef;

  /// Compute `alert.context.weather` for this rule's geolocated alerts (global setting `weather.alertContext`)
  @BuiltValueField(wireName: r'weatherContext')
  TriggerRuleInputWeatherContextEnum? get weatherContext;
  // enum weatherContextEnum {  auto,  off,  };

  /// Rule type; existing rules are `record`. `onlyNew`, `mode` and `reappearAsEnter` are rejected for windowed types (400 WINDOW_RULE_INVALID).
  @BuiltValueField(wireName: r'type')
  TriggerRuleInputTypeEnum? get type;
  // enum typeEnum {  record,  count,  absence,  anomaly,  };

  @BuiltValueField(wireName: r'window')
  TriggerRuleInputWindow? get window;

  TriggerRuleInput._();

  factory TriggerRuleInput([void updates(TriggerRuleInputBuilder b)]) =
      _$TriggerRuleInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TriggerRuleInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TriggerRuleInput> get serializer =>
      _$TriggerRuleInputSerializer();
}

class _$TriggerRuleInputSerializer
    implements PrimitiveSerializer<TriggerRuleInput> {
  @override
  final Iterable<Type> types = const [TriggerRuleInput, _$TriggerRuleInput];

  @override
  final String wireName = r'TriggerRuleInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TriggerRuleInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [
          FullType(TriggerRuleInputConditionsInner),
        ]),
      );
    }
    if (object.geofence != null) {
      yield r'geofence';
      yield serializers.serialize(
        object.geofence,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(TriggerRuleInputModeEnum),
      );
    }
    if (object.onlyNew != null) {
      yield r'onlyNew';
      yield serializers.serialize(
        object.onlyNew,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cooldown != null) {
      yield r'cooldown';
      yield serializers.serialize(
        object.cooldown,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageTemplate != null) {
      yield r'messageTemplate';
      yield serializers.serialize(
        object.messageTemplate,
        specifiedType: const FullType(String),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(TriggerRuleInputSeverityEnum),
      );
    }
    if (object.enrich != null) {
      yield r'enrich';
      yield serializers.serialize(
        object.enrich,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enrichRadiusKm != null) {
      yield r'enrichRadiusKm';
      yield serializers.serialize(
        object.enrichRadiusKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.enrichWindow != null) {
      yield r'enrichWindow';
      yield serializers.serialize(
        object.enrichWindow,
        specifiedType: const FullType(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bufferMeters != null) {
      yield r'bufferMeters';
      yield serializers.serialize(
        object.bufferMeters,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.hysteresisMeters != null) {
      yield r'hysteresisMeters';
      yield serializers.serialize(
        object.hysteresisMeters,
        specifiedType: const FullType(num),
      );
    }
    if (object.near != null) {
      yield r'near';
      yield serializers.serialize(
        object.near,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.reappearAsEnter != null) {
      yield r'reappearAsEnter';
      yield serializers.serialize(
        object.reappearAsEnter,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cooldownScope != null) {
      yield r'cooldownScope';
      yield serializers.serialize(
        object.cooldownScope,
        specifiedType: const FullType(TriggerRuleInputCooldownScopeEnum),
      );
    }
    if (object.autoResolve != null) {
      yield r'autoResolve';
      yield serializers.serialize(
        object.autoResolve,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.maxAlertsPerHour != null) {
      yield r'maxAlertsPerHour';
      yield serializers.serialize(
        object.maxAlertsPerHour,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.autoDisableOnStorm != null) {
      yield r'autoDisableOnStorm';
      yield serializers.serialize(
        object.autoDisableOnStorm,
        specifiedType: const FullType(bool),
      );
    }
    if (object.activeFrom != null) {
      yield r'activeFrom';
      yield serializers.serialize(
        object.activeFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.activeUntil != null) {
      yield r'activeUntil';
      yield serializers.serialize(
        object.activeUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.activeWindow != null) {
      yield r'activeWindow';
      yield serializers.serialize(
        object.activeWindow,
        specifiedType: const FullType.nullable(ActiveWindow),
      );
    }
    if (object.forecastHorizon != null) {
      yield r'forecastHorizon';
      yield serializers.serialize(
        object.forecastHorizon,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.escalationPolicyId != null) {
      yield r'escalationPolicyId';
      yield serializers.serialize(
        object.escalationPolicyId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.geofenceRef != null) {
      yield r'geofenceRef';
      yield serializers.serialize(
        object.geofenceRef,
        specifiedType: const FullType.nullable(GeofenceRef),
      );
    }
    if (object.weatherContext != null) {
      yield r'weatherContext';
      yield serializers.serialize(
        object.weatherContext,
        specifiedType: const FullType(TriggerRuleInputWeatherContextEnum),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TriggerRuleInputTypeEnum),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType.nullable(TriggerRuleInputWindow),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TriggerRuleInput object, {
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
    required TriggerRuleInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'conditions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TriggerRuleInputConditionsInner),
                    ]),
                  )
                  as BuiltList<TriggerRuleInputConditionsInner>?;
          if (valueDes == null) continue;
          result.conditions.replace(valueDes);
          break;
        case r'geofence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geofence.replace(valueDes);
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleInputModeEnum,
                    ),
                  )
                  as TriggerRuleInputModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'onlyNew':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.onlyNew = valueDes;
          break;
        case r'cooldown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cooldown = valueDes;
          break;
        case r'messageTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.messageTemplate = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleInputSeverityEnum,
                    ),
                  )
                  as TriggerRuleInputSeverityEnum?;
          if (valueDes == null) continue;
          result.severity = valueDes;
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
        case r'enrichRadiusKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.enrichRadiusKm = valueDes;
          break;
        case r'enrichWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.enrichWindow = valueDes;
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
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'bufferMeters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bufferMeters = valueDes;
          break;
        case r'hysteresisMeters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.hysteresisMeters = valueDes;
          break;
        case r'near':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.near = valueDes;
          break;
        case r'reappearAsEnter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.reappearAsEnter = valueDes;
          break;
        case r'cooldownScope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleInputCooldownScopeEnum,
                    ),
                  )
                  as TriggerRuleInputCooldownScopeEnum?;
          if (valueDes == null) continue;
          result.cooldownScope = valueDes;
          break;
        case r'autoResolve':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.autoResolve = valueDes;
          break;
        case r'maxAlertsPerHour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxAlertsPerHour = valueDes;
          break;
        case r'autoDisableOnStorm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.autoDisableOnStorm = valueDes;
          break;
        case r'activeFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.activeFrom = valueDes;
          break;
        case r'activeUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.activeUntil = valueDes;
          break;
        case r'activeWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ActiveWindow),
                  )
                  as ActiveWindow?;
          if (valueDes == null) continue;
          result.activeWindow.replace(valueDes);
          break;
        case r'forecastHorizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.forecastHorizon = valueDes;
          break;
        case r'escalationPolicyId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.escalationPolicyId = valueDes;
          break;
        case r'geofenceRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(GeofenceRef),
                  )
                  as GeofenceRef?;
          if (valueDes == null) continue;
          result.geofenceRef.replace(valueDes);
          break;
        case r'weatherContext':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleInputWeatherContextEnum,
                    ),
                  )
                  as TriggerRuleInputWeatherContextEnum?;
          if (valueDes == null) continue;
          result.weatherContext = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleInputTypeEnum,
                    ),
                  )
                  as TriggerRuleInputTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleInputWindow,
                    ),
                  )
                  as TriggerRuleInputWindow?;
          if (valueDes == null) continue;
          result.window.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TriggerRuleInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TriggerRuleInputBuilder();
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

/// match: every matching non-HEARTBEAT version. enter: matches and the previous version did not (or was a tombstone, or is new). exit: the previous version matched and this one does not or is a tombstone. Edge modes need a geofence, near or a condition.
class TriggerRuleInputModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'match')
  static const TriggerRuleInputModeEnum match =
      _$triggerRuleInputModeEnum_match;
  @BuiltValueEnumConst(wireName: r'enter')
  static const TriggerRuleInputModeEnum enter =
      _$triggerRuleInputModeEnum_enter;
  @BuiltValueEnumConst(wireName: r'exit')
  static const TriggerRuleInputModeEnum exit = _$triggerRuleInputModeEnum_exit;

  static Serializer<TriggerRuleInputModeEnum> get serializer =>
      _$triggerRuleInputModeEnumSerializer;

  const TriggerRuleInputModeEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputModeEnum> get values =>
      _$triggerRuleInputModeEnumValues;
  static TriggerRuleInputModeEnum valueOf(String name) =>
      _$triggerRuleInputModeEnumValueOf(name);
}

class TriggerRuleInputSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const TriggerRuleInputSeverityEnum info =
      _$triggerRuleInputSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const TriggerRuleInputSeverityEnum warning =
      _$triggerRuleInputSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const TriggerRuleInputSeverityEnum critical =
      _$triggerRuleInputSeverityEnum_critical;

  static Serializer<TriggerRuleInputSeverityEnum> get serializer =>
      _$triggerRuleInputSeverityEnumSerializer;

  const TriggerRuleInputSeverityEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputSeverityEnum> get values =>
      _$triggerRuleInputSeverityEnumValues;
  static TriggerRuleInputSeverityEnum valueOf(String name) =>
      _$triggerRuleInputSeverityEnumValueOf(name);
}

class TriggerRuleInputCooldownScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const TriggerRuleInputCooldownScopeEnum record =
      _$triggerRuleInputCooldownScopeEnum_record;
  @BuiltValueEnumConst(wireName: r'rule')
  static const TriggerRuleInputCooldownScopeEnum rule =
      _$triggerRuleInputCooldownScopeEnum_rule;

  static Serializer<TriggerRuleInputCooldownScopeEnum> get serializer =>
      _$triggerRuleInputCooldownScopeEnumSerializer;

  const TriggerRuleInputCooldownScopeEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputCooldownScopeEnum> get values =>
      _$triggerRuleInputCooldownScopeEnumValues;
  static TriggerRuleInputCooldownScopeEnum valueOf(String name) =>
      _$triggerRuleInputCooldownScopeEnumValueOf(name);
}

/// Compute `alert.context.weather` for this rule's geolocated alerts (global setting `weather.alertContext`)
class TriggerRuleInputWeatherContextEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const TriggerRuleInputWeatherContextEnum auto =
      _$triggerRuleInputWeatherContextEnum_auto;
  @BuiltValueEnumConst(wireName: r'off')
  static const TriggerRuleInputWeatherContextEnum off =
      _$triggerRuleInputWeatherContextEnum_off;

  static Serializer<TriggerRuleInputWeatherContextEnum> get serializer =>
      _$triggerRuleInputWeatherContextEnumSerializer;

  const TriggerRuleInputWeatherContextEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputWeatherContextEnum> get values =>
      _$triggerRuleInputWeatherContextEnumValues;
  static TriggerRuleInputWeatherContextEnum valueOf(String name) =>
      _$triggerRuleInputWeatherContextEnumValueOf(name);
}

/// Rule type; existing rules are `record`. `onlyNew`, `mode` and `reappearAsEnter` are rejected for windowed types (400 WINDOW_RULE_INVALID).
class TriggerRuleInputTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const TriggerRuleInputTypeEnum record =
      _$triggerRuleInputTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'count')
  static const TriggerRuleInputTypeEnum count =
      _$triggerRuleInputTypeEnum_count;
  @BuiltValueEnumConst(wireName: r'absence')
  static const TriggerRuleInputTypeEnum absence =
      _$triggerRuleInputTypeEnum_absence;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const TriggerRuleInputTypeEnum anomaly =
      _$triggerRuleInputTypeEnum_anomaly;

  static Serializer<TriggerRuleInputTypeEnum> get serializer =>
      _$triggerRuleInputTypeEnumSerializer;

  const TriggerRuleInputTypeEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleInputTypeEnum> get values =>
      _$triggerRuleInputTypeEnumValues;
  static TriggerRuleInputTypeEnum valueOf(String name) =>
      _$triggerRuleInputTypeEnumValueOf(name);
}
