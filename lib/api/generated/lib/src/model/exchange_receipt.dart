//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_receipt.g.dart';

/// A signed delivery or acknowledgement receipt exchanged with the sending instance
///
/// Properties:
/// * [packageId] - ULID identifier
/// * [type]
/// * [receiverInstanceId]
/// * [principalHandle]
/// * [at]
@BuiltValue()
abstract class ExchangeReceipt
    implements Built<ExchangeReceipt, ExchangeReceiptBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'packageId')
  String get packageId;

  @BuiltValueField(wireName: r'type')
  ExchangeReceiptTypeEnum get type;
  // enum typeEnum {  delivered,  acknowledged,  };

  @BuiltValueField(wireName: r'receiverInstanceId')
  String get receiverInstanceId;

  @BuiltValueField(wireName: r'principalHandle')
  String? get principalHandle;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ExchangeReceipt._();

  factory ExchangeReceipt([void updates(ExchangeReceiptBuilder b)]) =
      _$ExchangeReceipt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExchangeReceiptBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExchangeReceipt> get serializer =>
      _$ExchangeReceiptSerializer();
}

class _$ExchangeReceiptSerializer
    implements PrimitiveSerializer<ExchangeReceipt> {
  @override
  final Iterable<Type> types = const [ExchangeReceipt, _$ExchangeReceipt];

  @override
  final String wireName = r'ExchangeReceipt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExchangeReceipt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'packageId';
    yield serializers.serialize(
      object.packageId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ExchangeReceiptTypeEnum),
    );
    yield r'receiverInstanceId';
    yield serializers.serialize(
      object.receiverInstanceId,
      specifiedType: const FullType(String),
    );
    if (object.principalHandle != null) {
      yield r'principalHandle';
      yield serializers.serialize(
        object.principalHandle,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExchangeReceipt object, {
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
    required ExchangeReceiptBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'packageId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.packageId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExchangeReceiptTypeEnum),
                  )
                  as ExchangeReceiptTypeEnum;
          result.type = valueDes;
          break;
        case r'receiverInstanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.receiverInstanceId = valueDes;
          break;
        case r'principalHandle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principalHandle = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExchangeReceipt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExchangeReceiptBuilder();
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

class ExchangeReceiptTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'delivered')
  static const ExchangeReceiptTypeEnum delivered =
      _$exchangeReceiptTypeEnum_delivered;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const ExchangeReceiptTypeEnum acknowledged =
      _$exchangeReceiptTypeEnum_acknowledged;

  static Serializer<ExchangeReceiptTypeEnum> get serializer =>
      _$exchangeReceiptTypeEnumSerializer;

  const ExchangeReceiptTypeEnum._(String name) : super(name);

  static BuiltSet<ExchangeReceiptTypeEnum> get values =>
      _$exchangeReceiptTypeEnumValues;
  static ExchangeReceiptTypeEnum valueOf(String name) =>
      _$exchangeReceiptTypeEnumValueOf(name);
}
