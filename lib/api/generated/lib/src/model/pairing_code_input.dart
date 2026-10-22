//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/read_restriction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pairing_code_input.g.dart';

/// Create a pairing code a device can claim for a token (023)
///
/// Properties:
/// * [name] - Name given to the token created on claim
/// * [scope] - `admin` is never pairable
/// * [restrictions]
/// * [ttl] - Code lifetime: default 10m, max 1h
/// * [principalId] - Principal that will own the token; default: a new principal named after the token
/// * [privateAccess] - Grant visibility of private sources (039) to the claimed token
@BuiltValue()
abstract class PairingCodeInput
    implements Built<PairingCodeInput, PairingCodeInputBuilder> {
  /// Name given to the token created on claim
  @BuiltValueField(wireName: r'name')
  String get name;

  /// `admin` is never pairable
  @BuiltValueField(wireName: r'scope')
  PairingCodeInputScopeEnum get scope;
  // enum scopeEnum {  read,  agent,  };

  @BuiltValueField(wireName: r'restrictions')
  ReadRestriction? get restrictions;

  /// Code lifetime: default 10m, max 1h
  @BuiltValueField(wireName: r'ttl')
  String? get ttl;

  /// Principal that will own the token; default: a new principal named after the token
  @BuiltValueField(wireName: r'principalId')
  String? get principalId;

  /// Grant visibility of private sources (039) to the claimed token
  @BuiltValueField(wireName: r'privateAccess')
  bool? get privateAccess;

  PairingCodeInput._();

  factory PairingCodeInput([void updates(PairingCodeInputBuilder b)]) =
      _$PairingCodeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PairingCodeInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PairingCodeInput> get serializer =>
      _$PairingCodeInputSerializer();
}

class _$PairingCodeInputSerializer
    implements PrimitiveSerializer<PairingCodeInput> {
  @override
  final Iterable<Type> types = const [PairingCodeInput, _$PairingCodeInput];

  @override
  final String wireName = r'PairingCodeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PairingCodeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(PairingCodeInputScopeEnum),
    );
    if (object.restrictions != null) {
      yield r'restrictions';
      yield serializers.serialize(
        object.restrictions,
        specifiedType: const FullType.nullable(ReadRestriction),
      );
    }
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType(String),
      );
    }
    if (object.principalId != null) {
      yield r'principalId';
      yield serializers.serialize(
        object.principalId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.privateAccess != null) {
      yield r'privateAccess';
      yield serializers.serialize(
        object.privateAccess,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PairingCodeInput object, {
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
    required PairingCodeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PairingCodeInputScopeEnum),
                  )
                  as PairingCodeInputScopeEnum;
          result.scope = valueDes;
          break;
        case r'restrictions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReadRestriction),
                  )
                  as ReadRestriction?;
          if (valueDes == null) continue;
          result.restrictions.replace(valueDes);
          break;
        case r'ttl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ttl = valueDes;
          break;
        case r'principalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principalId = valueDes;
          break;
        case r'privateAccess':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.privateAccess = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PairingCodeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PairingCodeInputBuilder();
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

/// `admin` is never pairable
class PairingCodeInputScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const PairingCodeInputScopeEnum read =
      _$pairingCodeInputScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const PairingCodeInputScopeEnum agent =
      _$pairingCodeInputScopeEnum_agent;

  static Serializer<PairingCodeInputScopeEnum> get serializer =>
      _$pairingCodeInputScopeEnumSerializer;

  const PairingCodeInputScopeEnum._(String name) : super(name);

  static BuiltSet<PairingCodeInputScopeEnum> get values =>
      _$pairingCodeInputScopeEnumValues;
  static PairingCodeInputScopeEnum valueOf(String name) =>
      _$pairingCodeInputScopeEnumValueOf(name);
}
