//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mfa_recovery_codes.g.dart';

/// Single-use recovery codes, shown once at generation (D1/187)
///
/// Properties:
/// * [codes] - Ten single-use codes (xxxxx-xxxxx); stored hashed, accepted case-insensitively with or without the dash
/// * [generatedAt]
@BuiltValue()
abstract class MfaRecoveryCodes
    implements Built<MfaRecoveryCodes, MfaRecoveryCodesBuilder> {
  /// Ten single-use codes (xxxxx-xxxxx); stored hashed, accepted case-insensitively with or without the dash
  @BuiltValueField(wireName: r'codes')
  BuiltList<String> get codes;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  MfaRecoveryCodes._();

  factory MfaRecoveryCodes([void updates(MfaRecoveryCodesBuilder b)]) =
      _$MfaRecoveryCodes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MfaRecoveryCodesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MfaRecoveryCodes> get serializer =>
      _$MfaRecoveryCodesSerializer();
}

class _$MfaRecoveryCodesSerializer
    implements PrimitiveSerializer<MfaRecoveryCodes> {
  @override
  final Iterable<Type> types = const [MfaRecoveryCodes, _$MfaRecoveryCodes];

  @override
  final String wireName = r'MfaRecoveryCodes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MfaRecoveryCodes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'codes';
    yield serializers.serialize(
      object.codes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MfaRecoveryCodes object, {
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
    required MfaRecoveryCodesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'codes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.codes.replace(valueDes);
          break;
        case r'generatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.generatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MfaRecoveryCodes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MfaRecoveryCodesBuilder();
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
