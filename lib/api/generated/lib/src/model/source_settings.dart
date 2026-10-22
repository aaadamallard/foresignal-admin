//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_policy.dart';
import 'package:foresignal_api/src/model/budget.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_settings.g.dart';

/// SourceSettings
///
/// Properties:
/// * [enabled]
/// * [interval] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [params]
/// * [budget]
/// * [retention] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [embed] - Embed this source's records for semantic search (default true when the source declares embedFields)
/// * [credentialsSet] - True if credentials are stored (values never returned)
/// * [updatedAt]
/// * [ingestPolicy] - Operator override; null = descriptor default
/// * [effectiveIngestPolicy] - Override if set, else the descriptor default
/// * [effectiveRetention] - Effective retention window (TRACK: `retention.trackWindow`). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [statsEnabled] - Include in activity rollups (038)
/// * [statsIncludePrivate] - Roll up this private source anyway (038 `stats.includePrivate[sourceId]`)
/// * [private] - Operator tightening to private (039); a descriptor-private source cannot be made public
/// * [regionTagging] - Default eager for STANDARD, lazy for TRACK (040)
/// * [downsampleInterval] - Per-source downsample interval override (TRACK sources only). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [egress] - Operator override of the descriptor egress; only when `egressOverridable` (else 400 EGRESS_FIXED); null = descriptor default
/// * [reliability] - Operator override of the descriptor reliability; null = descriptor default
@BuiltValue()
abstract class SourceSettings
    implements Built<SourceSettings, SourceSettingsBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'interval')
  String get interval;

  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?> get params;

  @BuiltValueField(wireName: r'budget')
  Budget get budget;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'retention')
  String? get retention;

  /// Embed this source's records for semantic search (default true when the source declares embedFields)
  @BuiltValueField(wireName: r'embed')
  bool? get embed;

  /// True if credentials are stored (values never returned)
  @BuiltValueField(wireName: r'credentialsSet')
  bool get credentialsSet;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  /// Operator override; null = descriptor default
  @BuiltValueField(wireName: r'ingestPolicy')
  IngestPolicy? get ingestPolicy;

  /// Override if set, else the descriptor default
  @BuiltValueField(wireName: r'effectiveIngestPolicy')
  IngestPolicy? get effectiveIngestPolicy;

  /// Effective retention window (TRACK: `retention.trackWindow`). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'effectiveRetention')
  String? get effectiveRetention;

  /// Include in activity rollups (038)
  @BuiltValueField(wireName: r'statsEnabled')
  bool? get statsEnabled;

  /// Roll up this private source anyway (038 `stats.includePrivate[sourceId]`)
  @BuiltValueField(wireName: r'statsIncludePrivate')
  bool? get statsIncludePrivate;

  /// Operator tightening to private (039); a descriptor-private source cannot be made public
  @BuiltValueField(wireName: r'private')
  bool? get private;

  /// Default eager for STANDARD, lazy for TRACK (040)
  @BuiltValueField(wireName: r'regionTagging')
  SourceSettingsRegionTaggingEnum? get regionTagging;
  // enum regionTaggingEnum {  eager,  lazy,  off,  };

  /// Per-source downsample interval override (TRACK sources only). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'downsampleInterval')
  String? get downsampleInterval;

  /// Operator override of the descriptor egress; only when `egressOverridable` (else 400 EGRESS_FIXED); null = descriptor default
  @BuiltValueField(wireName: r'egress')
  SourceSettingsEgressEnum? get egress;
  // enum egressEnum {  OPEN,  LOCAL_ONLY,  };

  /// Operator override of the descriptor reliability; null = descriptor default
  @BuiltValueField(wireName: r'reliability')
  SourceSettingsReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  SourceSettings._();

  factory SourceSettings([void updates(SourceSettingsBuilder b)]) =
      _$SourceSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceSettings> get serializer =>
      _$SourceSettingsSerializer();
}

