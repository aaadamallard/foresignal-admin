//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/outlet_consensus_providers_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'outlet_consensus.g.dart';

/// Consensus per outlet and dimension over enabled providers, with the per-provider breakdown
///
/// Properties:
/// * [outletId]
/// * [dimension] - Rating dimension; provider axes that are not left–right are recorded as `{provider}:{axis}`, never forced into lean
/// * [median]
/// * [nProviders]
/// * [disagreement] - max − min of valueNorm
/// * [bucket] - Lean only: |median| < 0.75 is center
/// * [providers]
/// * [computedAt]
@BuiltValue()
abstract class OutletConsensus
    implements Built<OutletConsensus, OutletConsensusBuilder> {
  @BuiltValueField(wireName: r'outletId')
  String get outletId;

  /// Rating dimension; provider axes that are not left–right are recorded as `{provider}:{axis}`, never forced into lean
  @BuiltValueField(wireName: r'dimension')
  JsonObject? get dimension;

  @BuiltValueField(wireName: r'median')
  num? get median;

  @BuiltValueField(wireName: r'nProviders')
  int get nProviders;

  /// max − min of valueNorm
  @BuiltValueField(wireName: r'disagreement')
  num? get disagreement;

  /// Lean only: |median| < 0.75 is center
  @BuiltValueField(wireName: r'bucket')
  OutletConsensusBucketEnum? get bucket;
  // enum bucketEnum {  left,  center,  right,  };

  @BuiltValueField(wireName: r'providers')
  BuiltList<OutletConsensusProvidersInner> get providers;

  @BuiltValueField(wireName: r'computedAt')
  DateTime? get computedAt;

  OutletConsensus._();

  factory OutletConsensus([void updates(OutletConsensusBuilder b)]) =
      _$OutletConsensus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutletConsensusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutletConsensus> get serializer =>
      _$OutletConsensusSerializer();
}

class _$OutletConsensusSerializer
    implements PrimitiveSerializer<OutletConsensus> {
  @override
  final Iterable<Type> types = const [OutletConsensus, _$OutletConsensus];

  @override
  final String wireName = r'OutletConsensus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutletConsensus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'outletId';
    yield serializers.serialize(
      object.outletId,
      specifiedType: const FullType(String),
    );
    yield r'dimension';
    yield object.dimension == null
        ? null
        : serializers.serialize(
            object.dimension,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.median != null) {
      yield r'median';
      yield serializers.serialize(
        object.median,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'nProviders';
    yield serializers.serialize(
      object.nProviders,
      specifiedType: const FullType(int),
    );
    if (object.disagreement != null) {
      yield r'disagreement';
      yield serializers.serialize(
        object.disagreement,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.bucket != null) {
      yield r'bucket';
      yield serializers.serialize(
        object.bucket,
        specifiedType: const FullType.nullable(OutletConsensusBucketEnum),
      );
    }
    yield r'providers';
    yield serializers.serialize(
      object.providers,
      specifiedType:
          const FullType(BuiltList, [FullType(OutletConsensusProvidersInner)]),
    );
    if (object.computedAt != null) {
      yield r'computedAt';
      yield serializers.serialize(
        object.computedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OutletConsensus object, {
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
    required OutletConsensusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'outletId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.outletId = valueDes;
          break;
        case r'dimension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.dimension = valueDes;
          break;
        case r'median':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.median = valueDes;
          break;
        case r'nProviders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nProviders = valueDes;
          break;
        case r'disagreement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.disagreement = valueDes;
          break;
        case r'bucket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OutletConsensusBucketEnum),
          ) as OutletConsensusBucketEnum?;
          if (valueDes == null) continue;
          result.bucket = valueDes;
          break;
        case r'providers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OutletConsensusProvidersInner)]),
          ) as BuiltList<OutletConsensusProvidersInner>;
          result.providers.replace(valueDes);
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OutletConsensus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutletConsensusBuilder();
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

/// Lean only: |median| < 0.75 is center
class OutletConsensusBucketEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'left')
  static const OutletConsensusBucketEnum left =
      _$outletConsensusBucketEnum_left;
  @BuiltValueEnumConst(wireName: r'center')
  static const OutletConsensusBucketEnum center =
      _$outletConsensusBucketEnum_center;
  @BuiltValueEnumConst(wireName: r'right')
  static const OutletConsensusBucketEnum right =
      _$outletConsensusBucketEnum_right;

  static Serializer<OutletConsensusBucketEnum> get serializer =>
      _$outletConsensusBucketEnumSerializer;

  const OutletConsensusBucketEnum._(String name) : super(name);

  static BuiltSet<OutletConsensusBucketEnum> get values =>
      _$outletConsensusBucketEnumValues;
  static OutletConsensusBucketEnum valueOf(String name) =>
      _$outletConsensusBucketEnumValueOf(name);
}
