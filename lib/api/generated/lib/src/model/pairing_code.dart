//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/read_restriction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pairing_code.g.dart';

/// An unclaimed pairing code (the code itself is never listed) (023)
///
/// Properties:
/// * [id]
/// * [name]
/// * [scope]
/// * [restrictions]
/// * [principalId]
/// * [privateAccess]
/// * [createdAt]
/// * [expiresAt]
/// * [createdByTokenId]
/// * [claimedAt]
/// * [claimedTokenId]
@BuiltValue()
abstract class PairingCode implements Built<PairingCode, PairingCodeBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'scope')
  PairingCodeScopeEnum get scope;
  // enum scopeEnum {  read,  agent,  };

  @BuiltValueField(wireName: r'restrictions')
  ReadRestriction? get restrictions;

  @BuiltValueField(wireName: r'principalId')
  String? get principalId;

  @BuiltValueField(wireName: r'privateAccess')
  bool? get privateAccess;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'createdByTokenId')
  String? get createdByTokenId;

  @BuiltValueField(wireName: r'claimedAt')
  DateTime? get claimedAt;

  @BuiltValueField(wireName: r'claimedTokenId')
  String? get claimedTokenId;

  PairingCode._();

  factory PairingCode([void updates(PairingCodeBuilder b)]) = _$PairingCode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PairingCodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PairingCode> get serializer => _$PairingCodeSerializer();
}

class _$PairingCodeSerializer implements PrimitiveSerializer<PairingCode> {
  @override
  final Iterable<Type> types = const [PairingCode, _$PairingCode];

  @override
  final String wireName = r'PairingCode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PairingCode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(PairingCodeScopeEnum),
    );
    if (object.restrictions != null) {
      yield r'restrictions';
      yield serializers.serialize(
        object.restrictions,
        specifiedType: const FullType.nullable(ReadRestriction),
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
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.createdByTokenId != null) {
      yield r'createdByTokenId';
      yield serializers.serialize(
        object.createdByTokenId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.claimedAt != null) {
      yield r'claimedAt';
      yield serializers.serialize(
        object.claimedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.claimedTokenId != null) {
      yield r'claimedTokenId';
      yield serializers.serialize(
        object.claimedTokenId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PairingCode object, {
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
    required PairingCodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PairingCodeScopeEnum),
          ) as PairingCodeScopeEnum;
          result.scope = valueDes;
          break;
        case r'restrictions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReadRestriction),
          ) as ReadRestriction?;
          if (valueDes == null) continue;
          result.restrictions.replace(valueDes);
          break;
        case r'principalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.principalId = valueDes;
          break;
        case r'privateAccess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.privateAccess = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'createdByTokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdByTokenId = valueDes;
          break;
        case r'claimedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.claimedAt = valueDes;
          break;
        case r'claimedTokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.claimedTokenId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PairingCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PairingCodeBuilder();
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

class PairingCodeScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const PairingCodeScopeEnum read = _$pairingCodeScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const PairingCodeScopeEnum agent = _$pairingCodeScopeEnum_agent;

  static Serializer<PairingCodeScopeEnum> get serializer =>
      _$pairingCodeScopeEnumSerializer;

  const PairingCodeScopeEnum._(String name) : super(name);

  static BuiltSet<PairingCodeScopeEnum> get values =>
      _$pairingCodeScopeEnumValues;
  static PairingCodeScopeEnum valueOf(String name) =>
      _$pairingCodeScopeEnumValueOf(name);
}
