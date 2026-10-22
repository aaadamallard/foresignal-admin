//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_token_input.g.dart';

/// Create a registration token
///
/// Properties:
/// * [name]
/// * [expiresAt]
/// * [maxUses]
/// * [sourceIdPrefix] - Only manifests whose source.id starts with this prefix
@BuiltValue()
abstract class RegistrationTokenInput
    implements Built<RegistrationTokenInput, RegistrationTokenInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'maxUses')
  int? get maxUses;

  /// Only manifests whose source.id starts with this prefix
  @BuiltValueField(wireName: r'sourceIdPrefix')
  String? get sourceIdPrefix;

  RegistrationTokenInput._();

  factory RegistrationTokenInput([
    void updates(RegistrationTokenInputBuilder b),
  ]) = _$RegistrationTokenInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationTokenInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationTokenInput> get serializer =>
      _$RegistrationTokenInputSerializer();
}

class _$RegistrationTokenInputSerializer
    implements PrimitiveSerializer<RegistrationTokenInput> {
  @override
  final Iterable<Type> types = const [
    RegistrationTokenInput,
    _$RegistrationTokenInput,
  ];

  @override
  final String wireName = r'RegistrationTokenInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationTokenInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.maxUses != null) {
      yield r'maxUses';
      yield serializers.serialize(
        object.maxUses,
        specifiedType: const FullType(int),
      );
    }
    if (object.sourceIdPrefix != null) {
      yield r'sourceIdPrefix';
      yield serializers.serialize(
        object.sourceIdPrefix,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegistrationTokenInput object, {
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
    required RegistrationTokenInputBuilder result,
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
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxUses = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegistrationTokenInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationTokenInputBuilder();
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
