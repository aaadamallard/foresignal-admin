//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/field_spec.dart';
import 'package:foresignal_api/src/model/signature_verifier_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record_mapping.dart';
import 'package:foresignal_api/src/model/licence_terms.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_source_input.g.dart';

/// CustomSourceInput
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [kinds]
/// * [attribution]
/// * [recordTtl] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [tileProperties]
/// * [searchFields]
/// * [embedFields]
/// * [rankField]
/// * [rateLimitPerMinute]
/// * [observedAtMode] - Time base; changeable only while the source has no heads (409 OBSERVED_AT_MODE_LOCKED). Under UPSTREAM a record without observedAt is rejected MISSING_OBSERVED_AT.
/// * [ttlAnchor]
/// * [volatileFields] - Excluded from the hash; editing triggers lazy recipe migration
/// * [significantFields] - Required for SAMPLED/LATEST policies
/// * [titleField]
/// * [fieldSpecs] - Keys are top-level payload names
/// * [private] - Private source (039); cannot be unset for profile personal-location
/// * [licence]
/// * [recordsPerMinute] - Records/min cap per source (429 INGEST_RECORD_RATE)
/// * [formats] - Per-format options of a custom source (024); keys are format ids
/// * [verifiers] - Signature verifier per format id
/// * [profile] - Preset defaults (039): personal-location = private, STANDARD, kind tracker, UPSTREAM + OBSERVED anchor, 24h TTL, 7d retention, SAMPLED policy, no embedding, no enrichment
/// * [mapping] - RecordMapping used by the `mapping` ingest format and the device-preset formats (replaces 024's interim JSON-Pointer mapping under formats.mapping). Compiled against this input's kinds and observedAtMode (400 MAPPING_INVALID with per-path errors); editing it publishes the custom-source change event
/// * [preset] - Create only: a MappingPreset id (`GET /v1/mappings/presets`) whose defaults fill every member the input leaves out (kinds, fieldSpecs, observedAtMode, recordTtl, significantFields, volatileFields, private, allowPathKey, tileProperties, titleField, mapping, format options) and whose format becomes the default of `POST /v1/ingest/{sourceId}`. On update it may only repeat the stored value
/// * [presetParams] - Create only: preset parameters, e.g. `lon`, `lat` (rounded to 0.01° unless `exactLocation=true`)
/// * [allowPathKey] - Accept the ingest key in the path (`/v1/ingest/{sourceId}/k/{key}/{format}`)
/// * [ingestAllowCidrs] - Sender allowlist; null = private ranges only (loopback, RFC 1918, link-local, ULA) when a path key, query key or GET is used. Others → 403 INGEST_SOURCE_DENIED
/// * [captureSamples] - Keep the last 5 raw requests in memory (redacted) for `/samples`; auto-off 1 h after it is turned on (a PUT that keeps it on does not extend the window; turning it off drops the samples)
/// * [licenceTerms] - Licence of pushed data, snapshotted on each PUSH batch
@BuiltValue()
abstract class CustomSourceInput
    implements Built<CustomSourceInput, CustomSourceInputBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String> get kinds;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'recordTtl')
  String? get recordTtl;

  @BuiltValueField(wireName: r'tileProperties')
  BuiltList<String>? get tileProperties;

  @BuiltValueField(wireName: r'searchFields')
  BuiltList<String>? get searchFields;

  @BuiltValueField(wireName: r'embedFields')
  BuiltList<String>? get embedFields;

  @BuiltValueField(wireName: r'rankField')
  String? get rankField;

  @BuiltValueField(wireName: r'rateLimitPerMinute')
  int? get rateLimitPerMinute;

  /// Time base; changeable only while the source has no heads (409 OBSERVED_AT_MODE_LOCKED). Under UPSTREAM a record without observedAt is rejected MISSING_OBSERVED_AT.
  @BuiltValueField(wireName: r'observedAtMode')
  CustomSourceInputObservedAtModeEnum? get observedAtMode;
  // enum observedAtModeEnum {  UPSTREAM,  RECEIVED,  };

  @BuiltValueField(wireName: r'ttlAnchor')
  CustomSourceInputTtlAnchorEnum? get ttlAnchor;
  // enum ttlAnchorEnum {  RECEIVED,  OBSERVED,  };

  /// Excluded from the hash; editing triggers lazy recipe migration
  @BuiltValueField(wireName: r'volatileFields')
  BuiltList<String>? get volatileFields;

  /// Required for SAMPLED/LATEST policies
  @BuiltValueField(wireName: r'significantFields')
  BuiltList<String>? get significantFields;

  @BuiltValueField(wireName: r'titleField')
  String? get titleField;

  /// Keys are top-level payload names
  @BuiltValueField(wireName: r'fieldSpecs')
  BuiltMap<String, FieldSpec>? get fieldSpecs;

  /// Private source (039); cannot be unset for profile personal-location
  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'licence')
  String? get licence;

  /// Records/min cap per source (429 INGEST_RECORD_RATE)
  @BuiltValueField(wireName: r'recordsPerMinute')
  int? get recordsPerMinute;

  /// Per-format options of a custom source (024); keys are format ids
  @BuiltValueField(wireName: r'formats')
  BuiltMap<String, BuiltMap<String, JsonObject?>>? get formats;

  /// Signature verifier per format id
  @BuiltValueField(wireName: r'verifiers')
  BuiltMap<String, SignatureVerifierConfig>? get verifiers;

  /// Preset defaults (039): personal-location = private, STANDARD, kind tracker, UPSTREAM + OBSERVED anchor, 24h TTL, 7d retention, SAMPLED policy, no embedding, no enrichment
  @BuiltValueField(wireName: r'profile')
  CustomSourceInputProfileEnum? get profile;
  // enum profileEnum {  personal-location,  };

  /// RecordMapping used by the `mapping` ingest format and the device-preset formats (replaces 024's interim JSON-Pointer mapping under formats.mapping). Compiled against this input's kinds and observedAtMode (400 MAPPING_INVALID with per-path errors); editing it publishes the custom-source change event
  @BuiltValueField(wireName: r'mapping')
  RecordMapping? get mapping;

  /// Create only: a MappingPreset id (`GET /v1/mappings/presets`) whose defaults fill every member the input leaves out (kinds, fieldSpecs, observedAtMode, recordTtl, significantFields, volatileFields, private, allowPathKey, tileProperties, titleField, mapping, format options) and whose format becomes the default of `POST /v1/ingest/{sourceId}`. On update it may only repeat the stored value
  @BuiltValueField(wireName: r'preset')
  String? get preset;

  /// Create only: preset parameters, e.g. `lon`, `lat` (rounded to 0.01° unless `exactLocation=true`)
  @BuiltValueField(wireName: r'presetParams')
  BuiltMap<String, JsonObject?>? get presetParams;

  /// Accept the ingest key in the path (`/v1/ingest/{sourceId}/k/{key}/{format}`)
  @BuiltValueField(wireName: r'allowPathKey')
  bool? get allowPathKey;

  /// Sender allowlist; null = private ranges only (loopback, RFC 1918, link-local, ULA) when a path key, query key or GET is used. Others → 403 INGEST_SOURCE_DENIED
  @BuiltValueField(wireName: r'ingestAllowCidrs')
  BuiltList<String>? get ingestAllowCidrs;

  /// Keep the last 5 raw requests in memory (redacted) for `/samples`; auto-off 1 h after it is turned on (a PUT that keeps it on does not extend the window; turning it off drops the samples)
  @BuiltValueField(wireName: r'captureSamples')
  bool? get captureSamples;

  /// Licence of pushed data, snapshotted on each PUSH batch
  @BuiltValueField(wireName: r'licenceTerms')
  LicenceTerms? get licenceTerms;

  CustomSourceInput._();

  factory CustomSourceInput([void updates(CustomSourceInputBuilder b)]) =
      _$CustomSourceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomSourceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomSourceInput> get serializer =>
      _$CustomSourceInputSerializer();
}