class _$SourceSettingsSerializer
    implements PrimitiveSerializer<SourceSettings> {
  @override
  final Iterable<Type> types = const [SourceSettings, _$SourceSettings];

  @override
  final String wireName = r'SourceSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'interval';
    yield serializers.serialize(
      object.interval,
      specifiedType: const FullType(String),
    );
    yield r'params';
    yield serializers.serialize(
      object.params,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    yield r'budget';
    yield serializers.serialize(
      object.budget,
      specifiedType: const FullType(Budget),
    );
    if (object.retention != null) {
      yield r'retention';
      yield serializers.serialize(
        object.retention,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.embed != null) {
      yield r'embed';
      yield serializers.serialize(
        object.embed,
        specifiedType: const FullType(bool),
      );
    }
    yield r'credentialsSet';
    yield serializers.serialize(
      object.credentialsSet,
      specifiedType: const FullType(bool),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.ingestPolicy != null) {
      yield r'ingestPolicy';
      yield serializers.serialize(
        object.ingestPolicy,
        specifiedType: const FullType.nullable(IngestPolicy),
      );
    }
    if (object.effectiveIngestPolicy != null) {
      yield r'effectiveIngestPolicy';
      yield serializers.serialize(
        object.effectiveIngestPolicy,
        specifiedType: const FullType(IngestPolicy),
      );
    }
    if (object.effectiveRetention != null) {
      yield r'effectiveRetention';
      yield serializers.serialize(
        object.effectiveRetention,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statsEnabled != null) {
      yield r'statsEnabled';
      yield serializers.serialize(
        object.statsEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.statsIncludePrivate != null) {
      yield r'statsIncludePrivate';
      yield serializers.serialize(
        object.statsIncludePrivate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    if (object.regionTagging != null) {
      yield r'regionTagging';
      yield serializers.serialize(
        object.regionTagging,
        specifiedType: const FullType(SourceSettingsRegionTaggingEnum),
      );
    }
    if (object.downsampleInterval != null) {
      yield r'downsampleInterval';
      yield serializers.serialize(
        object.downsampleInterval,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.egress != null) {
      yield r'egress';
      yield serializers.serialize(
        object.egress,
        specifiedType: const FullType.nullable(SourceSettingsEgressEnum),
      );
    }
    if (object.reliability != null) {
      yield r'reliability';
      yield serializers.serialize(
        object.reliability,
        specifiedType: const FullType.nullable(SourceSettingsReliabilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceSettings object, {
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
    required SourceSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.interval = valueDes;
          break;
        case r'params':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.params.replace(valueDes);
          break;
        case r'budget':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Budget),
                  )
                  as Budget;
          result.budget.replace(valueDes);
          break;
        case r'retention':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.retention = valueDes;
          break;
        case r'embed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.embed = valueDes;
          break;
        case r'credentialsSet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.credentialsSet = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'ingestPolicy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IngestPolicy),
                  )
                  as IngestPolicy?;
          if (valueDes == null) continue;
          result.ingestPolicy.replace(valueDes);
          break;
        case r'effectiveIngestPolicy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IngestPolicy),
                  )
                  as IngestPolicy?;
          if (valueDes == null) continue;
          result.effectiveIngestPolicy.replace(valueDes);
          break;
        case r'effectiveRetention':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.effectiveRetention = valueDes;
          break;
        case r'statsEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.statsEnabled = valueDes;
          break;
        case r'statsIncludePrivate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.statsIncludePrivate = valueDes;
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
        case r'regionTagging':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceSettingsRegionTaggingEnum,
                    ),
                  )
                  as SourceSettingsRegionTaggingEnum?;
          if (valueDes == null) continue;
          result.regionTagging = valueDes;
          break;
        case r'downsampleInterval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.downsampleInterval = valueDes;
          break;
        case r'egress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceSettingsEgressEnum,
                    ),
                  )
                  as SourceSettingsEgressEnum?;
          if (valueDes == null) continue;
          result.egress = valueDes;
          break;
        case r'reliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceSettingsReliabilityEnum,
                    ),
                  )
                  as SourceSettingsReliabilityEnum?;
          if (valueDes == null) continue;
          result.reliability = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceSettingsBuilder();
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

/// Default eager for STANDARD, lazy for TRACK (040)
class SourceSettingsRegionTaggingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'eager')
  static const SourceSettingsRegionTaggingEnum eager =
      _$sourceSettingsRegionTaggingEnum_eager;
  @BuiltValueEnumConst(wireName: r'lazy')
  static const SourceSettingsRegionTaggingEnum lazy =
      _$sourceSettingsRegionTaggingEnum_lazy;
  @BuiltValueEnumConst(wireName: r'off')
  static const SourceSettingsRegionTaggingEnum off =
      _$sourceSettingsRegionTaggingEnum_off;

  static Serializer<SourceSettingsRegionTaggingEnum> get serializer =>
      _$sourceSettingsRegionTaggingEnumSerializer;

  const SourceSettingsRegionTaggingEnum._(String name) : super(name);

  static BuiltSet<SourceSettingsRegionTaggingEnum> get values =>
      _$sourceSettingsRegionTaggingEnumValues;
  static SourceSettingsRegionTaggingEnum valueOf(String name) =>
      _$sourceSettingsRegionTaggingEnumValueOf(name);
}

/// Operator override of the descriptor egress; only when `egressOverridable` (else 400 EGRESS_FIXED); null = descriptor default
class SourceSettingsEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const SourceSettingsEgressEnum OPEN = _$sourceSettingsEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const SourceSettingsEgressEnum LOCAL_ONLY =
      _$sourceSettingsEgressEnum_LOCAL_ONLY;

  static Serializer<SourceSettingsEgressEnum> get serializer =>
      _$sourceSettingsEgressEnumSerializer;

  const SourceSettingsEgressEnum._(String name) : super(name);

  static BuiltSet<SourceSettingsEgressEnum> get values =>
      _$sourceSettingsEgressEnumValues;
  static SourceSettingsEgressEnum valueOf(String name) =>
      _$sourceSettingsEgressEnumValueOf(name);
}

/// Operator override of the descriptor reliability; null = descriptor default
class SourceSettingsReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const SourceSettingsReliabilityEnum A =
      _$sourceSettingsReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const SourceSettingsReliabilityEnum B =
      _$sourceSettingsReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const SourceSettingsReliabilityEnum C =
      _$sourceSettingsReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const SourceSettingsReliabilityEnum D =
      _$sourceSettingsReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const SourceSettingsReliabilityEnum E =
      _$sourceSettingsReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const SourceSettingsReliabilityEnum F =
      _$sourceSettingsReliabilityEnum_F;

  static Serializer<SourceSettingsReliabilityEnum> get serializer =>
      _$sourceSettingsReliabilityEnumSerializer;

  const SourceSettingsReliabilityEnum._(String name) : super(name);

  static BuiltSet<SourceSettingsReliabilityEnum> get values =>
      _$sourceSettingsReliabilityEnumValues;
  static SourceSettingsReliabilityEnum valueOf(String name) =>
      _$sourceSettingsReliabilityEnumValueOf(name);
}
