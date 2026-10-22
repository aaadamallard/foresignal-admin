//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_policy_all.g.dart';

/// ALL policy: every full-hash change is persisted (CHANGE), plus keyframes
///
/// Properties:
/// * [mode]
/// * [keyframe] - Keyframe interval on the TTL-anchor axis: a duration or `none` (only without a TTL). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class IngestPolicyAll
    implements Built<IngestPolicyAll, IngestPolicyAllBuilder> {
  @BuiltValueField(wireName: r'mode')
  IngestPolicyAllModeEnum get mode;
  // enum modeEnum {  ALL,  };

  /// Keyframe interval on the TTL-anchor axis: a duration or `none` (only without a TTL). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'keyframe')
  String? get keyframe;

  IngestPolicyAll._();

  factory IngestPolicyAll([void updates(IngestPolicyAllBuilder b)]) =
      _$IngestPolicyAll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestPolicyAllBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestPolicyAll> get serializer =>
      _$IngestPolicyAllSerializer();
}

class _$IngestPolicyAllSerializer
    implements PrimitiveSerializer<IngestPolicyAll> {
  @override
  final Iterable<Type> types = const [IngestPolicyAll, _$IngestPolicyAll];

  @override
  final String wireName = r'IngestPolicyAll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestPolicyAll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(IngestPolicyAllModeEnum),
    );
    if (object.keyframe != null) {
      yield r'keyframe';
      yield serializers.serialize(
        object.keyframe,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestPolicyAll object, {
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
    required IngestPolicyAllBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IngestPolicyAllModeEnum),
          ) as IngestPolicyAllModeEnum;
          result.mode = valueDes;
          break;
        case r'keyframe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.keyframe = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestPolicyAll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestPolicyAllBuilder();
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

class IngestPolicyAllModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ALL')
  static const IngestPolicyAllModeEnum ALL = _$ingestPolicyAllModeEnum_ALL;

  static Serializer<IngestPolicyAllModeEnum> get serializer =>
      _$ingestPolicyAllModeEnumSerializer;

  const IngestPolicyAllModeEnum._(String name) : super(name);

  static BuiltSet<IngestPolicyAllModeEnum> get values =>
      _$ingestPolicyAllModeEnumValues;
  static IngestPolicyAllModeEnum valueOf(String name) =>
      _$ingestPolicyAllModeEnumValueOf(name);
}