class _$CustomSourceInputSerializer
    implements PrimitiveSerializer<CustomSourceInput> {
  @override
  final Iterable<Type> types = const [CustomSourceInput, _$CustomSourceInput];

  @override
  final String wireName = r'CustomSourceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomSourceInput object, {
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
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(String),
      );
    }
    if (object.recordTtl != null) {
      yield r'recordTtl';
      yield serializers.serialize(
        object.recordTtl,
        specifiedType: const FullType.nullable(String),
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
    if (object.rateLimitPerMinute != null) {
      yield r'rateLimitPerMinute';
      yield serializers.serialize(
        object.rateLimitPerMinute,
        specifiedType: const FullType(int),
      );
    }
    if (object.observedAtMode != null) {
      yield r'observedAtMode';
      yield serializers.serialize(
        object.observedAtMode,
        specifiedType: const FullType(CustomSourceInputObservedAtModeEnum),
      );
    }
    if (object.ttlAnchor != null) {
      yield r'ttlAnchor';
      yield serializers.serialize(
        object.ttlAnchor,
        specifiedType: const FullType(CustomSourceInputTtlAnchorEnum),
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
    if (object.titleField != null) {
      yield r'titleField';
      yield serializers.serialize(
        object.titleField,
        specifiedType: const FullType.nullable(String),
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
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recordsPerMinute != null) {
      yield r'recordsPerMinute';
      yield serializers.serialize(
        object.recordsPerMinute,
        specifiedType: const FullType(int),
      );
    }
    if (object.formats != null) {
      yield r'formats';
      yield serializers.serialize(
        object.formats,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        ]),
      );
    }
    if (object.verifiers != null) {
      yield r'verifiers';
      yield serializers.serialize(
        object.verifiers,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(SignatureVerifierConfig),
        ]),
      );
    }
    if (object.profile != null) {
      yield r'profile';
      yield serializers.serialize(
        object.profile,
        specifiedType: const FullType.nullable(CustomSourceInputProfileEnum),
      );
    }
    if (object.mapping != null) {
      yield r'mapping';
      yield serializers.serialize(
        object.mapping,
        specifiedType: const FullType.nullable(RecordMapping),
      );
    }
    if (object.preset != null) {
      yield r'preset';
      yield serializers.serialize(
        object.preset,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.presetParams != null) {
      yield r'presetParams';
      yield serializers.serialize(
        object.presetParams,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.allowPathKey != null) {
      yield r'allowPathKey';
      yield serializers.serialize(
        object.allowPathKey,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ingestAllowCidrs != null) {
      yield r'ingestAllowCidrs';
      yield serializers.serialize(
        object.ingestAllowCidrs,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.captureSamples != null) {
      yield r'captureSamples';
      yield serializers.serialize(
        object.captureSamples,
        specifiedType: const FullType(bool),
      );
    }
    if (object.licenceTerms != null) {
      yield r'licenceTerms';
      yield serializers.serialize(
        object.licenceTerms,
        specifiedType: const FullType.nullable(LicenceTerms),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomSourceInput object, {
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
    required CustomSourceInputBuilder result,
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
        case r'rateLimitPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.rateLimitPerMinute = valueDes;
          break;
        case r'observedAtMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CustomSourceInputObservedAtModeEnum,
                    ),
                  )
                  as CustomSourceInputObservedAtModeEnum?;
          if (valueDes == null) continue;
          result.observedAtMode = valueDes;
          break;
        case r'ttlAnchor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CustomSourceInputTtlAnchorEnum,
                    ),
                  )
                  as CustomSourceInputTtlAnchorEnum?;
          if (valueDes == null) continue;
          result.ttlAnchor = valueDes;
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
        case r'recordsPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.recordsPerMinute = valueDes;
          break;
        case r'formats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltMap<String, BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.formats.replace(valueDes);
          break;
        case r'verifiers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(SignatureVerifierConfig),
                    ]),
                  )
                  as BuiltMap<String, SignatureVerifierConfig>?;
          if (valueDes == null) continue;
          result.verifiers.replace(valueDes);
          break;
        case r'profile':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CustomSourceInputProfileEnum,
                    ),
                  )
                  as CustomSourceInputProfileEnum?;
          if (valueDes == null) continue;
          result.profile = valueDes;
          break;
        case r'mapping':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RecordMapping),
                  )
                  as RecordMapping?;
          if (valueDes == null) continue;
          result.mapping.replace(valueDes);
          break;
        case r'preset':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.preset = valueDes;
          break;
        case r'presetParams':
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
          result.presetParams.replace(valueDes);
          break;
        case r'allowPathKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allowPathKey = valueDes;
          break;
        case r'ingestAllowCidrs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ingestAllowCidrs.replace(valueDes);
          break;
        case r'captureSamples':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.captureSamples = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomSourceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomSourceInputBuilder();
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

