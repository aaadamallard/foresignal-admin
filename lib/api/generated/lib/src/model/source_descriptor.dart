//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_policy.dart';
import 'package:foresignal_api/src/model/field_spec.dart';
import 'package:foresignal_api/src/model/history_tier.dart';
import 'package:foresignal_api/src/model/param_spec.dart';
import 'package:foresignal_api/src/model/motion_spec.dart';
import 'package:foresignal_api/src/model/kind_display.dart';
import 'package:foresignal_api/src/model/credential_field.dart';
import 'package:foresignal_api/src/model/field_threshold.dart';
import 'package:foresignal_api/src/model/source_access.dart';
import 'package:foresignal_api/src/model/budget.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/licence_terms.dart';
import 'package:foresignal_api/src/model/declared_observability.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_descriptor.g.dart';

/// SourceDescriptor
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [kinds]
/// * [homepage]
/// * [attribution]
/// * [mode] - Collection mode; `derived` sources are fed by ChangeBus or frame events and never polled
/// * [custom] - Runtime-defined custom push source
/// * [credentialFields]
/// * [params]
/// * [minInterval] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [defaultInterval] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [defaultBudget]
/// * [recordTtl] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [zeroResultsNormal]
/// * [tileProperties]
/// * [searchFields]
/// * [embedFields]
/// * [rankField]
/// * [licence] - Licence identifier (snapshotted on fetch rows)
/// * [termsUrl]
/// * [historyTier]
/// * [observedAtMode] - Fixed time base: upstream timestamps, or receipt time for every record (TIME_IMPUTED)
/// * [ttlAnchor] - Axis for TTL and keyframes (TRACK must be OBSERVED; STANDARD defaults to RECEIVED)
/// * [defaultIngestPolicy] - The descriptor's policy with the Core-Data-Model §5.1 defaults filled in (ALL keyframe = ttl − pollInterval − 30s or `none`; edgeMinInterval = minInterval / 2)
/// * [volatileFields] - Top-level payload keys left out of hashes and kinematic state
/// * [significantFields] - Keys whose change persists SIGNIFICANT; empty = every non-volatile key
/// * [motion]
/// * [thresholds]
/// * [defaultRetention] - STANDARD only. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [kindRetention] - Per-kind default retention (STANDARD only)
/// * [skewTolerance] - Future-clamp tolerance before FUTURE_CLAMPED is flagged. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [allowNullIsland] - Keep exact (0,0) points instead of nulling them
/// * [products] - Raster product ids served by this source
/// * [titleField] - Payload key used as record title
/// * [entityKeys] - Entity key type → top-level payload field (icao24, registration, mmsi, imo, callsign …)
/// * [fieldSpecs] - Declared payload fields keyed by top-level name
/// * [kindDisplay] - Display hints keyed by kind
/// * [aggBelowZoom] - Tiles aggregate below this zoom with agg=auto; null = never
/// * [startField] - Payload key of an interval start (with endField)
/// * [endField] - Payload key of an interval end (with startField)
/// * [private] - Personal data: excluded from anonymous reads, tiles and other egress paths
/// * [privatePrecisionDecimals] - Coordinate decimals kept for private sources
/// * [acceptsRemoteMedia] - Source accepts `POST /v1/ingest/{id}/media|rasters` (satdump-* family)
/// * [egress] - LOCAL_ONLY: served to this instance's own API clients (reads, tiles, SSE, MCP, an export to the caller) and notifications, never re-served by sinks (110), federation (113), share links (112) or feeds and feed keys; off-box archive exports (111) refuse it too. Set by the upstream's terms: opensky-states is LOCAL_ONLY (062), the ODbL adsb.lol sources are OPEN. MLAT positions are never redistributable regardless (069).
/// * [egressOverridable] - The operator may override `egress` in SourceSettings (local receivers, 069)
/// * [llmNotice] - Notice appended whenever this source's records are placed in an LLM context (090; e.g. OpenFEMA eligibility notice)
/// * [licenceTerms] - Structured terms; derived from the catalogue when only `licence` is set and matches an id
/// * [reliability] - Default reliability (F unless set); overridable per source
/// * [derivedFrom] - DERIVED sources: input source ids; the most restrictive input terms apply
/// * [originator] - Originator id override (default from intel/originators.json)
/// * [upstreamRefFields] - Payload fields carrying the upstream's own event id ('field', or 'field@namespace' so differently named fields of two sources compare; '$externalId' is the record's external id) or, prefixed 'cite:', the cited original source (a URL, domain or name). Empty means the default from intel/originators.json; GET /v1/sources shows the fields in force.
/// * [observability] - Declared observability per kind
/// * [access]
@BuiltValue()
abstract class SourceDescriptor
    implements Built<SourceDescriptor, SourceDescriptorBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String> get kinds;

  @BuiltValueField(wireName: r'homepage')
  String? get homepage;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  /// Collection mode; `derived` sources are fed by ChangeBus or frame events and never polled
  @BuiltValueField(wireName: r'mode')
  SourceDescriptorModeEnum get mode;
  // enum modeEnum {  polling,  streaming,  push,  derived,  };

  /// Runtime-defined custom push source
  @BuiltValueField(wireName: r'custom')
  bool? get custom;

  @BuiltValueField(wireName: r'credentialFields')
  BuiltList<CredentialField> get credentialFields;

  @BuiltValueField(wireName: r'params')
  BuiltList<ParamSpec> get params;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'minInterval')
  String? get minInterval;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'defaultInterval')
  String? get defaultInterval;

  @BuiltValueField(wireName: r'defaultBudget')
  Budget get defaultBudget;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'recordTtl')
  String? get recordTtl;

  @BuiltValueField(wireName: r'zeroResultsNormal')
  bool? get zeroResultsNormal;

  @BuiltValueField(wireName: r'tileProperties')
  BuiltList<String>? get tileProperties;

  @BuiltValueField(wireName: r'searchFields')
  BuiltList<String>? get searchFields;

  @BuiltValueField(wireName: r'embedFields')
  BuiltList<String>? get embedFields;

  @BuiltValueField(wireName: r'rankField')
  String? get rankField;

  /// Licence identifier (snapshotted on fetch rows)
  @BuiltValueField(wireName: r'licence')
  String? get licence;

  @BuiltValueField(wireName: r'termsUrl')
  String? get termsUrl;

  @BuiltValueField(wireName: r'historyTier')
  HistoryTier? get historyTier;
  // enum historyTierEnum {  STANDARD,  TRACK,  };

  /// Fixed time base: upstream timestamps, or receipt time for every record (TIME_IMPUTED)
  @BuiltValueField(wireName: r'observedAtMode')
  SourceDescriptorObservedAtModeEnum? get observedAtMode;
  // enum observedAtModeEnum {  UPSTREAM,  RECEIVED,  };

  /// Axis for TTL and keyframes (TRACK must be OBSERVED; STANDARD defaults to RECEIVED)
  @BuiltValueField(wireName: r'ttlAnchor')
  SourceDescriptorTtlAnchorEnum? get ttlAnchor;
  // enum ttlAnchorEnum {  OBSERVED,  RECEIVED,  };

  /// The descriptor's policy with the Core-Data-Model §5.1 defaults filled in (ALL keyframe = ttl − pollInterval − 30s or `none`; edgeMinInterval = minInterval / 2)
  @BuiltValueField(wireName: r'defaultIngestPolicy')
  IngestPolicy? get defaultIngestPolicy;

  /// Top-level payload keys left out of hashes and kinematic state
  @BuiltValueField(wireName: r'volatileFields')
  BuiltList<String>? get volatileFields;

  /// Keys whose change persists SIGNIFICANT; empty = every non-volatile key
  @BuiltValueField(wireName: r'significantFields')
  BuiltList<String>? get significantFields;

  @BuiltValueField(wireName: r'motion')
  MotionSpec? get motion;

  @BuiltValueField(wireName: r'thresholds')
  BuiltList<FieldThreshold>? get thresholds;

  /// STANDARD only. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'defaultRetention')
  String? get defaultRetention;

  /// Per-kind default retention (STANDARD only)
  @BuiltValueField(wireName: r'kindRetention')
  BuiltMap<String, String>? get kindRetention;

  /// Future-clamp tolerance before FUTURE_CLAMPED is flagged. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'skewTolerance')
  String? get skewTolerance;

  /// Keep exact (0,0) points instead of nulling them
  @BuiltValueField(wireName: r'allowNullIsland')
  bool? get allowNullIsland;

  /// Raster product ids served by this source
  @BuiltValueField(wireName: r'products')
  BuiltList<String>? get products;

  /// Payload key used as record title
  @BuiltValueField(wireName: r'titleField')
  String? get titleField;

  /// Entity key type → top-level payload field (icao24, registration, mmsi, imo, callsign …)
  @BuiltValueField(wireName: r'entityKeys')
  BuiltMap<String, String>? get entityKeys;

  /// Declared payload fields keyed by top-level name
  @BuiltValueField(wireName: r'fieldSpecs')
  BuiltMap<String, FieldSpec>? get fieldSpecs;

  /// Display hints keyed by kind
  @BuiltValueField(wireName: r'kindDisplay')
  BuiltMap<String, KindDisplay>? get kindDisplay;

  /// Tiles aggregate below this zoom with agg=auto; null = never
  @BuiltValueField(wireName: r'aggBelowZoom')
  int? get aggBelowZoom;

  /// Payload key of an interval start (with endField)
  @BuiltValueField(wireName: r'startField')
  String? get startField;

  /// Payload key of an interval end (with startField)
  @BuiltValueField(wireName: r'endField')
  String? get endField;

  /// Personal data: excluded from anonymous reads, tiles and other egress paths
  @BuiltValueField(wireName: r'private')
  bool? get private;

  /// Coordinate decimals kept for private sources
  @BuiltValueField(wireName: r'privatePrecisionDecimals')
  int? get privatePrecisionDecimals;

  /// Source accepts `POST /v1/ingest/{id}/media|rasters` (satdump-* family)
  @BuiltValueField(wireName: r'acceptsRemoteMedia')
  bool? get acceptsRemoteMedia;

  /// LOCAL_ONLY: served to this instance's own API clients (reads, tiles, SSE, MCP, an export to the caller) and notifications, never re-served by sinks (110), federation (113), share links (112) or feeds and feed keys; off-box archive exports (111) refuse it too. Set by the upstream's terms: opensky-states is LOCAL_ONLY (062), the ODbL adsb.lol sources are OPEN. MLAT positions are never redistributable regardless (069).
  @BuiltValueField(wireName: r'egress')
  SourceDescriptorEgressEnum? get egress;
  // enum egressEnum {  OPEN,  LOCAL_ONLY,  };

  /// The operator may override `egress` in SourceSettings (local receivers, 069)
  @BuiltValueField(wireName: r'egressOverridable')
  bool? get egressOverridable;

  /// Notice appended whenever this source's records are placed in an LLM context (090; e.g. OpenFEMA eligibility notice)
  @BuiltValueField(wireName: r'llmNotice')
  String? get llmNotice;

  /// Structured terms; derived from the catalogue when only `licence` is set and matches an id
  @BuiltValueField(wireName: r'licenceTerms')
  LicenceTerms? get licenceTerms;

  /// Default reliability (F unless set); overridable per source
  @BuiltValueField(wireName: r'reliability')
  SourceDescriptorReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  /// DERIVED sources: input source ids; the most restrictive input terms apply
  @BuiltValueField(wireName: r'derivedFrom')
  BuiltList<String>? get derivedFrom;

  /// Originator id override (default from intel/originators.json)
  @BuiltValueField(wireName: r'originator')
  String? get originator;

  /// Payload fields carrying the upstream's own event id ('field', or 'field@namespace' so differently named fields of two sources compare; '$externalId' is the record's external id) or, prefixed 'cite:', the cited original source (a URL, domain or name). Empty means the default from intel/originators.json; GET /v1/sources shows the fields in force.
  @BuiltValueField(wireName: r'upstreamRefFields')
  BuiltList<String>? get upstreamRefFields;

  /// Declared observability per kind
  @BuiltValueField(wireName: r'observability')
  DeclaredObservability? get observability;

  @BuiltValueField(wireName: r'access')
  SourceAccess? get access;

  SourceDescriptor._();

  factory SourceDescriptor([void updates(SourceDescriptorBuilder b)]) =
      _$SourceDescriptor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceDescriptorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceDescriptor> get serializer =>
      _$SourceDescriptorSerializer();
}

