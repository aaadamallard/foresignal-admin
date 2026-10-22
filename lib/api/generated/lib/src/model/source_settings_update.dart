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

part 'source_settings_update.g.dart';

/// Partial update; omitted fields unchanged. retention=null reverts to the default (400 RETENTION_TIER_FIXED on TRACK sources); ingestPolicy=null clears the policy override.
///
/// Properties:
/// * [enabled]
/// * [interval] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [params]
/// * [budget]
/// * [retention] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [embed] - Embed this source's records for semantic search (027). `true` is refused (400 VALIDATION_FAILED, field `embed`) when the source declares no embedFields or is private; turning it off deletes the source's record documents.
/// * [ingestPolicy] - Explicit null clears the override; omitted leaves it unchanged. Invalid → 400 INGEST_POLICY_INVALID
/// * [statsEnabled]
/// * [statsIncludePrivate]
/// * [private]
/// * [regionTagging]
/// * [downsampleInterval] - TRACK sources only (STANDARD → 400 VALIDATION_FAILED, field `downsampleInterval`); explicit null clears it. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [egress] - Egress override; accepted only when the descriptor is `egressOverridable` (400 EGRESS_FIXED otherwise); null reverts to the descriptor
/// * [reliability] - Admiralty reliability override; null reverts to the descriptor default
@BuiltValue()
abstract class SourceSettingsUpdate
    implements Built<SourceSettingsUpdate, SourceSettingsUpdateBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'interval')
  String? get interval;

  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  @BuiltValueField(wireName: r'budget')
  Budget? get budget;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'retention')
  String? get retention;

  /// Embed this source's records for semantic search (027). `true` is refused (400 VALIDATION_FAILED, field `embed`) when the source declares no embedFields or is private; turning it off deletes the source's record documents.
  @BuiltValueField(wireName: r'embed')
  bool? get embed;

  /// Explicit null clears the override; omitted leaves it unchanged. Invalid → 400 INGEST_POLICY_INVALID
  @BuiltValueField(wireName: r'ingestPolicy')
  IngestPolicy? get ingestPolicy;

  @BuiltValueField(wireName: r'statsEnabled')
  bool? get statsEnabled;

  @BuiltValueField(wireName: r'statsIncludePrivate')
  bool? get statsIncludePrivate;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'regionTagging')
  SourceSettingsUpdateRegionTaggingEnum? get regionTagging;
  // enum regionTaggingEnum {  eager,  lazy,  off,  };

  /// TRACK sources only (STANDARD → 400 VALIDATION_FAILED, field `downsampleInterval`); explicit null clears it. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'downsampleInterval')
  String? get downsampleInterval;

  /// Egress override; accepted only when the descriptor is `egressOverridable` (400 EGRESS_FIXED otherwise); null reverts to the descriptor
  @BuiltValueField(wireName: r'egress')
  SourceSettingsUpdateEgressEnum? get egress;
  // enum egressEnum {  OPEN,  LOCAL_ONLY,  };

  /// Admiralty reliability override; null reverts to the descriptor default
  @BuiltValueField(wireName: r'reliability')
  SourceSettingsUpdateReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  SourceSettingsUpdate._();

  factory SourceSettingsUpdate([void updates(SourceSettingsUpdateBuilder b)]) =
      _$SourceSettingsUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceSettingsUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceSettingsUpdate> get serializer =>
      _$SourceSettingsUpdateSerializer();
}

class _$SourceSettingsUpdateSerializer
    implements PrimitiveSerializer<SourceSettingsUpdate> {
  @override
  final Iterable<Type> types = const [
    SourceSettingsUpdate,
    _$SourceSettingsUpdate,
  ];

  @override
  final String wireName = r'SourceSettingsUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceSettingsUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(String),
      );
    }
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.budget != null) {
      yield r'budget';
      yield serializers.serialize(
        object.budget,
        specifiedType: const FullType(Budget),
      );
    }
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
    if (object.ingestPolicy != null) {
      yield r'ingestPolicy';
      yield serializers.serialize(
        object.ingestPolicy,
        specifiedType: const FullType.nullable(IngestPolicy),
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
        specifiedType: const FullType(SourceSettingsUpdateRegionTaggingEnum),
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
        specifiedType: const FullType.nullable(SourceSettingsUpdateEgressEnum),
      );
    }
    if (object.reliability != null) {
      yield r'reliability';
      yield serializers.serialize(
        object.reliability,
        specifiedType: const FullType.nullable(
          SourceSettingsUpdateReliabilityEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceSettingsUpdate object, {
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
    required SourceSettingsUpdateBuilder result,
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
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.interval = valueDes;
          break;
        case r'params':
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
          result.params.replace(valueDes);
          break;
        case r'budget':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Budget),
                  )
                  as Budget?;
          if (valueDes == null) continue;
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
                      SourceSettingsUpdateRegionTaggingEnum,
                    ),
                  )
                  as SourceSettingsUpdateRegionTaggingEnum?;
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
                      SourceSettingsUpdateEgressEnum,
                    ),
                  )
                  as SourceSettingsUpdateEgressEnum?;
          if (valueDes == null) continue;
          result.egress = valueDes;
          break;
        case r'reliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SourceSettingsUpdateReliabilityEnum,
                    ),
                  )
                  as SourceSettingsUpdateReliabilityEnum?;
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
  SourceSettingsUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceSettingsUpdateBuilder();
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

class SourceSettingsUpdateRegionTaggingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'eager')
  static const SourceSettingsUpdateRegionTaggingEnum eager =
      _$sourceSettingsUpdateRegionTaggingEnum_eager;
  @BuiltValueEnumConst(wireName: r'lazy')
  static const SourceSettingsUpdateRegionTaggingEnum lazy =
      _$sourceSettingsUpdateRegionTaggingEnum_lazy;
  @BuiltValueEnumConst(wireName: r'off')
  static const SourceSettingsUpdateRegionTaggingEnum off =
      _$sourceSettingsUpdateRegionTaggingEnum_off;

  static Serializer<SourceSettingsUpdateRegionTaggingEnum> get serializer =>
      _$sourceSettingsUpdateRegionTaggingEnumSerializer;

  const SourceSettingsUpdateRegionTaggingEnum._(String name) : super(name);

  static BuiltSet<SourceSettingsUpdateRegionTaggingEnum> get values =>
      _$sourceSettingsUpdateRegionTaggingEnumValues;
  static SourceSettingsUpdateRegionTaggingEnum valueOf(String name) =>
      _$sourceSettingsUpdateRegionTaggingEnumValueOf(name);
}

/// Egress override; accepted only when the descriptor is `egressOverridable` (400 EGRESS_FIXED otherwise); null reverts to the descriptor
class SourceSettingsUpdateEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const SourceSettingsUpdateEgressEnum OPEN =
      _$sourceSettingsUpdateEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const SourceSettingsUpdateEgressEnum LOCAL_ONLY =
      _$sourceSettingsUpdateEgressEnum_LOCAL_ONLY;

  static Serializer<SourceSettingsUpdateEgressEnum> get serializer =>
      _$sourceSettingsUpdateEgressEnumSerializer;

  const SourceSettingsUpdateEgressEnum._(String name) : super(name);

  static BuiltSet<SourceSettingsUpdateEgressEnum> get values =>
      _$sourceSettingsUpdateEgressEnumValues;
  static SourceSettingsUpdateEgressEnum valueOf(String name) =>
      _$sourceSettingsUpdateEgressEnumValueOf(name);
}

/// Admiralty reliability override; null reverts to the descriptor default
class SourceSettingsUpdateReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const SourceSettingsUpdateReliabilityEnum A =
      _$sourceSettingsUpdateReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const SourceSettingsUpdateReliabilityEnum B =
      _$sourceSettingsUpdateReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const SourceSettingsUpdateReliabilityEnum C =
      _$sourceSettingsUpdateReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const SourceSettingsUpdateReliabilityEnum D =
      _$sourceSettingsUpdateReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const SourceSettingsUpdateReliabilityEnum E =
      _$sourceSettingsUpdateReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const SourceSettingsUpdateReliabilityEnum F =
      _$sourceSettingsUpdateReliabilityEnum_F;

  static Serializer<SourceSettingsUpdateReliabilityEnum> get serializer =>
      _$sourceSettingsUpdateReliabilityEnumSerializer;

  const SourceSettingsUpdateReliabilityEnum._(String name) : super(name);

  static BuiltSet<SourceSettingsUpdateReliabilityEnum> get values =>
      _$sourceSettingsUpdateReliabilityEnumValues;
  static SourceSettingsUpdateReliabilityEnum valueOf(String name) =>
      _$sourceSettingsUpdateReliabilityEnumValueOf(name);
}
