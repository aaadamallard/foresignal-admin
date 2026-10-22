//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/access_request_offer_share.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/access_request_grant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_request.g.dart';

/// A request for access to a related chronicle; reveals only the requester's handle, message and optional share offer
///
/// Properties:
/// * [id] - ULID identifier
/// * [linkId] - ULID identifier
/// * [direction]
/// * [chronicleId] - Target chronicle (incoming requests only)
/// * [requesterHandle]
/// * [requesterInstanceId]
/// * [message]
/// * [offerShare]
/// * [status]
/// * [createdAt]
/// * [decidedAt]
/// * [grant]
@BuiltValue()
abstract class AccessRequest
    implements Built<AccessRequest, AccessRequestBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'linkId')
  String get linkId;

  @BuiltValueField(wireName: r'direction')
  AccessRequestDirectionEnum get direction;
  // enum directionEnum {  incoming,  outgoing,  };

  /// Target chronicle (incoming requests only)
  @BuiltValueField(wireName: r'chronicleId')
  String? get chronicleId;

  @BuiltValueField(wireName: r'requesterHandle')
  String get requesterHandle;

  @BuiltValueField(wireName: r'requesterInstanceId')
  String? get requesterInstanceId;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'offerShare')
  AccessRequestOfferShare? get offerShare;

  @BuiltValueField(wireName: r'status')
  AccessRequestStatusEnum get status;
  // enum statusEnum {  pending,  granted,  declined,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'decidedAt')
  DateTime? get decidedAt;

  @BuiltValueField(wireName: r'grant')
  AccessRequestGrant? get grant;

  AccessRequest._();

  factory AccessRequest([void updates(AccessRequestBuilder b)]) =
      _$AccessRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessRequest> get serializer =>
      _$AccessRequestSerializer();
}

class _$AccessRequestSerializer implements PrimitiveSerializer<AccessRequest> {
  @override
  final Iterable<Type> types = const [AccessRequest, _$AccessRequest];

  @override
  final String wireName = r'AccessRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'linkId';
    yield serializers.serialize(
      object.linkId,
      specifiedType: const FullType(String),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(AccessRequestDirectionEnum),
    );
    if (object.chronicleId != null) {
      yield r'chronicleId';
      yield serializers.serialize(
        object.chronicleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'requesterHandle';
    yield serializers.serialize(
      object.requesterHandle,
      specifiedType: const FullType(String),
    );
    if (object.requesterInstanceId != null) {
      yield r'requesterInstanceId';
      yield serializers.serialize(
        object.requesterInstanceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.offerShare != null) {
      yield r'offerShare';
      yield serializers.serialize(
        object.offerShare,
        specifiedType: const FullType.nullable(AccessRequestOfferShare),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AccessRequestStatusEnum),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.decidedAt != null) {
      yield r'decidedAt';
      yield serializers.serialize(
        object.decidedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.grant != null) {
      yield r'grant';
      yield serializers.serialize(
        object.grant,
        specifiedType: const FullType.nullable(AccessRequestGrant),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessRequest object, {
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
    required AccessRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'linkId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.linkId = valueDes;
          break;
        case r'direction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AccessRequestDirectionEnum),
                  )
                  as AccessRequestDirectionEnum;
          result.direction = valueDes;
          break;
        case r'chronicleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.chronicleId = valueDes;
          break;
        case r'requesterHandle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.requesterHandle = valueDes;
          break;
        case r'requesterInstanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.requesterInstanceId = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'offerShare':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AccessRequestOfferShare,
                    ),
                  )
                  as AccessRequestOfferShare?;
          if (valueDes == null) continue;
          result.offerShare.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AccessRequestStatusEnum),
                  )
                  as AccessRequestStatusEnum;
          result.status = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'decidedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.decidedAt = valueDes;
          break;
        case r'grant':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AccessRequestGrant),
                  )
                  as AccessRequestGrant?;
          if (valueDes == null) continue;
          result.grant.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessRequestBuilder();
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

class AccessRequestDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'incoming')
  static const AccessRequestDirectionEnum incoming =
      _$accessRequestDirectionEnum_incoming;
  @BuiltValueEnumConst(wireName: r'outgoing')
  static const AccessRequestDirectionEnum outgoing =
      _$accessRequestDirectionEnum_outgoing;

  static Serializer<AccessRequestDirectionEnum> get serializer =>
      _$accessRequestDirectionEnumSerializer;

  const AccessRequestDirectionEnum._(String name) : super(name);

  static BuiltSet<AccessRequestDirectionEnum> get values =>
      _$accessRequestDirectionEnumValues;
  static AccessRequestDirectionEnum valueOf(String name) =>
      _$accessRequestDirectionEnumValueOf(name);
}

class AccessRequestStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const AccessRequestStatusEnum pending =
      _$accessRequestStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'granted')
  static const AccessRequestStatusEnum granted =
      _$accessRequestStatusEnum_granted;
  @BuiltValueEnumConst(wireName: r'declined')
  static const AccessRequestStatusEnum declined =
      _$accessRequestStatusEnum_declined;

  static Serializer<AccessRequestStatusEnum> get serializer =>
      _$accessRequestStatusEnumSerializer;

  const AccessRequestStatusEnum._(String name) : super(name);

  static BuiltSet<AccessRequestStatusEnum> get values =>
      _$accessRequestStatusEnumValues;
  static AccessRequestStatusEnum valueOf(String name) =>
      _$accessRequestStatusEnumValueOf(name);
}
