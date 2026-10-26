//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/trigger_rule_input_window.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/trigger_rule_input_conditions_inner.dart';
import 'package:foresignal_api/src/model/geofence_ref.dart';
import 'package:foresignal_api/src/model/trigger_rule_feedback_counts.dart';
import 'package:foresignal_api/src/model/active_window.dart';
import 'package:built_value/json_object.dart';
import 'package:foresignal_api/src/model/window_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trigger_rule.g.dart';

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
/// * [id]
/// * [createdAt]
/// * [updatedAt]
/// * [lastFiredAt]
/// * [alertCount]
/// * [lastError]
/// * [lastErrorAt]
/// * [openAlertCount]
/// * [suppressedCount] - Alerts suppressed by the storm cap
/// * [lastStormAt]
/// * [feedbackCounts]
/// * [snoozedUntil] - Read-only; set through snoozeTrigger
/// * [geofenceRoute] - Original line of a buffered route geofence (display only); `geofence` holds the materialised MultiPolygon
/// * [mutedUntil] - Set through POST /v1/triggers/{ruleId}/mute (033)
/// * [geofenceOrigin] - 036
/// * [anchorStatus] - Moving-anchor state (036); stale suspends the rule (ANCHOR_STALE)
/// * [windowStatus] - Windowed rules only
/// * [ownerPrincipalId] - The principal of the user who owns the rule (R2-008); null for a shared rule managed by an admin. Ignored on input.
@BuiltValue()
abstract class TriggerRule implements Built<TriggerRule, TriggerRuleBuilder> {
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
  TriggerRuleModeEnum? get mode;
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
  TriggerRuleSeverityEnum? get severity;
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
  TriggerRuleCooldownScopeEnum? get cooldownScope;
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
  TriggerRuleWeatherContextEnum? get weatherContext;
  // enum weatherContextEnum {  auto,  off,  };

  /// Rule type; existing rules are `record`. `onlyNew`, `mode` and `reappearAsEnter` are rejected for windowed types (400 WINDOW_RULE_INVALID).
  @BuiltValueField(wireName: r'type')
  TriggerRuleTypeEnum? get type;
  // enum typeEnum {  record,  count,  absence,  anomaly,  };

  @BuiltValueField(wireName: r'window')
  TriggerRuleInputWindow? get window;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'lastFiredAt')
  DateTime? get lastFiredAt;

  @BuiltValueField(wireName: r'alertCount')
  int? get alertCount;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'lastErrorAt')
  DateTime? get lastErrorAt;

  @BuiltValueField(wireName: r'openAlertCount')
  int? get openAlertCount;

  /// Alerts suppressed by the storm cap
  @BuiltValueField(wireName: r'suppressedCount')
  int? get suppressedCount;

  @BuiltValueField(wireName: r'lastStormAt')
  DateTime? get lastStormAt;

  @BuiltValueField(wireName: r'feedbackCounts')
  TriggerRuleFeedbackCounts? get feedbackCounts;

  /// Read-only; set through snoozeTrigger
  @BuiltValueField(wireName: r'snoozedUntil')
  DateTime? get snoozedUntil;

  /// Original line of a buffered route geofence (display only); `geofence` holds the materialised MultiPolygon
  @BuiltValueField(wireName: r'geofenceRoute')
  Geometry? get geofenceRoute;

  /// Set through POST /v1/triggers/{ruleId}/mute (033)
  @BuiltValueField(wireName: r'mutedUntil')
  DateTime? get mutedUntil;

  /// 036
  @BuiltValueField(wireName: r'geofenceOrigin')
  TriggerRuleGeofenceOriginEnum? get geofenceOrigin;
  // enum geofenceOriginEnum {  inline,  near,  };

  /// Moving-anchor state (036); stale suspends the rule (ANCHOR_STALE)
  @BuiltValueField(wireName: r'anchorStatus')
  TriggerRuleAnchorStatusEnum? get anchorStatus;
  // enum anchorStatusEnum {  active,  stale,  };

  /// Windowed rules only
  @BuiltValueField(wireName: r'windowStatus')
  WindowStatus? get windowStatus;

  /// The principal of the user who owns the rule (R2-008); null for a shared rule managed by an admin. Ignored on input.
  @BuiltValueField(wireName: r'ownerPrincipalId')
  String? get ownerPrincipalId;

  TriggerRule._();

  factory TriggerRule([void updates(TriggerRuleBuilder b)]) = _$TriggerRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TriggerRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TriggerRule> get serializer => _$TriggerRuleSerializer();
}

