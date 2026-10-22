//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lightning_cluster_payload.g.dart';

/// Payload of `lightning-cluster` records (goes-glm DBSCAN)
///
/// Properties:
/// * [flashes5m] - Bucket lower bound
/// * [radiusKm]
/// * [maxEnergyFj] - Bucketed
/// * [label]
/// * [automated]
/// * [notAWarning]
@BuiltValue()
abstract class LightningClusterPayload
    implements Built<LightningClusterPayload, LightningClusterPayloadBuilder> {
  /// Bucket lower bound
  @BuiltValueField(wireName: r'flashes5m')
  LightningClusterPayloadFlashes5mEnum get flashes5m;
  // enum flashes5mEnum {  3,  5,  10,  20,  50,  100,  200,  };

  @BuiltValueField(wireName: r'radiusKm')
  num? get radiusKm;

  /// Bucketed
  @BuiltValueField(wireName: r'maxEnergyFj')
  num? get maxEnergyFj;

  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'automated')
  bool get automated;

  @BuiltValueField(wireName: r'notAWarning')
  bool get notAWarning;

  LightningClusterPayload._();

  factory LightningClusterPayload([
    void updates(LightningClusterPayloadBuilder b),
  ]) = _$LightningClusterPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LightningClusterPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LightningClusterPayload> get serializer =>
      _$LightningClusterPayloadSerializer();
}

class _$LightningClusterPayloadSerializer
    implements PrimitiveSerializer<LightningClusterPayload> {
  @override
  final Iterable<Type> types = const [
    LightningClusterPayload,
    _$LightningClusterPayload,
  ];

  @override
  final String wireName = r'LightningClusterPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LightningClusterPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'flashes5m';
    yield serializers.serialize(
      object.flashes5m,
      specifiedType: const FullType(LightningClusterPayloadFlashes5mEnum),
    );
    if (object.radiusKm != null) {
      yield r'radiusKm';
      yield serializers.serialize(
        object.radiusKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxEnergyFj != null) {
      yield r'maxEnergyFj';
      yield serializers.serialize(
        object.maxEnergyFj,
        specifiedType: const FullType(num),
      );
    }
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'automated';
    yield serializers.serialize(
      object.automated,
      specifiedType: const FullType(bool),
    );
    yield r'notAWarning';
    yield serializers.serialize(
      object.notAWarning,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LightningClusterPayload object, {
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
    required LightningClusterPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'flashes5m':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      LightningClusterPayloadFlashes5mEnum,
                    ),
                  )
                  as LightningClusterPayloadFlashes5mEnum;
          result.flashes5m = valueDes;
          break;
        case r'radiusKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.radiusKm = valueDes;
          break;
        case r'maxEnergyFj':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxEnergyFj = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        case r'automated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.automated = valueDes;
          break;
        case r'notAWarning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.notAWarning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LightningClusterPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LightningClusterPayloadBuilder();
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

/// Bucket lower bound
class LightningClusterPayloadFlashes5mEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 3)
  static const LightningClusterPayloadFlashes5mEnum number3 =
      _$lightningClusterPayloadFlashes5mEnum_number3;
  @BuiltValueEnumConst(wireNumber: 5)
  static const LightningClusterPayloadFlashes5mEnum number5 =
      _$lightningClusterPayloadFlashes5mEnum_number5;
  @BuiltValueEnumConst(wireNumber: 10)
  static const LightningClusterPayloadFlashes5mEnum number10 =
      _$lightningClusterPayloadFlashes5mEnum_number10;
  @BuiltValueEnumConst(wireNumber: 20)
  static const LightningClusterPayloadFlashes5mEnum number20 =
      _$lightningClusterPayloadFlashes5mEnum_number20;
  @BuiltValueEnumConst(wireNumber: 50)
  static const LightningClusterPayloadFlashes5mEnum number50 =
      _$lightningClusterPayloadFlashes5mEnum_number50;
  @BuiltValueEnumConst(wireNumber: 100)
  static const LightningClusterPayloadFlashes5mEnum number100 =
      _$lightningClusterPayloadFlashes5mEnum_number100;
  @BuiltValueEnumConst(wireNumber: 200)
  static const LightningClusterPayloadFlashes5mEnum number200 =
      _$lightningClusterPayloadFlashes5mEnum_number200;

  static Serializer<LightningClusterPayloadFlashes5mEnum> get serializer =>
      _$lightningClusterPayloadFlashes5mEnumSerializer;

  const LightningClusterPayloadFlashes5mEnum._(String name) : super(name);

  static BuiltSet<LightningClusterPayloadFlashes5mEnum> get values =>
      _$lightningClusterPayloadFlashes5mEnumValues;
  static LightningClusterPayloadFlashes5mEnum valueOf(String name) =>
      _$lightningClusterPayloadFlashes5mEnumValueOf(name);
}
