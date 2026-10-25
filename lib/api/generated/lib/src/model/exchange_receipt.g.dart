// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_receipt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExchangeReceiptTypeEnum _$exchangeReceiptTypeEnum_delivered =
    const ExchangeReceiptTypeEnum._('delivered');
const ExchangeReceiptTypeEnum _$exchangeReceiptTypeEnum_acknowledged =
    const ExchangeReceiptTypeEnum._('acknowledged');
const ExchangeReceiptTypeEnum _$exchangeReceiptTypeEnum_unknownDefaultOpenApi =
    const ExchangeReceiptTypeEnum._('unknownDefaultOpenApi');

ExchangeReceiptTypeEnum _$exchangeReceiptTypeEnumValueOf(String name) {
  switch (name) {
    case 'delivered':
      return _$exchangeReceiptTypeEnum_delivered;
    case 'acknowledged':
      return _$exchangeReceiptTypeEnum_acknowledged;
    case 'unknownDefaultOpenApi':
      return _$exchangeReceiptTypeEnum_unknownDefaultOpenApi;
    default:
      return _$exchangeReceiptTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExchangeReceiptTypeEnum> _$exchangeReceiptTypeEnumValues =
    BuiltSet<ExchangeReceiptTypeEnum>(const <ExchangeReceiptTypeEnum>[
      _$exchangeReceiptTypeEnum_delivered,
      _$exchangeReceiptTypeEnum_acknowledged,
      _$exchangeReceiptTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ExchangeReceiptTypeEnum> _$exchangeReceiptTypeEnumSerializer =
    _$ExchangeReceiptTypeEnumSerializer();

class _$ExchangeReceiptTypeEnumSerializer
    implements PrimitiveSerializer<ExchangeReceiptTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'delivered': 'delivered',
    'acknowledged': 'acknowledged',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'delivered': 'delivered',
    'acknowledged': 'acknowledged',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExchangeReceiptTypeEnum];
  @override
  final String wireName = 'ExchangeReceiptTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExchangeReceiptTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExchangeReceiptTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExchangeReceiptTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExchangeReceipt extends ExchangeReceipt {
  @override
  final String packageId;
  @override
  final ExchangeReceiptTypeEnum type;
  @override
  final String receiverInstanceId;
  @override
  final String? principalHandle;
  @override
  final DateTime at;

  factory _$ExchangeReceipt([void Function(ExchangeReceiptBuilder)? updates]) =>
      (ExchangeReceiptBuilder()..update(updates))._build();

  _$ExchangeReceipt._({
    required this.packageId,
    required this.type,
    required this.receiverInstanceId,
    this.principalHandle,
    required this.at,
  }) : super._();
  @override
  ExchangeReceipt rebuild(void Function(ExchangeReceiptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExchangeReceiptBuilder toBuilder() => ExchangeReceiptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangeReceipt &&
        packageId == other.packageId &&
        type == other.type &&
        receiverInstanceId == other.receiverInstanceId &&
        principalHandle == other.principalHandle &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, packageId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, receiverInstanceId.hashCode);
    _$hash = $jc(_$hash, principalHandle.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExchangeReceipt')
          ..add('packageId', packageId)
          ..add('type', type)
          ..add('receiverInstanceId', receiverInstanceId)
          ..add('principalHandle', principalHandle)
          ..add('at', at))
        .toString();
  }
}

class ExchangeReceiptBuilder
    implements Builder<ExchangeReceipt, ExchangeReceiptBuilder> {
  _$ExchangeReceipt? _$v;

  String? _packageId;
  String? get packageId => _$this._packageId;
  set packageId(String? packageId) => _$this._packageId = packageId;

  ExchangeReceiptTypeEnum? _type;
  ExchangeReceiptTypeEnum? get type => _$this._type;
  set type(ExchangeReceiptTypeEnum? type) => _$this._type = type;

  String? _receiverInstanceId;
  String? get receiverInstanceId => _$this._receiverInstanceId;
  set receiverInstanceId(String? receiverInstanceId) =>
      _$this._receiverInstanceId = receiverInstanceId;

  String? _principalHandle;
  String? get principalHandle => _$this._principalHandle;
  set principalHandle(String? principalHandle) =>
      _$this._principalHandle = principalHandle;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ExchangeReceiptBuilder() {
    ExchangeReceipt._defaults(this);
  }

  ExchangeReceiptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _packageId = $v.packageId;
      _type = $v.type;
      _receiverInstanceId = $v.receiverInstanceId;
      _principalHandle = $v.principalHandle;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangeReceipt other) {
    _$v = other as _$ExchangeReceipt;
  }

  @override
  void update(void Function(ExchangeReceiptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExchangeReceipt build() => _build();

  _$ExchangeReceipt _build() {
    final _$result =
        _$v ??
        _$ExchangeReceipt._(
          packageId: BuiltValueNullFieldError.checkNotNull(
            packageId,
            r'ExchangeReceipt',
            'packageId',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'ExchangeReceipt',
            'type',
          ),
          receiverInstanceId: BuiltValueNullFieldError.checkNotNull(
            receiverInstanceId,
            r'ExchangeReceipt',
            'receiverInstanceId',
          ),
          principalHandle: principalHandle,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'ExchangeReceipt',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
