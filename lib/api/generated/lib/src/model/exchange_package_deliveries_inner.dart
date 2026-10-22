//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_package_deliveries_inner.g.dart';

/// Delivery to a peer
///
/// Properties:
/// * [instanceId]
/// * [peerId]
/// * [status]
/// * [at]
/// * [error]
@BuiltValue()
abstract class ExchangePackageDeliveriesInner
    implements
        Built<
          ExchangePackageDeliveriesInner,
          ExchangePackageDeliveriesInnerBuilder
        > {
  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'peerId')
  String? get peerId;

  @BuiltValueField(wireName: r'status')
  ExchangePackageDeliveriesInnerStatusEnum get status;
  // enum statusEnum {  pending,  delivered,  acknowledged,  failed,  };

  @BuiltValueField(wireName: r'at')
  DateTime? get at;

  @BuiltValueField(wireName: r'error')
  String? get error;

  ExchangePackageDeliveriesInner._();

  factory ExchangePackageDeliveriesInner([
    void updates(ExchangePackageDeliveriesInnerBuilder b),
  ]) = _$ExchangePackageDeliveriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExchangePackageDeliveriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExchangePackageDeliveriesInner> get serializer =>
      _$ExchangePackageDeliveriesInnerSerializer();
}

class _$ExchangePackageDeliveriesInnerSerializer
    implements PrimitiveSerializer<ExchangePackageDeliveriesInner> {
  @override
  final Iterable<Type> types = const [
    ExchangePackageDeliveriesInner,
    _$ExchangePackageDeliveriesInner,
  ];

  @override
  final String wireName = r'ExchangePackageDeliveriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExchangePackageDeliveriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    if (object.peerId != null) {
      yield r'peerId';
      yield serializers.serialize(
        object.peerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExchangePackageDeliveriesInnerStatusEnum),
    );
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExchangePackageDeliveriesInner object, {
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
    required ExchangePackageDeliveriesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.instanceId = valueDes;
          break;
        case r'peerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.peerId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ExchangePackageDeliveriesInnerStatusEnum,
                    ),
                  )
                  as ExchangePackageDeliveriesInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.at = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExchangePackageDeliveriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExchangePackageDeliveriesInnerBuilder();
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

class ExchangePackageDeliveriesInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const ExchangePackageDeliveriesInnerStatusEnum pending =
      _$exchangePackageDeliveriesInnerStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const ExchangePackageDeliveriesInnerStatusEnum delivered =
      _$exchangePackageDeliveriesInnerStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const ExchangePackageDeliveriesInnerStatusEnum acknowledged =
      _$exchangePackageDeliveriesInnerStatusEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'failed')
  static const ExchangePackageDeliveriesInnerStatusEnum failed =
      _$exchangePackageDeliveriesInnerStatusEnum_failed;

  static Serializer<ExchangePackageDeliveriesInnerStatusEnum> get serializer =>
      _$exchangePackageDeliveriesInnerStatusEnumSerializer;

  const ExchangePackageDeliveriesInnerStatusEnum._(String name) : super(name);

  static BuiltSet<ExchangePackageDeliveriesInnerStatusEnum> get values =>
      _$exchangePackageDeliveriesInnerStatusEnumValues;
  static ExchangePackageDeliveriesInnerStatusEnum valueOf(String name) =>
      _$exchangePackageDeliveriesInnerStatusEnumValueOf(name);
}
