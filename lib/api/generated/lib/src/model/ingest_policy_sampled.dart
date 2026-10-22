//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_policy_sampled.g.dart';

/// SAMPLED policy: significant changes, trigger edges, keyframes and samples by deviation or threshold
///
/// Properties:
/// * [mode]
/// * [minInterval] - Minimum Δt between SAMPLE versions (2 s ≤ minInterval ≤ keyframe). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [keyframe] - Keyframe interval on the TTL-anchor axis: a duration or `none` (only without a TTL). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [minDeviationMeters] - Dead-reckoning deviation that triggers a SAMPLE
/// * [thresholds] - Also sample when a descriptor threshold is exceeded
/// * [edgeMinInterval] - Minimum Δt between TRIGGER_EDGE versions (≤ minInterval; default minInterval/2). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class IngestPolicySampled
    implements Built<IngestPolicySampled, IngestPolicySampledBuilder> {
  @BuiltValueField(wireName: r'mode')
  IngestPolicySampledModeEnum get mode;
  // enum modeEnum {  SAMPLED,  };

  /// Minimum Δt between SAMPLE versions (2 s ≤ minInterval ≤ keyframe). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'minInterval')
  String get minInterval;

  /// Keyframe interval on the TTL-anchor axis: a duration or `none` (only without a TTL). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'keyframe')
  String? get keyframe;

  /// Dead-reckoning deviation that triggers a SAMPLE
  @BuiltValueField(wireName: r'minDeviationMeters')
  num? get minDeviationMeters;

  /// Also sample when a descriptor threshold is exceeded
  @BuiltValueField(wireName: r'thresholds')
  bool? get thresholds;

  /// Minimum Δt between TRIGGER_EDGE versions (≤ minInterval; default minInterval/2). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'edgeMinInterval')
  String? get edgeMinInterval;

  IngestPolicySampled._();

  factory IngestPolicySampled([void updates(IngestPolicySampledBuilder b)]) =
      _$IngestPolicySampled;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestPolicySampledBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestPolicySampled> get serializer =>
      _$IngestPolicySampledSerializer();
}

class _$IngestPolicySampledSerializer
    implements PrimitiveSerializer<IngestPolicySampled> {
  @override
  final Iterable<Type> types = const [
    IngestPolicySampled,
    _$IngestPolicySampled
  ];

  @override
  final String wireName = r'IngestPolicySampled';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestPolicySampled object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(IngestPolicySampledModeEnum),
    );
    yield r'minInterval';
    yield serializers.serialize(
      object.minInterval,
      specifiedType: const FullType(String),
    );
    if (object.keyframe != null) {
      yield r'keyframe';
      yield serializers.serialize(
        object.keyframe,
        specifiedType: const FullType(String),
      );
    }
    if (object.minDeviationMeters != null) {
      yield r'minDeviationMeters';
      yield serializers.serialize(
        object.minDeviationMeters,
        specifiedType: const FullType(num),
      );
    }
    if (object.thresholds != null) {
      yield r'thresholds';
      yield serializers.serialize(
        object.thresholds,
        specifiedType: const FullType(bool),
      );
    }
    if (object.edgeMinInterval != null) {
      yield r'edgeMinInterval';
      yield serializers.serialize(
        object.edgeMinInterval,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestPolicySampled object, {
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
    required IngestPolicySampledBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IngestPolicySampledModeEnum),
          ) as IngestPolicySampledModeEnum;
          result.mode = valueDes;
          break;
        case r'minInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minInterval = valueDes;
          break;
        case r'keyframe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.keyframe = valueDes;
          break;
        case r'minDeviationMeters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minDeviationMeters = valueDes;
          break;
        case r'thresholds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.thresholds = valueDes;
          break;
        case r'edgeMinInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edgeMinInterval = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestPolicySampled deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestPolicySampledBuilder();
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

class IngestPolicySampledModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SAMPLED')
  static const IngestPolicySampledModeEnum SAMPLED =
      _$ingestPolicySampledModeEnum_SAMPLED;

  static Serializer<IngestPolicySampledModeEnum> get serializer =>
      _$ingestPolicySampledModeEnumSerializer;

  const IngestPolicySampledModeEnum._(String name) : super(name);

  static BuiltSet<IngestPolicySampledModeEnum> get values =>
      _$ingestPolicySampledModeEnumValues;
  static IngestPolicySampledModeEnum valueOf(String name) =>
      _$ingestPolicySampledModeEnumValueOf(name);
}
