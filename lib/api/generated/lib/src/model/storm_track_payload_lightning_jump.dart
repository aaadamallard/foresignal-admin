//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_track_payload_lightning_jump.g.dart';

/// GLM lightning jump (advisory)
///
/// Properties:
/// * [at]
/// * [sigma]
/// * [rateFpm]
/// * [method]
@BuiltValue()
abstract class StormTrackPayloadLightningJump
    implements
        Built<
          StormTrackPayloadLightningJump,
          StormTrackPayloadLightningJumpBuilder
        > {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'sigma')
  num? get sigma;

  @BuiltValueField(wireName: r'rateFpm')
  num? get rateFpm;

  @BuiltValueField(wireName: r'method')
  StormTrackPayloadLightningJumpMethodEnum get method;
  // enum methodEnum {  2sigma-glm-v1,  };

  StormTrackPayloadLightningJump._();

  factory StormTrackPayloadLightningJump([
    void updates(StormTrackPayloadLightningJumpBuilder b),
  ]) = _$StormTrackPayloadLightningJump;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormTrackPayloadLightningJumpBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormTrackPayloadLightningJump> get serializer =>
      _$StormTrackPayloadLightningJumpSerializer();
}

class _$StormTrackPayloadLightningJumpSerializer
    implements PrimitiveSerializer<StormTrackPayloadLightningJump> {
  @override
  final Iterable<Type> types = const [
    StormTrackPayloadLightningJump,
    _$StormTrackPayloadLightningJump,
  ];

  @override
  final String wireName = r'StormTrackPayloadLightningJump';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormTrackPayloadLightningJump object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    if (object.sigma != null) {
      yield r'sigma';
      yield serializers.serialize(
        object.sigma,
        specifiedType: const FullType(num),
      );
    }
    if (object.rateFpm != null) {
      yield r'rateFpm';
      yield serializers.serialize(
        object.rateFpm,
        specifiedType: const FullType(num),
      );
    }
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(StormTrackPayloadLightningJumpMethodEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadLightningJump object, {
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
    required StormTrackPayloadLightningJumpBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'sigma':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.sigma = valueDes;
          break;
        case r'rateFpm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.rateFpm = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      StormTrackPayloadLightningJumpMethodEnum,
                    ),
                  )
                  as StormTrackPayloadLightningJumpMethodEnum;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormTrackPayloadLightningJump deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormTrackPayloadLightningJumpBuilder();
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

class StormTrackPayloadLightningJumpMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'2sigma-glm-v1')
  static const StormTrackPayloadLightningJumpMethodEnum n2sigmaGlmV1 =
      _$stormTrackPayloadLightningJumpMethodEnum_n2sigmaGlmV1;

  static Serializer<StormTrackPayloadLightningJumpMethodEnum> get serializer =>
      _$stormTrackPayloadLightningJumpMethodEnumSerializer;

  const StormTrackPayloadLightningJumpMethodEnum._(String name) : super(name);

  static BuiltSet<StormTrackPayloadLightningJumpMethodEnum> get values =>
      _$stormTrackPayloadLightningJumpMethodEnumValues;
  static StormTrackPayloadLightningJumpMethodEnum valueOf(String name) =>
      _$stormTrackPayloadLightningJumpMethodEnumValueOf(name);
}
