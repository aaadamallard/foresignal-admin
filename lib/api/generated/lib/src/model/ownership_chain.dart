//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ownership_chain_node.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ownership_chain.g.dart';

/// Ownership / affiliation chains from the seeds and the attributes they share (158)
///
/// Properties:
/// * [refs]
/// * [direction]
/// * [asOf]
/// * [generatedAt]
/// * [chains] - Every entity reached from a seed through ownership / affiliation edges, strongest and shortest path first
/// * [shared] - The subset of `chains` reached from two or more seeds — a shared owner, officer, address or affiliate
@BuiltValue()
abstract class OwnershipChain
    implements Built<OwnershipChain, OwnershipChainBuilder> {
  @BuiltValueField(wireName: r'refs')
  BuiltList<String> get refs;

  @BuiltValueField(wireName: r'direction')
  OwnershipChainDirectionEnum get direction;
  // enum directionEnum {  in,  out,  both,  };

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime? get generatedAt;

  /// Every entity reached from a seed through ownership / affiliation edges, strongest and shortest path first
  @BuiltValueField(wireName: r'chains')
  BuiltList<OwnershipChainNode> get chains;

  /// The subset of `chains` reached from two or more seeds — a shared owner, officer, address or affiliate
  @BuiltValueField(wireName: r'shared')
  BuiltList<OwnershipChainNode> get shared;

  OwnershipChain._();

  factory OwnershipChain([void updates(OwnershipChainBuilder b)]) =
      _$OwnershipChain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OwnershipChainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OwnershipChain> get serializer =>
      _$OwnershipChainSerializer();
}

class _$OwnershipChainSerializer
    implements PrimitiveSerializer<OwnershipChain> {
  @override
  final Iterable<Type> types = const [OwnershipChain, _$OwnershipChain];

  @override
  final String wireName = r'OwnershipChain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OwnershipChain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refs';
    yield serializers.serialize(
      object.refs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(OwnershipChainDirectionEnum),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.generatedAt != null) {
      yield r'generatedAt';
      yield serializers.serialize(
        object.generatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'chains';
    yield serializers.serialize(
      object.chains,
      specifiedType: const FullType(BuiltList, [FullType(OwnershipChainNode)]),
    );
    yield r'shared';
    yield serializers.serialize(
      object.shared,
      specifiedType: const FullType(BuiltList, [FullType(OwnershipChainNode)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OwnershipChain object, {
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
    required OwnershipChainBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.refs.replace(valueDes);
          break;
        case r'direction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OwnershipChainDirectionEnum),
                  )
                  as OwnershipChainDirectionEnum;
          result.direction = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'generatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.generatedAt = valueDes;
          break;
        case r'chains':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OwnershipChainNode),
                    ]),
                  )
                  as BuiltList<OwnershipChainNode>;
          result.chains.replace(valueDes);
          break;
        case r'shared':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OwnershipChainNode),
                    ]),
                  )
                  as BuiltList<OwnershipChainNode>;
          result.shared.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OwnershipChain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnershipChainBuilder();
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

class OwnershipChainDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'in')
  static const OwnershipChainDirectionEnum in_ =
      _$ownershipChainDirectionEnum_in_;
  @BuiltValueEnumConst(wireName: r'out')
  static const OwnershipChainDirectionEnum out_ =
      _$ownershipChainDirectionEnum_out_;
  @BuiltValueEnumConst(wireName: r'both')
  static const OwnershipChainDirectionEnum both =
      _$ownershipChainDirectionEnum_both;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OwnershipChainDirectionEnum unknownDefaultOpenApi =
      _$ownershipChainDirectionEnum_unknownDefaultOpenApi;

  static Serializer<OwnershipChainDirectionEnum> get serializer =>
      _$ownershipChainDirectionEnumSerializer;

  const OwnershipChainDirectionEnum._(String name) : super(name);

  static BuiltSet<OwnershipChainDirectionEnum> get values =>
      _$ownershipChainDirectionEnumValues;
  static OwnershipChainDirectionEnum valueOf(String name) =>
      _$ownershipChainDirectionEnumValueOf(name);
}