class _$SourceDescriptorSerializer
    implements PrimitiveSerializer<SourceDescriptor> {
  @override
  final Iterable<Type> types = const [SourceDescriptor, _$SourceDescriptor];

  @override
  final String wireName = r'SourceDescriptor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceDescriptor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'kinds';
    yield serializers.serialize(
      object.kinds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.homepage != null) {
      yield r'homepage';
      yield serializers.serialize(
        object.homepage,
        specifiedType: const FullType(String),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(String),
      );
    }
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(SourceDescriptorModeEnum),
    );
    if (object.custom != null) {
      yield r'custom';
      yield serializers.serialize(
        object.custom,
        specifiedType: const FullType(bool),
      );
    }
    yield r'credentialFields';
    yield serializers.serialize(
      object.credentialFields,
      specifiedType: const FullType(BuiltList, [FullType(CredentialField)]),
    );
    yield r'params';
    yield serializers.serialize(
      object.params,
      specifiedType: const FullType(BuiltList, [FullType(ParamSpec)]),
    );
    if (object.minInterval != null) {
      yield r'minInterval';
      yield serializers.serialize(
        object.minInterval,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultInterval != null) {
      yield r'defaultInterval';
      yield serializers.serialize(
        object.defaultInterval,
        specifiedType: const FullType(String),
      );
    }
    yield r'defaultBudget';
    yield serializers.serialize(
      object.defaultBudget,
      specifiedType: const FullType(Budget),
    );
    if (object.recordTtl != null) {
      yield r'recordTtl';
      yield serializers.serialize(
        object.recordTtl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.zeroResultsNormal != null) {
      yield r'zeroResultsNormal';
      yield serializers.serialize(
        object.zeroResultsNormal,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tileProperties != null) {
      yield r'tileProperties';
      yield serializers.serialize(
        object.tileProperties,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.searchFields != null) {
      yield r'searchFields';
      yield serializers.serialize(
        object.searchFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.embedFields != null) {
      yield r'embedFields';
      yield serializers.serialize(
        object.embedFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.rankField != null) {
      yield r'rankField';
      yield serializers.serialize(
        object.rankField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.termsUrl != null) {
      yield r'termsUrl';
      yield serializers.serialize(
        object.termsUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.historyTier != null) {
      yield r'historyTier';
      yield serializers.serialize(
        object.historyTier,
        specifiedType: const FullType(HistoryTier),
      );
    }
    if (object.observedAtMode != null) {
      yield r'observedAtMode';
      yield serializers.serialize(
        object.observedAtMode,
        specifiedType: const FullType(SourceDescriptorObservedAtModeEnum),
      );
    }
    if (object.ttlAnchor != null) {
      yield r'ttlAnchor';
      yield serializers.serialize(
        object.ttlAnchor,
        specifiedType: const FullType(SourceDescriptorTtlAnchorEnum),
      );
    }
    if (object.defaultIngestPolicy != null) {
      yield r'defaultIngestPolicy';
      yield serializers.serialize(
        object.defaultIngestPolicy,
        specifiedType: const FullType(IngestPolicy),
      );
    }
    if (object.volatileFields != null) {
      yield r'volatileFields';
      yield serializers.serialize(
        object.volatileFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.significantFields != null) {
      yield r'significantFields';
      yield serializers.serialize(
        object.significantFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.motion != null) {
      yield r'motion';
      yield serializers.serialize(
        object.motion,
        specifiedType: const FullType.nullable(MotionSpec),
      );
    }
    if (object.thresholds != null) {
      yield r'thresholds';
      yield serializers.serialize(
        object.thresholds,
        specifiedType: const FullType(BuiltList, [FullType(FieldThreshold)]),
      );
    }
    if (object.defaultRetention != null) {
      yield r'defaultRetention';
      yield serializers.serialize(
        object.defaultRetention,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kindRetention != null) {
      yield r'kindRetention';
      yield serializers.serialize(
        object.kindRetention,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.skewTolerance != null) {
      yield r'skewTolerance';
      yield serializers.serialize(
        object.skewTolerance,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowNullIsland != null) {
      yield r'allowNullIsland';
      yield serializers.serialize(
        object.allowNullIsland,
        specifiedType: const FullType(bool),
      );
    }
    if (object.products != null) {
      yield r'products';
      yield serializers.serialize(
        object.products,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.titleField != null) {
      yield r'titleField';
      yield serializers.serialize(
        object.titleField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.entityKeys != null) {
      yield r'entityKeys';
      yield serializers.serialize(
        object.entityKeys,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.fieldSpecs != null) {
      yield r'fieldSpecs';
      yield serializers.serialize(
        object.fieldSpecs,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(FieldSpec),
        ]),
      );
    }
    if (object.kindDisplay != null) {
      yield r'kindDisplay';
      yield serializers.serialize(
        object.kindDisplay,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(KindDisplay),
        ]),
      );
    }
    if (object.aggBelowZoom != null) {
      yield r'aggBelowZoom';
      yield serializers.serialize(
        object.aggBelowZoom,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.startField != null) {
      yield r'startField';
      yield serializers.serialize(
        object.startField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.endField != null) {
      yield r'endField';
      yield serializers.serialize(
        object.endField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    if (object.privatePrecisionDecimals != null) {
      yield r'privatePrecisionDecimals';
      yield serializers.serialize(
        object.privatePrecisionDecimals,
        specifiedType: const FullType(int),
      );
    }
    if (object.acceptsRemoteMedia != null) {
      yield r'acceptsRemoteMedia';
      yield serializers.serialize(
        object.acceptsRemoteMedia,
        specifiedType: const FullType(bool),
      );
    }
    if (object.egress != null) {
      yield r'egress';
      yield serializers.serialize(
        object.egress,
        specifiedType: const FullType(SourceDescriptorEgressEnum),
      );
    }
    if (object.egressOverridable != null) {
      yield r'egressOverridable';
      yield serializers.serialize(
        object.egressOverridable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.llmNotice != null) {
      yield r'llmNotice';
      yield serializers.serialize(
        object.llmNotice,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.licenceTerms != null) {
      yield r'licenceTerms';
      yield serializers.serialize(
        object.licenceTerms,
        specifiedType: const FullType.nullable(LicenceTerms),
      );
    }
    if (object.reliability != null) {
      yield r'reliability';
      yield serializers.serialize(
        object.reliability,
        specifiedType: const FullType(SourceDescriptorReliabilityEnum),
      );
    }
    if (object.derivedFrom != null) {
      yield r'derivedFrom';
      yield serializers.serialize(
        object.derivedFrom,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.originator != null) {
      yield r'originator';
      yield serializers.serialize(
        object.originator,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.upstreamRefFields != null) {
      yield r'upstreamRefFields';
      yield serializers.serialize(
        object.upstreamRefFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.observability != null) {
      yield r'observability';
      yield serializers.serialize(
        object.observability,
        specifiedType: const FullType.nullable(DeclaredObservability),
      );
    }
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType(SourceAccess),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceDescriptor object, {
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
    required SourceDescriptorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.kinds.replace(valueDes);
          break;
        case r'homepage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.homepage = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SourceDescriptorModeEnum),
                  )
                  as SourceDescriptorModeEnum;
          result.mode = valueDes;
          break;
        case r'custom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.custom = valueDes;
          break;
        case r'credentialFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(CredentialField),
                    ]),
                  )
                  as BuiltList<CredentialField>;
          result.credentialFields.replace(valueDes);
          break;
        case r'params':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ParamSpec),
                    ]),
                  )
                  as BuiltList<ParamSpec>;
          result.params.replace(valueDes);
          break;
        case r'minInterval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.minInterval = valueDes;
          break;
        case r'defaultInterval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultInterval = valueDes;
          break;
        case r'defaultBudget':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Budget),
                  )
                  as Budget;
          result.defaultBudget.replace(valueDes);
          break;
        case r'recordTtl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.recordTtl = valueDes;
          break;
        case r'zeroResultsNormal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.zeroResultsNormal = valueDes;
          break;
        case r'tileProperties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tileProperties.replace(valueDes);
          break;
        case r'searchFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.searchFields.replace(valueDes);
          break;
        case r'embedFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.embedFields.replace(valueDes);
          break;
        case r'rankField':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.rankField = valueDes;
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.licence = valueDes;
          break;
        case r'termsUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.termsUrl = valueDes;
          break;
        case r'historyTier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(HistoryTier),
                  )
                  as HistoryTier?;
          if (valueDes == null) continue;
          result.historyTier = valueDes;
          break;
        case r'observedAtMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceDescriptorObservedAtModeEnum,
                    ),
                  )
                  as SourceDescriptorObservedAtModeEnum?;
          if (valueDes == null) continue;
          result.observedAtMode = valueDes;
          break;
        case r'ttlAnchor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceDescriptorTtlAnchorEnum,
                    ),
                  )
                  as SourceDescriptorTtlAnchorEnum?;
          if (valueDes == null) continue;
          result.ttlAnchor = valueDes;
          break;
        case r'defaultIngestPolicy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IngestPolicy),
                  )
                  as IngestPolicy?;
          if (valueDes == null) continue;
          result.defaultIngestPolicy.replace(valueDes);
          break;
        case r'volatileFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.volatileFields.replace(valueDes);
          break;
        case r'significantFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.significantFields.replace(valueDes);
          break;
        case r'motion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(MotionSpec),
                  )
                  as MotionSpec?;
          if (valueDes == null) continue;
          result.motion.replace(valueDes);
          break;
        case r'thresholds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(FieldThreshold),
                    ]),
                  )
                  as BuiltList<FieldThreshold>?;
          if (valueDes == null) continue;
          result.thresholds.replace(valueDes);
          break;
        case r'defaultRetention':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultRetention = valueDes;
          break;
        case r'kindRetention':
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
          result.kindRetention.replace(valueDes);
          break;
        case r'skewTolerance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.skewTolerance = valueDes;
          break;
        case r'allowNullIsland':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allowNullIsland = valueDes;
          break;
        case r'products':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.products.replace(valueDes);
          break;
        case r'titleField':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.titleField = valueDes;
          break;
        case r'entityKeys':
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
          result.entityKeys.replace(valueDes);
          break;
        case r'fieldSpecs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(FieldSpec),
                    ]),
                  )
                  as BuiltMap<String, FieldSpec>?;
          if (valueDes == null) continue;
          result.fieldSpecs.replace(valueDes);
          break;
        case r'kindDisplay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(KindDisplay),
                    ]),
                  )
                  as BuiltMap<String, KindDisplay>?;
          if (valueDes == null) continue;
          result.kindDisplay.replace(valueDes);
          break;
        case r'aggBelowZoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.aggBelowZoom = valueDes;
          break;
        case r'startField':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.startField = valueDes;
          break;
        case r'endField':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.endField = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'privatePrecisionDecimals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.privatePrecisionDecimals = valueDes;
          break;
        case r'acceptsRemoteMedia':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.acceptsRemoteMedia = valueDes;
          break;
        case r'egress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceDescriptorEgressEnum,
                    ),
                  )
                  as SourceDescriptorEgressEnum?;
          if (valueDes == null) continue;
          result.egress = valueDes;
          break;
        case r'egressOverridable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.egressOverridable = valueDes;
          break;
        case r'llmNotice':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.llmNotice = valueDes;
          break;
        case r'licenceTerms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LicenceTerms),
                  )
                  as LicenceTerms?;
          if (valueDes == null) continue;
          result.licenceTerms.replace(valueDes);
          break;
        case r'reliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceDescriptorReliabilityEnum,
                    ),
                  )
                  as SourceDescriptorReliabilityEnum?;
          if (valueDes == null) continue;
          result.reliability = valueDes;
          break;
        case r'derivedFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.derivedFrom.replace(valueDes);
          break;
        case r'originator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.originator = valueDes;
          break;
        case r'upstreamRefFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.upstreamRefFields.replace(valueDes);
          break;
        case r'observability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DeclaredObservability,
                    ),
                  )
                  as DeclaredObservability?;
          if (valueDes == null) continue;
          result.observability.replace(valueDes);
          break;
        case r'access':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SourceAccess),
                  )
                  as SourceAccess?;
          if (valueDes == null) continue;
          result.access.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceDescriptor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceDescriptorBuilder();
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

