//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_token_created.g.dart';

/// A new registration token (shown once)
///
/// Properties:
/// * [id] - ULID identifier
/// * [name]
/// * [prefix]
/// * [expiresAt]
/// * [maxUses]
/// * [uses]
/// * [sourceIdPrefix]
/// * [createdAt]
/// * [token] - fsx_… (shown once)
@BuiltValue()
abstract class RegistrationTokenCreated
    implements
        Built<RegistrationTokenCreated, RegistrationTokenCreatedBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'prefix')
  String get prefix;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'maxUses')
  int get maxUses;

  @BuiltValueField(wireName: r'uses')
  int get uses;

  @BuiltValueField(wireName: r'sourceIdPrefix')
  String? get sourceIdPrefix;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// fsx_… (shown once)
  @BuiltValueField(wireName: r'token')
  String get token;

  RegistrationTokenCreated._();

  factory RegistrationTokenCreated([
    void updates(RegistrationTokenCreatedBuilder b),
  ]) = _$RegistrationTokenCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationTokenCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationTokenCreated> get serializer =>
      _$RegistrationTokenCreatedSerializer();
}

class _$RegistrationTokenCreatedSerializer
    implements PrimitiveSerializer<RegistrationTokenCreated> {
  @override
  final Iterable<Type> types = const [
    RegistrationTokenCreated,
    _$RegistrationTokenCreated,
  ];

  @override
  final String wireName = r'RegistrationTokenCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationTokenCreated object, {
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
    yield r'prefix';
    yield serializers.serialize(
      object.prefix,
      specifiedType: const FullType(String),
    );
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'maxUses';
    yield serializers.serialize(
      object.maxUses,
      specifiedType: const FullType(int),
    );
    yield r'uses';
    yield serializers.serialize(
      object.uses,
      specifiedType: const FullType(int),
    );
    if (object.sourceIdPrefix != null) {
      yield r'sourceIdPrefix';
      yield serializers.serialize(
        object.sourceIdPrefix,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegistrationTokenCreated object, {
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
    required RegistrationTokenCreatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'prefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.prefix = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'maxUses':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.maxUses = valueDes;
          break;
        case r'uses':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.uses = valueDes;
          break;
        case r'sourceIdPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceIdPrefix = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegistrationTokenCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationTokenCreatedBuilder();
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
