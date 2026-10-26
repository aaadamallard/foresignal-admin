//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_delete_result.g.dart';

/// Outcome of deleting a user, including what became of the config they owned (168)
///
/// Properties:
/// * [deletedUserId]
/// * [ownedConfigDisposition] - Default reassigns the user's owned triggers, channels, providers and views to an admin
/// * [reassignedTo]
@BuiltValue()
abstract class UserDeleteResult
    implements Built<UserDeleteResult, UserDeleteResultBuilder> {
  @BuiltValueField(wireName: r'deletedUserId')
  String get deletedUserId;

  /// Default reassigns the user's owned triggers, channels, providers and views to an admin
  @BuiltValueField(wireName: r'ownedConfigDisposition')
  String get ownedConfigDisposition;

  @BuiltValueField(wireName: r'reassignedTo')
  String? get reassignedTo;

  UserDeleteResult._();

  factory UserDeleteResult([void updates(UserDeleteResultBuilder b)]) =
      _$UserDeleteResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserDeleteResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserDeleteResult> get serializer =>
      _$UserDeleteResultSerializer();
}

class _$UserDeleteResultSerializer
    implements PrimitiveSerializer<UserDeleteResult> {
  @override
  final Iterable<Type> types = const [UserDeleteResult, _$UserDeleteResult];

  @override
  final String wireName = r'UserDeleteResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserDeleteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'deletedUserId';
    yield serializers.serialize(
      object.deletedUserId,
      specifiedType: const FullType(String),
    );
    yield r'ownedConfigDisposition';
    yield serializers.serialize(
      object.ownedConfigDisposition,
      specifiedType: const FullType(String),
    );
    if (object.reassignedTo != null) {
      yield r'reassignedTo';
      yield serializers.serialize(
        object.reassignedTo,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserDeleteResult object, {
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
    required UserDeleteResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deletedUserId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.deletedUserId = valueDes;
          break;
        case r'ownedConfigDisposition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ownedConfigDisposition = valueDes;
          break;
        case r'reassignedTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reassignedTo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserDeleteResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDeleteResultBuilder();
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
