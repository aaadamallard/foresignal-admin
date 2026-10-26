//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setup_request_admin.g.dart';

/// The first admin to create
///
/// Properties:
/// * [email]
/// * [fullName]
/// * [password]
@BuiltValue()
abstract class SetupRequestAdmin
    implements Built<SetupRequestAdmin, SetupRequestAdminBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'fullName')
  String get fullName;

  @BuiltValueField(wireName: r'password')
  String get password;

  SetupRequestAdmin._();

  factory SetupRequestAdmin([void updates(SetupRequestAdminBuilder b)]) =
      _$SetupRequestAdmin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetupRequestAdminBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetupRequestAdmin> get serializer =>
      _$SetupRequestAdminSerializer();
}

class _$SetupRequestAdminSerializer
    implements PrimitiveSerializer<SetupRequestAdmin> {
  @override
  final Iterable<Type> types = const [SetupRequestAdmin, _$SetupRequestAdmin];

  @override
  final String wireName = r'SetupRequestAdmin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetupRequestAdmin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'fullName';
    yield serializers.serialize(
      object.fullName,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetupRequestAdmin object, {
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
    required SetupRequestAdminBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.email = valueDes;
          break;
        case r'fullName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.fullName = valueDes;
          break;
        case r'password':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetupRequestAdmin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetupRequestAdminBuilder();
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
