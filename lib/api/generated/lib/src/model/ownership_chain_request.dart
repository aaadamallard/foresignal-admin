//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ownership_chain_request.g.dart';

/// Seed entities (people / organizations) whose ownership and affiliation chains to walk (158)
///
/// Properties:
/// * [refs]
/// * [depth] - Most ownership / affiliation hops to follow
/// * [direction] - Follow edges out of the seed (what it owns / controls), into it (who owns / controls it), or both
/// * [types] - Ownership / affiliation edge types to walk; empty or absent walks all five
/// * [minConfidence]
/// * [asOf]
@BuiltValue()
abstract class OwnershipChainRequest
    implements Built<OwnershipChainRequest, OwnershipChainRequestBuilder> {
  @BuiltValueField(wireName: r'refs')
  BuiltList<String> get refs;

  /// Most ownership / affiliation hops to follow
  @BuiltValueField(wireName: r'depth')
  int? get depth;

  /// Follow edges out of the seed (what it owns / controls), into it (who owns / controls it), or both
  @BuiltValueField(wireName: r'direction')
  OwnershipChainRequestDirectionEnum? get direction;
  // enum directionEnum {  in,  out,  both,  };

  /// Ownership / affiliation edge types to walk; empty or absent walks all five
  @BuiltValueField(wireName: r'types')
  BuiltList<OwnershipChainRequestTypesEnum>? get types;
  // enum typesEnum {  owns,  controls,  officer-of,  beneficial-owner,  affiliated-with,  };

  @BuiltValueField(wireName: r'minConfidence')
  num? get minConfidence;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  OwnershipChainRequest._();

  factory OwnershipChainRequest([
    void updates(OwnershipChainRequestBuilder b),
  ]) = _$OwnershipChainRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OwnershipChainRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OwnershipChainRequest> get serializer =>
      _$OwnershipChainRequestSerializer();
}

class _$OwnershipChainRequestSerializer
    implements PrimitiveSerializer<OwnershipChainRequest> {
  @override
  final Iterable<Type> types = const [
    OwnershipChainRequest,
    _$OwnershipChainRequest,
  ];

  @override
  final String wireName = r'OwnershipChainRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OwnershipChainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refs';
    yield serializers.serialize(
      object.refs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.depth != null) {
      yield r'depth';
      yield serializers.serialize(
        object.depth,
        specifiedType: const FullType(int),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(OwnershipChainRequestDirectionEnum),
      );
    }
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltList, [
          FullType(OwnershipChainRequestTypesEnum),
        ]),
      );
    }
    if (object.minConfidence != null) {
      yield r'minConfidence';
      yield serializers.serialize(
        object.minConfidence,
        specifiedType: const FullType(num),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OwnershipChainRequest object, {
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
    required OwnershipChainRequestBuilder result,
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
        case r'depth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.depth = valueDes;
          break;
        case r'direction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      OwnershipChainRequestDirectionEnum,
                    ),
                  )
                  as OwnershipChainRequestDirectionEnum?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        case r'types':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(OwnershipChainRequestTypesEnum),
                    ]),
                  )
                  as BuiltList<OwnershipChainRequestTypesEnum>?;
          if (valueDes == null) continue;
          result.types.replace(valueDes);
          break;
        case r'minConfidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.minConfidence = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OwnershipChainRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnershipChainRequestBuilder();
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

/// Follow edges out of the seed (what it owns / controls), into it (who owns / controls it), or both
class OwnershipChainRequestDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'in')
  static const OwnershipChainRequestDirectionEnum in_ =
      _$ownershipChainRequestDirectionEnum_in_;
  @BuiltValueEnumConst(wireName: r'out')
  static const OwnershipChainRequestDirectionEnum out_ =
      _$ownershipChainRequestDirectionEnum_out_;
  @BuiltValueEnumConst(wireName: r'both')
  static const OwnershipChainRequestDirectionEnum both =
      _$ownershipChainRequestDirectionEnum_both;

  static Serializer<OwnershipChainRequestDirectionEnum> get serializer =>
      _$ownershipChainRequestDirectionEnumSerializer;

  const OwnershipChainRequestDirectionEnum._(String name) : super(name);

  static BuiltSet<OwnershipChainRequestDirectionEnum> get values =>
      _$ownershipChainRequestDirectionEnumValues;
  static OwnershipChainRequestDirectionEnum valueOf(String name) =>
      _$ownershipChainRequestDirectionEnumValueOf(name);
}

class OwnershipChainRequestTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'owns')
  static const OwnershipChainRequestTypesEnum owns =
      _$ownershipChainRequestTypesEnum_owns;
  @BuiltValueEnumConst(wireName: r'controls')
  static const OwnershipChainRequestTypesEnum controls =
      _$ownershipChainRequestTypesEnum_controls;
  @BuiltValueEnumConst(wireName: r'officer-of')
  static const OwnershipChainRequestTypesEnum officerOf =
      _$ownershipChainRequestTypesEnum_officerOf;
  @BuiltValueEnumConst(wireName: r'beneficial-owner')
  static const OwnershipChainRequestTypesEnum beneficialOwner =
      _$ownershipChainRequestTypesEnum_beneficialOwner;
  @BuiltValueEnumConst(wireName: r'affiliated-with')
  static const OwnershipChainRequestTypesEnum affiliatedWith =
      _$ownershipChainRequestTypesEnum_affiliatedWith;

  static Serializer<OwnershipChainRequestTypesEnum> get serializer =>
      _$ownershipChainRequestTypesEnumSerializer;

  const OwnershipChainRequestTypesEnum._(String name) : super(name);

  static BuiltSet<OwnershipChainRequestTypesEnum> get values =>
      _$ownershipChainRequestTypesEnumValues;
  static OwnershipChainRequestTypesEnum valueOf(String name) =>
      _$ownershipChainRequestTypesEnumValueOf(name);
}