/// Collection mode; `derived` sources are fed by ChangeBus or frame events and never polled
class SourceDescriptorModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'polling')
  static const SourceDescriptorModeEnum polling =
      _$sourceDescriptorModeEnum_polling;
  @BuiltValueEnumConst(wireName: r'streaming')
  static const SourceDescriptorModeEnum streaming =
      _$sourceDescriptorModeEnum_streaming;
  @BuiltValueEnumConst(wireName: r'push')
  static const SourceDescriptorModeEnum push = _$sourceDescriptorModeEnum_push;
  @BuiltValueEnumConst(wireName: r'derived')
  static const SourceDescriptorModeEnum derived =
      _$sourceDescriptorModeEnum_derived;

  static Serializer<SourceDescriptorModeEnum> get serializer =>
      _$sourceDescriptorModeEnumSerializer;

  const SourceDescriptorModeEnum._(String name) : super(name);

  static BuiltSet<SourceDescriptorModeEnum> get values =>
      _$sourceDescriptorModeEnumValues;
  static SourceDescriptorModeEnum valueOf(String name) =>
      _$sourceDescriptorModeEnumValueOf(name);
}

/// Fixed time base: upstream timestamps, or receipt time for every record (TIME_IMPUTED)
class SourceDescriptorObservedAtModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPSTREAM')
  static const SourceDescriptorObservedAtModeEnum UPSTREAM =
      _$sourceDescriptorObservedAtModeEnum_UPSTREAM;
  @BuiltValueEnumConst(wireName: r'RECEIVED')
  static const SourceDescriptorObservedAtModeEnum RECEIVED =
      _$sourceDescriptorObservedAtModeEnum_RECEIVED;

  static Serializer<SourceDescriptorObservedAtModeEnum> get serializer =>
      _$sourceDescriptorObservedAtModeEnumSerializer;

  const SourceDescriptorObservedAtModeEnum._(String name) : super(name);

  static BuiltSet<SourceDescriptorObservedAtModeEnum> get values =>
      _$sourceDescriptorObservedAtModeEnumValues;
  static SourceDescriptorObservedAtModeEnum valueOf(String name) =>
      _$sourceDescriptorObservedAtModeEnumValueOf(name);
}

