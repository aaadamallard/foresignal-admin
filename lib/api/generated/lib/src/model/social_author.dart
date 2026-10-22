//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_author.g.dart';

/// Post author as the platform returns it; accounts are reporting sources, never profiled (135)
///
/// Properties:
/// * [handle]
/// * [displayName]
/// * [accountId] - Platform account id
/// * [accountCreatedAt]
/// * [followers]
/// * [verified]
@BuiltValue()
abstract class SocialAuthor
    implements Built<SocialAuthor, SocialAuthorBuilder> {
  @BuiltValueField(wireName: r'handle')
  String get handle;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  /// Platform account id
  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  @BuiltValueField(wireName: r'accountCreatedAt')
  DateTime? get accountCreatedAt;

  @BuiltValueField(wireName: r'followers')
  int? get followers;

  @BuiltValueField(wireName: r'verified')
  bool? get verified;

  SocialAuthor._();

  factory SocialAuthor([void updates(SocialAuthorBuilder b)]) = _$SocialAuthor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialAuthorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialAuthor> get serializer => _$SocialAuthorSerializer();
}

class _$SocialAuthorSerializer implements PrimitiveSerializer<SocialAuthor> {
  @override
  final Iterable<Type> types = const [SocialAuthor, _$SocialAuthor];

  @override
  final String wireName = r'SocialAuthor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialAuthor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'handle';
    yield serializers.serialize(
      object.handle,
      specifiedType: const FullType(String),
    );
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(String),
    );
    if (object.accountCreatedAt != null) {
      yield r'accountCreatedAt';
      yield serializers.serialize(
        object.accountCreatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.followers != null) {
      yield r'followers';
      yield serializers.serialize(
        object.followers,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.verified != null) {
      yield r'verified';
      yield serializers.serialize(
        object.verified,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialAuthor object, {
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
    required SocialAuthorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'handle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.handle = valueDes;
          break;
        case r'displayName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'accountId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.accountId = valueDes;
          break;
        case r'accountCreatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.accountCreatedAt = valueDes;
          break;
        case r'followers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.followers = valueDes;
          break;
        case r'verified':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.verified = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialAuthor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialAuthorBuilder();
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
