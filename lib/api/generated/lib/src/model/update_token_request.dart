//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_token_request.g.dart';

/// UpdateTokenRequest
///
/// Properties:
/// * [licencePolicy] - Licence policy flags (109); null or empty clears the floor
@BuiltValue()
abstract class UpdateTokenRequest
    implements Built<UpdateTokenRequest, UpdateTokenRequestBuilder> {
  /// Licence policy flags (109); null or empty clears the floor
  @BuiltValueField(wireName: r'licencePolicy')
  BuiltList<UpdateTokenRequestLicencePolicyEnum>? get licencePolicy;
  // enum licencePolicyEnum {  no-nc,  no-sa,  redistributable,  };

  UpdateTokenRequest._();

  factory UpdateTokenRequest([void updates(UpdateTokenRequestBuilder b)]) =
      _$UpdateTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTokenRequest> get serializer =>
      _$UpdateTokenRequestSerializer();
}

class _$UpdateTokenRequestSerializer
    implements PrimitiveSerializer<UpdateTokenRequest> {
  @override
  final Iterable<Type> types = const [UpdateTokenRequest, _$UpdateTokenRequest];

  @override
  final String wireName = r'UpdateTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'licencePolicy';
    yield object.licencePolicy == null
        ? null
        : serializers.serialize(
            object.licencePolicy,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(UpdateTokenRequestLicencePolicyEnum),
            ]),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTokenRequest object, {
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
    required UpdateTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'licencePolicy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(UpdateTokenRequestLicencePolicyEnum),
                    ]),
                  )
                  as BuiltList<UpdateTokenRequestLicencePolicyEnum>?;
          if (valueDes == null) continue;
          result.licencePolicy.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTokenRequestBuilder();
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

class UpdateTokenRequestLicencePolicyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'no-nc')
  static const UpdateTokenRequestLicencePolicyEnum noNc =
      _$updateTokenRequestLicencePolicyEnum_noNc;
  @BuiltValueEnumConst(wireName: r'no-sa')
  static const UpdateTokenRequestLicencePolicyEnum noSa =
      _$updateTokenRequestLicencePolicyEnum_noSa;
  @BuiltValueEnumConst(wireName: r'redistributable')
  static const UpdateTokenRequestLicencePolicyEnum redistributable =
      _$updateTokenRequestLicencePolicyEnum_redistributable;

  static Serializer<UpdateTokenRequestLicencePolicyEnum> get serializer =>
      _$updateTokenRequestLicencePolicyEnumSerializer;

  const UpdateTokenRequestLicencePolicyEnum._(String name) : super(name);

  static BuiltSet<UpdateTokenRequestLicencePolicyEnum> get values =>
      _$updateTokenRequestLicencePolicyEnumValues;
  static UpdateTokenRequestLicencePolicyEnum valueOf(String name) =>
      _$updateTokenRequestLicencePolicyEnumValueOf(name);
}
