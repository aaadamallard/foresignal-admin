//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/device_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pairing_claim.g.dart';

/// Claim a pairing code from a device (023)
///
/// Properties:
/// * [code] - XXXX-XXXX (the dash is optional; case-insensitive)
/// * [device]
@BuiltValue()
abstract class PairingClaim
    implements Built<PairingClaim, PairingClaimBuilder> {
  /// XXXX-XXXX (the dash is optional; case-insensitive)
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'device')
  DeviceInfo get device;

  PairingClaim._();

  factory PairingClaim([void updates(PairingClaimBuilder b)]) = _$PairingClaim;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PairingClaimBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PairingClaim> get serializer => _$PairingClaimSerializer();
}

class _$PairingClaimSerializer implements PrimitiveSerializer<PairingClaim> {
  @override
  final Iterable<Type> types = const [PairingClaim, _$PairingClaim];

  @override
  final String wireName = r'PairingClaim';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PairingClaim object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'device';
    yield serializers.serialize(
      object.device,
      specifiedType: const FullType(DeviceInfo),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PairingClaim object, {
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
    required PairingClaimBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.code = valueDes;
          break;
        case r'device':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DeviceInfo),
                  )
                  as DeviceInfo;
          result.device.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PairingClaim deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PairingClaimBuilder();
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
