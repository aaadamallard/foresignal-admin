//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_policy_latest.g.dart';

/// LATEST policy: SAMPLED without deviation/threshold samples (significant changes, edges, keyframes)
///
/// Properties:
/// * [mode]
/// * [minInterval] - Minimum interval (2 s ≤ minInterval ≤ keyframe). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [keyframe] - Keyframe interval on the TTL-anchor axis: a duration or `none` (only without a TTL). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [edgeMinInterval] - Minimum Δt between TRIGGER_EDGE versions. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class IngestPolicyLatest
    implements Built<IngestPolicyLatest, IngestPolicyLatestBuilder> {
  @BuiltValueField(wireName: r'mode')
  IngestPolicyLatestModeEnum get mode;
  // enum modeEnum {  LATEST,  };

  /// Minimum interval (2 s ≤ minInterval ≤ keyframe). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'minInterval')
  String? get minInterval;

  /// Keyframe interval on the TTL-anchor axis: a duration or `none` (only without a TTL). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'keyframe')
  String? get keyframe;

  /// Minimum Δt between TRIGGER_EDGE versions. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'edgeMinInterval')
  String? get edgeMinInterval;

  IngestPolicyLatest._();

  factory IngestPolicyLatest([void updates(IngestPolicyLatestBuilder b)]) =
      _$IngestPolicyLatest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestPolicyLatestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestPolicyLatest> get serializer =>
      _$IngestPolicyLatestSerializer();
}

class _$IngestPolicyLatestSerializer
    implements PrimitiveSerializer<IngestPolicyLatest> {
  @override
  final Iterable<Type> types = const [IngestPolicyLatest, _$IngestPolicyLatest];

  @override
  final String wireName = r'IngestPolicyLatest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestPolicyLatest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(IngestPolicyLatestModeEnum),
    );
    if (object.minInterval != null) {
      yield r'minInterval';
      yield serializers.serialize(
        object.minInterval,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.keyframe != null) {
      yield r'keyframe';
      yield serializers.serialize(
        object.keyframe,
        specifiedType: const FullType(String),
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
    IngestPolicyLatest object, {
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
    required IngestPolicyLatestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IngestPolicyLatestModeEnum),
                  )
                  as IngestPolicyLatestModeEnum;
          result.mode = valueDes;
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
        case r'keyframe':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.keyframe = valueDes;
          break;
        case r'edgeMinInterval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  IngestPolicyLatest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestPolicyLatestBuilder();
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

class IngestPolicyLatestModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LATEST')
  static const IngestPolicyLatestModeEnum LATEST =
      _$ingestPolicyLatestModeEnum_LATEST;

  static Serializer<IngestPolicyLatestModeEnum> get serializer =>
      _$ingestPolicyLatestModeEnumSerializer;

  const IngestPolicyLatestModeEnum._(String name) : super(name);

  static BuiltSet<IngestPolicyLatestModeEnum> get values =>
      _$ingestPolicyLatestModeEnumValues;
  static IngestPolicyLatestModeEnum valueOf(String name) =>
      _$ingestPolicyLatestModeEnumValueOf(name);
}
