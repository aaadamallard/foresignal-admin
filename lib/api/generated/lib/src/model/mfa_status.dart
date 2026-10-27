//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/mfa_recovery_codes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mfa_status.g.dart';

/// The caller's MFA state
///
/// Properties:
/// * [enabled]
/// * [enrolledAt]
/// * [required_] - True when a role the user holds (Admin/Operator) requires MFA
/// * [recoveryCodes]
@BuiltValue()
abstract class MfaStatus implements Built<MfaStatus, MfaStatusBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'enrolledAt')
  DateTime? get enrolledAt;

  /// True when a role the user holds (Admin/Operator) requires MFA
  @BuiltValueField(wireName: r'required')
  bool? get required_;

  @BuiltValueField(wireName: r'recoveryCodes')
  MfaRecoveryCodes? get recoveryCodes;

  MfaStatus._();

  factory MfaStatus([void updates(MfaStatusBuilder b)]) = _$MfaStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MfaStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MfaStatus> get serializer => _$MfaStatusSerializer();
}

class _$MfaStatusSerializer implements PrimitiveSerializer<MfaStatus> {
  @override
  final Iterable<Type> types = const [MfaStatus, _$MfaStatus];

  @override
  final String wireName = r'MfaStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MfaStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.enrolledAt != null) {
      yield r'enrolledAt';
      yield serializers.serialize(
        object.enrolledAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.recoveryCodes != null) {
      yield r'recoveryCodes';
      yield serializers.serialize(
        object.recoveryCodes,
        specifiedType: const FullType(MfaRecoveryCodes),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MfaStatus object, {
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
    required MfaStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'enrolledAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.enrolledAt = valueDes;
          break;
        case r'required':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.required_ = valueDes;
          break;
        case r'recoveryCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(MfaRecoveryCodes),
                  )
                  as MfaRecoveryCodes?;
          if (valueDes == null) continue;
          result.recoveryCodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MfaStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MfaStatusBuilder();
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
