//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/session_token.dart';
import 'package:foresignal_api/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setup_result.g.dart';

/// Result of first-run setup
///
/// Properties:
/// * [user]
/// * [session] - A session for the new admin; null only if the sign-in asked for a second factor
@BuiltValue()
abstract class SetupResult implements Built<SetupResult, SetupResultBuilder> {
  @BuiltValueField(wireName: r'user')
  User get user;

  /// A session for the new admin; null only if the sign-in asked for a second factor
  @BuiltValueField(wireName: r'session')
  SessionToken? get session;

  SetupResult._();

  factory SetupResult([void updates(SetupResultBuilder b)]) = _$SetupResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetupResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetupResult> get serializer => _$SetupResultSerializer();
}

class _$SetupResultSerializer implements PrimitiveSerializer<SetupResult> {
  @override
  final Iterable<Type> types = const [SetupResult, _$SetupResult];

  @override
  final String wireName = r'SetupResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetupResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(User),
    );
    if (object.session != null) {
      yield r'session';
      yield serializers.serialize(
        object.session,
        specifiedType: const FullType.nullable(SessionToken),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SetupResult object, {
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
    required SetupResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(User),
                  )
                  as User;
          result.user.replace(valueDes);
          break;
        case r'session':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SessionToken),
                  )
                  as SessionToken?;
          if (valueDes == null) continue;
          result.session.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetupResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetupResultBuilder();
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
