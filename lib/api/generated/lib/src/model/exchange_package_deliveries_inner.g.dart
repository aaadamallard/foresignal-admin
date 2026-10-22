// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_package_deliveries_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExchangePackageDeliveriesInnerStatusEnum
    _$exchangePackageDeliveriesInnerStatusEnum_pending =
    const ExchangePackageDeliveriesInnerStatusEnum._('pending');
const ExchangePackageDeliveriesInnerStatusEnum
    _$exchangePackageDeliveriesInnerStatusEnum_delivered =
    const ExchangePackageDeliveriesInnerStatusEnum._('delivered');
const ExchangePackageDeliveriesInnerStatusEnum
    _$exchangePackageDeliveriesInnerStatusEnum_acknowledged =
    const ExchangePackageDeliveriesInnerStatusEnum._('acknowledged');
const ExchangePackageDeliveriesInnerStatusEnum
    _$exchangePackageDeliveriesInnerStatusEnum_failed =
    const ExchangePackageDeliveriesInnerStatusEnum._('failed');

ExchangePackageDeliveriesInnerStatusEnum
    _$exchangePackageDeliveriesInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$exchangePackageDeliveriesInnerStatusEnum_pending;
    case 'delivered':
      return _$exchangePackageDeliveriesInnerStatusEnum_delivered;
    case 'acknowledged':
      return _$exchangePackageDeliveriesInnerStatusEnum_acknowledged;
    case 'failed':
      return _$exchangePackageDeliveriesInnerStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExchangePackageDeliveriesInnerStatusEnum>
    _$exchangePackageDeliveriesInnerStatusEnumValues = BuiltSet<
        ExchangePackageDeliveriesInnerStatusEnum>(const <ExchangePackageDeliveriesInnerStatusEnum>[
  _$exchangePackageDeliveriesInnerStatusEnum_pending,
  _$exchangePackageDeliveriesInnerStatusEnum_delivered,
  _$exchangePackageDeliveriesInnerStatusEnum_acknowledged,
  _$exchangePackageDeliveriesInnerStatusEnum_failed,
]);

Serializer<ExchangePackageDeliveriesInnerStatusEnum>
    _$exchangePackageDeliveriesInnerStatusEnumSerializer =
    _$ExchangePackageDeliveriesInnerStatusEnumSerializer();

class _$ExchangePackageDeliveriesInnerStatusEnumSerializer
    implements PrimitiveSerializer<ExchangePackageDeliveriesInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'delivered': 'delivered',
    'acknowledged': 'acknowledged',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'delivered': 'delivered',
    'acknowledged': 'acknowledged',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ExchangePackageDeliveriesInnerStatusEnum
  ];
  @override
  final String wireName = 'ExchangePackageDeliveriesInnerStatusEnum';

  @override
  Object serialize(Serializers serializers,
          ExchangePackageDeliveriesInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExchangePackageDeliveriesInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExchangePackageDeliveriesInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExchangePackageDeliveriesInner extends ExchangePackageDeliveriesInner {
  @override
  final String instanceId;
  @override
  final String? peerId;
  @override
  final ExchangePackageDeliveriesInnerStatusEnum status;
  @override
  final DateTime? at;
  @override
  final String? error;

  factory _$ExchangePackageDeliveriesInner(
          [void Function(ExchangePackageDeliveriesInnerBuilder)? updates]) =>
      (ExchangePackageDeliveriesInnerBuilder()..update(updates))._build();

  _$ExchangePackageDeliveriesInner._(
      {required this.instanceId,
      this.peerId,
      required this.status,
      this.at,
      this.error})
      : super._();
  @override
  ExchangePackageDeliveriesInner rebuild(
          void Function(ExchangePackageDeliveriesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExchangePackageDeliveriesInnerBuilder toBuilder() =>
      ExchangePackageDeliveriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangePackageDeliveriesInner &&
        instanceId == other.instanceId &&
        peerId == other.peerId &&
        status == other.status &&
        at == other.at &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, peerId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExchangePackageDeliveriesInner')
          ..add('instanceId', instanceId)
          ..add('peerId', peerId)
          ..add('status', status)
          ..add('at', at)
          ..add('error', error))
        .toString();
  }
}

class ExchangePackageDeliveriesInnerBuilder
    implements
        Builder<ExchangePackageDeliveriesInner,
            ExchangePackageDeliveriesInnerBuilder> {
  _$ExchangePackageDeliveriesInner? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _peerId;
  String? get peerId => _$this._peerId;
  set peerId(String? peerId) => _$this._peerId = peerId;

  ExchangePackageDeliveriesInnerStatusEnum? _status;
  ExchangePackageDeliveriesInnerStatusEnum? get status => _$this._status;
  set status(ExchangePackageDeliveriesInnerStatusEnum? status) =>
      _$this._status = status;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ExchangePackageDeliveriesInnerBuilder() {
    ExchangePackageDeliveriesInner._defaults(this);
  }

  ExchangePackageDeliveriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _peerId = $v.peerId;
      _status = $v.status;
      _at = $v.at;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangePackageDeliveriesInner other) {
    _$v = other as _$ExchangePackageDeliveriesInner;
  }

  @override
  void update(void Function(ExchangePackageDeliveriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExchangePackageDeliveriesInner build() => _build();

  _$ExchangePackageDeliveriesInner _build() {
    final _$result = _$v ??
        _$ExchangePackageDeliveriesInner._(
          instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId, r'ExchangePackageDeliveriesInner', 'instanceId'),
          peerId: peerId,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ExchangePackageDeliveriesInner', 'status'),
          at: at,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