/// Time base; changeable only while the source has no heads (409 OBSERVED_AT_MODE_LOCKED). Under UPSTREAM a record without observedAt is rejected MISSING_OBSERVED_AT.
class CustomSourceInputObservedAtModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPSTREAM')
  static const CustomSourceInputObservedAtModeEnum UPSTREAM =
      _$customSourceInputObservedAtModeEnum_UPSTREAM;
  @BuiltValueEnumConst(wireName: r'RECEIVED')
  static const CustomSourceInputObservedAtModeEnum RECEIVED =
      _$customSourceInputObservedAtModeEnum_RECEIVED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CustomSourceInputObservedAtModeEnum unknownDefaultOpenApi =
      _$customSourceInputObservedAtModeEnum_unknownDefaultOpenApi;

  static Serializer<CustomSourceInputObservedAtModeEnum> get serializer =>
      _$customSourceInputObservedAtModeEnumSerializer;

  const CustomSourceInputObservedAtModeEnum._(String name) : super(name);

  static BuiltSet<CustomSourceInputObservedAtModeEnum> get values =>
      _$customSourceInputObservedAtModeEnumValues;
  static CustomSourceInputObservedAtModeEnum valueOf(String name) =>
      _$customSourceInputObservedAtModeEnumValueOf(name);
}

class CustomSourceInputTtlAnchorEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RECEIVED')
  static const CustomSourceInputTtlAnchorEnum RECEIVED =
      _$customSourceInputTtlAnchorEnum_RECEIVED;
  @BuiltValueEnumConst(wireName: r'OBSERVED')
  static const CustomSourceInputTtlAnchorEnum OBSERVED =
      _$customSourceInputTtlAnchorEnum_OBSERVED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CustomSourceInputTtlAnchorEnum unknownDefaultOpenApi =
      _$customSourceInputTtlAnchorEnum_unknownDefaultOpenApi;

  static Serializer<CustomSourceInputTtlAnchorEnum> get serializer =>
      _$customSourceInputTtlAnchorEnumSerializer;

  const CustomSourceInputTtlAnchorEnum._(String name) : super(name);

  static BuiltSet<CustomSourceInputTtlAnchorEnum> get values =>
      _$customSourceInputTtlAnchorEnumValues;
  static CustomSourceInputTtlAnchorEnum valueOf(String name) =>
      _$customSourceInputTtlAnchorEnumValueOf(name);
}

/// Preset defaults (039): personal-location = private, STANDARD, kind tracker, UPSTREAM + OBSERVED anchor, 24h TTL, 7d retention, SAMPLED policy, no embedding, no enrichment
class CustomSourceInputProfileEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'personal-location')
  static const CustomSourceInputProfileEnum personalLocation =
      _$customSourceInputProfileEnum_personalLocation;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CustomSourceInputProfileEnum unknownDefaultOpenApi =
      _$customSourceInputProfileEnum_unknownDefaultOpenApi;

  static Serializer<CustomSourceInputProfileEnum> get serializer =>
      _$customSourceInputProfileEnumSerializer;

  const CustomSourceInputProfileEnum._(String name) : super(name);

  static BuiltSet<CustomSourceInputProfileEnum> get values =>
      _$customSourceInputProfileEnumValues;
  static CustomSourceInputProfileEnum valueOf(String name) =>
      _$customSourceInputProfileEnumValueOf(name);
}