class _$TriggerRuleSerializer implements PrimitiveSerializer<TriggerRule> {
  @override
  final Iterable<Type> types = const [TriggerRule, _$TriggerRule];

  @override
  final String wireName = r'TriggerRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TriggerRule object, {
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
        specifiedType: const FullType(TriggerRuleModeEnum),
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
        specifiedType: const FullType(TriggerRuleSeverityEnum),
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
        specifiedType: const FullType(TriggerRuleCooldownScopeEnum),
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
        specifiedType: const FullType(TriggerRuleWeatherContextEnum),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TriggerRuleTypeEnum),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType.nullable(TriggerRuleInputWindow),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastFiredAt != null) {
      yield r'lastFiredAt';
      yield serializers.serialize(
        object.lastFiredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.alertCount != null) {
      yield r'alertCount';
      yield serializers.serialize(
        object.alertCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastErrorAt != null) {
      yield r'lastErrorAt';
      yield serializers.serialize(
        object.lastErrorAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.openAlertCount != null) {
      yield r'openAlertCount';
      yield serializers.serialize(
        object.openAlertCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.suppressedCount != null) {
      yield r'suppressedCount';
      yield serializers.serialize(
        object.suppressedCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastStormAt != null) {
      yield r'lastStormAt';
      yield serializers.serialize(
        object.lastStormAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.feedbackCounts != null) {
      yield r'feedbackCounts';
      yield serializers.serialize(
        object.feedbackCounts,
        specifiedType: const FullType(TriggerRuleFeedbackCounts),
      );
    }
    if (object.snoozedUntil != null) {
      yield r'snoozedUntil';
      yield serializers.serialize(
        object.snoozedUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.geofenceRoute != null) {
      yield r'geofenceRoute';
      yield serializers.serialize(
        object.geofenceRoute,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.mutedUntil != null) {
      yield r'mutedUntil';
      yield serializers.serialize(
        object.mutedUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.geofenceOrigin != null) {
      yield r'geofenceOrigin';
      yield serializers.serialize(
        object.geofenceOrigin,
        specifiedType: const FullType(TriggerRuleGeofenceOriginEnum),
      );
    }
    if (object.anchorStatus != null) {
      yield r'anchorStatus';
      yield serializers.serialize(
        object.anchorStatus,
        specifiedType: const FullType.nullable(TriggerRuleAnchorStatusEnum),
      );
    }
    if (object.windowStatus != null) {
      yield r'windowStatus';
      yield serializers.serialize(
        object.windowStatus,
        specifiedType: const FullType.nullable(WindowStatus),
      );
    }
    if (object.ownerPrincipalId != null) {
      yield r'ownerPrincipalId';
      yield serializers.serialize(
        object.ownerPrincipalId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TriggerRule object, {
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
    required TriggerRuleBuilder result,
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
                    specifiedType: const FullType.nullable(TriggerRuleModeEnum),
                  )
                  as TriggerRuleModeEnum?;
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
                      TriggerRuleSeverityEnum,
                    ),
                  )
                  as TriggerRuleSeverityEnum?;
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
                      TriggerRuleCooldownScopeEnum,
                    ),
                  )
                  as TriggerRuleCooldownScopeEnum?;
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
                      TriggerRuleWeatherContextEnum,
                    ),
                  )
                  as TriggerRuleWeatherContextEnum?;
          if (valueDes == null) continue;
          result.weatherContext = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TriggerRuleTypeEnum),
                  )
                  as TriggerRuleTypeEnum?;
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
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'lastFiredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastFiredAt = valueDes;
          break;
        case r'alertCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.alertCount = valueDes;
          break;
        case r'lastError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'lastErrorAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastErrorAt = valueDes;
          break;
        case r'openAlertCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.openAlertCount = valueDes;
          break;
        case r'suppressedCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.suppressedCount = valueDes;
          break;
        case r'lastStormAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastStormAt = valueDes;
          break;
        case r'feedbackCounts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleFeedbackCounts,
                    ),
                  )
                  as TriggerRuleFeedbackCounts?;
          if (valueDes == null) continue;
          result.feedbackCounts.replace(valueDes);
          break;
        case r'snoozedUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.snoozedUntil = valueDes;
          break;
        case r'geofenceRoute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geofenceRoute.replace(valueDes);
          break;
        case r'mutedUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.mutedUntil = valueDes;
          break;
        case r'geofenceOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleGeofenceOriginEnum,
                    ),
                  )
                  as TriggerRuleGeofenceOriginEnum?;
          if (valueDes == null) continue;
          result.geofenceOrigin = valueDes;
          break;
        case r'anchorStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TriggerRuleAnchorStatusEnum,
                    ),
                  )
                  as TriggerRuleAnchorStatusEnum?;
          if (valueDes == null) continue;
          result.anchorStatus = valueDes;
          break;
        case r'windowStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(WindowStatus),
                  )
                  as WindowStatus?;
          if (valueDes == null) continue;
          result.windowStatus.replace(valueDes);
          break;
        case r'ownerPrincipalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ownerPrincipalId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TriggerRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TriggerRuleBuilder();
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
class TriggerRuleModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'match')
  static const TriggerRuleModeEnum match = _$triggerRuleModeEnum_match;
  @BuiltValueEnumConst(wireName: r'enter')
  static const TriggerRuleModeEnum enter = _$triggerRuleModeEnum_enter;
  @BuiltValueEnumConst(wireName: r'exit')
  static const TriggerRuleModeEnum exit = _$triggerRuleModeEnum_exit;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TriggerRuleModeEnum unknownDefaultOpenApi =
      _$triggerRuleModeEnum_unknownDefaultOpenApi;

  static Serializer<TriggerRuleModeEnum> get serializer =>
      _$triggerRuleModeEnumSerializer;

  const TriggerRuleModeEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleModeEnum> get values =>
      _$triggerRuleModeEnumValues;
  static TriggerRuleModeEnum valueOf(String name) =>
      _$triggerRuleModeEnumValueOf(name);
}

class TriggerRuleSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const TriggerRuleSeverityEnum info = _$triggerRuleSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const TriggerRuleSeverityEnum warning =
      _$triggerRuleSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const TriggerRuleSeverityEnum critical =
      _$triggerRuleSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TriggerRuleSeverityEnum unknownDefaultOpenApi =
      _$triggerRuleSeverityEnum_unknownDefaultOpenApi;

  static Serializer<TriggerRuleSeverityEnum> get serializer =>
      _$triggerRuleSeverityEnumSerializer;

  const TriggerRuleSeverityEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleSeverityEnum> get values =>
      _$triggerRuleSeverityEnumValues;
  static TriggerRuleSeverityEnum valueOf(String name) =>
      _$triggerRuleSeverityEnumValueOf(name);
}

class TriggerRuleCooldownScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const TriggerRuleCooldownScopeEnum record =
      _$triggerRuleCooldownScopeEnum_record;
  @BuiltValueEnumConst(wireName: r'rule')
  static const TriggerRuleCooldownScopeEnum rule =
      _$triggerRuleCooldownScopeEnum_rule;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TriggerRuleCooldownScopeEnum unknownDefaultOpenApi =
      _$triggerRuleCooldownScopeEnum_unknownDefaultOpenApi;

  static Serializer<TriggerRuleCooldownScopeEnum> get serializer =>
      _$triggerRuleCooldownScopeEnumSerializer;

  const TriggerRuleCooldownScopeEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleCooldownScopeEnum> get values =>
      _$triggerRuleCooldownScopeEnumValues;
  static TriggerRuleCooldownScopeEnum valueOf(String name) =>
      _$triggerRuleCooldownScopeEnumValueOf(name);
}

