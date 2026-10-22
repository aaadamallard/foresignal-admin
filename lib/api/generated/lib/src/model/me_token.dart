//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'me_token.g.dart';

/// The token used for this request
///
/// Properties:
/// * [id]
/// * [name]
/// * [scope]
/// * [tokenPrefix]
/// * [expiresAt]
@BuiltValue()
abstract class MeToken implements Built<MeToken, MeTokenBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'scope')
  MeTokenScopeEnum get scope;
  // enum scopeEnum {  read,  agent,  admin,  };

  @BuiltValueField(wireName: r'tokenPrefix')
  String? get tokenPrefix;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  MeToken._();

  factory MeToken([void updates(MeTokenBuilder b)]) = _$MeToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MeToken> get serializer => _$MeTokenSerializer();
}

class _$MeTokenSerializer implements PrimitiveSerializer<MeToken> {
  @override
  final Iterable<Type> types = const [MeToken, _$MeToken];

  @override
  final String wireName = r'MeToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MeToken object, {
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
      specifiedType: const FullType(MeTokenScopeEnum),
    );
    if (object.tokenPrefix != null) {
      yield r'tokenPrefix';
      yield serializers.serialize(
        object.tokenPrefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MeToken object, {
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
    required MeTokenBuilder result,
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
            specifiedType: const FullType(MeTokenScopeEnum),
          ) as MeTokenScopeEnum;
          result.scope = valueDes;
          break;
        case r'tokenPrefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tokenPrefix = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MeToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeTokenBuilder();
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

class MeTokenScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const MeTokenScopeEnum read = _$meTokenScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const MeTokenScopeEnum agent = _$meTokenScopeEnum_agent;
  @BuiltValueEnumConst(wireName: r'admin')
  static const MeTokenScopeEnum admin = _$meTokenScopeEnum_admin;

  static Serializer<MeTokenScopeEnum> get serializer =>
      _$meTokenScopeEnumSerializer;

  const MeTokenScopeEnum._(String name) : super(name);

  static BuiltSet<MeTokenScopeEnum> get values => _$meTokenScopeEnumValues;
  static MeTokenScopeEnum valueOf(String name) =>
      _$meTokenScopeEnumValueOf(name);
}
