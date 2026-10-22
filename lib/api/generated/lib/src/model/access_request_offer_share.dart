//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_request_offer_share.g.dart';

/// Offer to share the requester's chronicle
///
/// Properties:
/// * [chronicleId]
@BuiltValue()
abstract class AccessRequestOfferShare
    implements Built<AccessRequestOfferShare, AccessRequestOfferShareBuilder> {
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  AccessRequestOfferShare._();

  factory AccessRequestOfferShare([
    void updates(AccessRequestOfferShareBuilder b),
  ]) = _$AccessRequestOfferShare;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessRequestOfferShareBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessRequestOfferShare> get serializer =>
      _$AccessRequestOfferShareSerializer();
}

class _$AccessRequestOfferShareSerializer
    implements PrimitiveSerializer<AccessRequestOfferShare> {
  @override
  final Iterable<Type> types = const [
    AccessRequestOfferShare,
    _$AccessRequestOfferShare,
  ];

  @override
  final String wireName = r'AccessRequestOfferShare';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessRequestOfferShare object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessRequestOfferShare object, {
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
    required AccessRequestOfferShareBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chronicleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.chronicleId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessRequestOfferShare deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessRequestOfferShareBuilder();
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