/// Compute `alert.context.weather` for this rule's geolocated alerts (global setting `weather.alertContext`)
class TriggerRuleWeatherContextEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const TriggerRuleWeatherContextEnum auto =
      _$triggerRuleWeatherContextEnum_auto;
  @BuiltValueEnumConst(wireName: r'off')
  static const TriggerRuleWeatherContextEnum off =
      _$triggerRuleWeatherContextEnum_off;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TriggerRuleWeatherContextEnum unknownDefaultOpenApi =
      _$triggerRuleWeatherContextEnum_unknownDefaultOpenApi;

  static Serializer<TriggerRuleWeatherContextEnum> get serializer =>
      _$triggerRuleWeatherContextEnumSerializer;

  const TriggerRuleWeatherContextEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleWeatherContextEnum> get values =>
      _$triggerRuleWeatherContextEnumValues;
  static TriggerRuleWeatherContextEnum valueOf(String name) =>
      _$triggerRuleWeatherContextEnumValueOf(name);
}

/// Rule type; existing rules are `record`. `onlyNew`, `mode` and `reappearAsEnter` are rejected for windowed types (400 WINDOW_RULE_INVALID).
class TriggerRuleTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const TriggerRuleTypeEnum record = _$triggerRuleTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'count')
  static const TriggerRuleTypeEnum count = _$triggerRuleTypeEnum_count;
  @BuiltValueEnumConst(wireName: r'absence')
  static const TriggerRuleTypeEnum absence = _$triggerRuleTypeEnum_absence;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const TriggerRuleTypeEnum anomaly = _$triggerRuleTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TriggerRuleTypeEnum unknownDefaultOpenApi =
      _$triggerRuleTypeEnum_unknownDefaultOpenApi;

  static Serializer<TriggerRuleTypeEnum> get serializer =>
      _$triggerRuleTypeEnumSerializer;

  const TriggerRuleTypeEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleTypeEnum> get values =>
      _$triggerRuleTypeEnumValues;
  static TriggerRuleTypeEnum valueOf(String name) =>
      _$triggerRuleTypeEnumValueOf(name);
}

/// 036
class TriggerRuleGeofenceOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'inline')
  static const TriggerRuleGeofenceOriginEnum inline =
      _$triggerRuleGeofenceOriginEnum_inline;
  @BuiltValueEnumConst(wireName: r'near')
  static const TriggerRuleGeofenceOriginEnum near =
      _$triggerRuleGeofenceOriginEnum_near;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TriggerRuleGeofenceOriginEnum unknownDefaultOpenApi =
      _$triggerRuleGeofenceOriginEnum_unknownDefaultOpenApi;

  static Serializer<TriggerRuleGeofenceOriginEnum> get serializer =>
      _$triggerRuleGeofenceOriginEnumSerializer;

  const TriggerRuleGeofenceOriginEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleGeofenceOriginEnum> get values =>
      _$triggerRuleGeofenceOriginEnumValues;
  static TriggerRuleGeofenceOriginEnum valueOf(String name) =>
      _$triggerRuleGeofenceOriginEnumValueOf(name);
}

/// Moving-anchor state (036); stale suspends the rule (ANCHOR_STALE)
class TriggerRuleAnchorStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const TriggerRuleAnchorStatusEnum active =
      _$triggerRuleAnchorStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'stale')
  static const TriggerRuleAnchorStatusEnum stale =
      _$triggerRuleAnchorStatusEnum_stale;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TriggerRuleAnchorStatusEnum unknownDefaultOpenApi =
      _$triggerRuleAnchorStatusEnum_unknownDefaultOpenApi;

  static Serializer<TriggerRuleAnchorStatusEnum> get serializer =>
      _$triggerRuleAnchorStatusEnumSerializer;

  const TriggerRuleAnchorStatusEnum._(String name) : super(name);

  static BuiltSet<TriggerRuleAnchorStatusEnum> get values =>
      _$triggerRuleAnchorStatusEnumValues;
  static TriggerRuleAnchorStatusEnum valueOf(String name) =>
      _$triggerRuleAnchorStatusEnumValueOf(name);
}
