//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_policy_latest.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ingest_policy_sampled.dart';
import 'package:foresignal_api/src/model/ingest_policy_all.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'ingest_policy.g.dart';

/// Per-source ingest policy, discriminated on `mode` (Core-Data-Model §5.1); same JSON shape as `source_settings.ingest_policy`
///
/// Properties:
/// * [mode]
/// * [keyframe] - Keyframe interval on the TTL-anchor axis: a duration or `none` (only without a TTL). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [minInterval] - Minimum interval (2 s ≤ minInterval ≤ keyframe). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [minDeviationMeters] - Dead-reckoning deviation that triggers a SAMPLE
/// * [thresholds] - Also sample when a descriptor threshold is exceeded
/// * [edgeMinInterval] - Minimum Δt between TRIGGER_EDGE versions. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class IngestPolicy
    implements Built<IngestPolicy, IngestPolicyBuilder> {
  /// One Of [IngestPolicyAll], [IngestPolicyLatest], [IngestPolicySampled]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'mode';

  static const Map<String, Type> discriminatorMapping = {
    r'ALL': IngestPolicyAll,
    r'LATEST': IngestPolicyLatest,
    r'SAMPLED': IngestPolicySampled,
  };

  IngestPolicy._();

  factory IngestPolicy([void updates(IngestPolicyBuilder b)]) = _$IngestPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestPolicy> get serializer => _$IngestPolicySerializer();
}

extension IngestPolicyDiscriminatorExt on IngestPolicy {
  String? get discriminatorValue {
    if (this is IngestPolicyAll) {
      return r'ALL';
    }
    if (this is IngestPolicyLatest) {
      return r'LATEST';
    }
    if (this is IngestPolicySampled) {
      return r'SAMPLED';
    }
    return null;
  }
}

extension IngestPolicyBuilderDiscriminatorExt on IngestPolicyBuilder {
  String? get discriminatorValue {
    if (this is IngestPolicyAllBuilder) {
      return r'ALL';
    }
    if (this is IngestPolicyLatestBuilder) {
      return r'LATEST';
    }
    if (this is IngestPolicySampledBuilder) {
      return r'SAMPLED';
    }
    return null;
  }
}

class _$IngestPolicySerializer implements PrimitiveSerializer<IngestPolicy> {
  @override
  final Iterable<Type> types = const [IngestPolicy, _$IngestPolicy];

  @override
  final String wireName = r'IngestPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    IngestPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  IngestPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestPolicyBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(IngestPolicy.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      IngestPolicyAll,
      IngestPolicyLatest,
      IngestPolicySampled,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'ALL':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(IngestPolicyAll),
        ) as IngestPolicyAll;
        oneOfType = IngestPolicyAll;
        break;
      case r'LATEST':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(IngestPolicyLatest),
        ) as IngestPolicyLatest;
        oneOfType = IngestPolicyLatest;
        break;
      case r'SAMPLED':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(IngestPolicySampled),
        ) as IngestPolicySampled;
        oneOfType = IngestPolicySampled;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class IngestPolicyModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LATEST')
  static const IngestPolicyModeEnum LATEST = _$ingestPolicyModeEnum_LATEST;

  static Serializer<IngestPolicyModeEnum> get serializer =>
      _$ingestPolicyModeEnumSerializer;

  const IngestPolicyModeEnum._(String name) : super(name);

  static BuiltSet<IngestPolicyModeEnum> get values =>
      _$ingestPolicyModeEnumValues;
  static IngestPolicyModeEnum valueOf(String name) =>
      _$ingestPolicyModeEnumValueOf(name);
}