/// Axis for TTL and keyframes (TRACK must be OBSERVED; STANDARD defaults to RECEIVED)
class SourceDescriptorTtlAnchorEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OBSERVED')
  static const SourceDescriptorTtlAnchorEnum OBSERVED =
      _$sourceDescriptorTtlAnchorEnum_OBSERVED;
  @BuiltValueEnumConst(wireName: r'RECEIVED')
  static const SourceDescriptorTtlAnchorEnum RECEIVED =
      _$sourceDescriptorTtlAnchorEnum_RECEIVED;

  static Serializer<SourceDescriptorTtlAnchorEnum> get serializer =>
      _$sourceDescriptorTtlAnchorEnumSerializer;

  const SourceDescriptorTtlAnchorEnum._(String name) : super(name);

  static BuiltSet<SourceDescriptorTtlAnchorEnum> get values =>
      _$sourceDescriptorTtlAnchorEnumValues;
  static SourceDescriptorTtlAnchorEnum valueOf(String name) =>
      _$sourceDescriptorTtlAnchorEnumValueOf(name);
}

/// LOCAL_ONLY: served to this instance's own API clients (reads, tiles, SSE, MCP, an export to the caller) and notifications, never re-served by sinks (110), federation (113), share links (112) or feeds and feed keys; off-box archive exports (111) refuse it too. Set by the upstream's terms: opensky-states is LOCAL_ONLY (062), the ODbL adsb.lol sources are OPEN. MLAT positions are never redistributable regardless (069).
class SourceDescriptorEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const SourceDescriptorEgressEnum OPEN =
      _$sourceDescriptorEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const SourceDescriptorEgressEnum LOCAL_ONLY =
      _$sourceDescriptorEgressEnum_LOCAL_ONLY;

  static Serializer<SourceDescriptorEgressEnum> get serializer =>
      _$sourceDescriptorEgressEnumSerializer;

  const SourceDescriptorEgressEnum._(String name) : super(name);

  static BuiltSet<SourceDescriptorEgressEnum> get values =>
      _$sourceDescriptorEgressEnumValues;
  static SourceDescriptorEgressEnum valueOf(String name) =>
      _$sourceDescriptorEgressEnumValueOf(name);
}

/// Default reliability (F unless set); overridable per source
class SourceDescriptorReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const SourceDescriptorReliabilityEnum A =
      _$sourceDescriptorReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const SourceDescriptorReliabilityEnum B =
      _$sourceDescriptorReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const SourceDescriptorReliabilityEnum C =
      _$sourceDescriptorReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const SourceDescriptorReliabilityEnum D =
      _$sourceDescriptorReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const SourceDescriptorReliabilityEnum E =
      _$sourceDescriptorReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const SourceDescriptorReliabilityEnum F =
      _$sourceDescriptorReliabilityEnum_F;

  static Serializer<SourceDescriptorReliabilityEnum> get serializer =>
      _$sourceDescriptorReliabilityEnumSerializer;

  const SourceDescriptorReliabilityEnum._(String name) : super(name);

  static BuiltSet<SourceDescriptorReliabilityEnum> get values =>
      _$sourceDescriptorReliabilityEnumValues;
  static SourceDescriptorReliabilityEnum valueOf(String name) =>
      _$sourceDescriptorReliabilityEnumValueOf(name);
}
