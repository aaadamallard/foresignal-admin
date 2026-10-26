//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session.g.dart';

/// An active session of the calling user (user_session, 166)
///
/// Properties:
/// * [id]
/// * [tokenPrefix]
/// * [createdAt]
/// * [lastSeenAt]
/// * [expiresAt]
/// * [idleExpiresAt]
/// * [userAgent]
/// * [ipAddress] - Source IP at creation
/// * [current] - True for the session making this request
@BuiltValue()
abstract class Session implements Built<Session, SessionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tokenPrefix')
  String? get tokenPrefix;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'lastSeenAt')
  DateTime? get lastSeenAt;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'idleExpiresAt')
  DateTime? get idleExpiresAt;

  @BuiltValueField(wireName: r'userAgent')
  String? get userAgent;

  /// Source IP at creation
  @BuiltValueField(wireName: r'ipAddress')
  String? get ipAddress;

  /// True for the session making this request
  @BuiltValueField(wireName: r'current')
  bool get current;

  Session._();

  factory Session([void updates(SessionBuilder b)]) = _$Session;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Session> get serializer => _$SessionSerializer();
}

class _$SessionSerializer implements PrimitiveSerializer<Session> {
  @override
  final Iterable<Type> types = const [Session, _$Session];

  @override
  final String wireName = r'Session';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Session object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.tokenPrefix != null) {
      yield r'tokenPrefix';
      yield serializers.serialize(
        object.tokenPrefix,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastSeenAt != null) {
      yield r'lastSeenAt';
      yield serializers.serialize(
        object.lastSeenAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.idleExpiresAt != null) {
      yield r'idleExpiresAt';
      yield serializers.serialize(
        object.idleExpiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.userAgent != null) {
      yield r'userAgent';
      yield serializers.serialize(
        object.userAgent,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ipAddress != null) {
      yield r'ipAddress';
      yield serializers.serialize(
        object.ipAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'current';
    yield serializers.serialize(
      object.current,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Session object, {
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
    required SessionBuilder result,
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
        case r'tokenPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tokenPrefix = valueDes;
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
        case r'lastSeenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastSeenAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'idleExpiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.idleExpiresAt = valueDes;
          break;
        case r'userAgent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userAgent = valueDes;
          break;
        case r'ipAddress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ipAddress = valueDes;
          break;
        case r'current':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.current = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Session deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionBuilder();
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
