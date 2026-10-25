// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SinkStatusStateEnum _$sinkStatusStateEnum_RUNNING =
    const SinkStatusStateEnum._('RUNNING');
const SinkStatusStateEnum _$sinkStatusStateEnum_RESYNCING =
    const SinkStatusStateEnum._('RESYNCING');
const SinkStatusStateEnum _$sinkStatusStateEnum_FAILING =
    const SinkStatusStateEnum._('FAILING');
const SinkStatusStateEnum _$sinkStatusStateEnum_STOPPED =
    const SinkStatusStateEnum._('STOPPED');
const SinkStatusStateEnum _$sinkStatusStateEnum_unknownDefaultOpenApi =
    const SinkStatusStateEnum._('unknownDefaultOpenApi');

SinkStatusStateEnum _$sinkStatusStateEnumValueOf(String name) {
  switch (name) {
    case 'RUNNING':
      return _$sinkStatusStateEnum_RUNNING;
    case 'RESYNCING':
      return _$sinkStatusStateEnum_RESYNCING;
    case 'FAILING':
      return _$sinkStatusStateEnum_FAILING;
    case 'STOPPED':
      return _$sinkStatusStateEnum_STOPPED;
    case 'unknownDefaultOpenApi':
      return _$sinkStatusStateEnum_unknownDefaultOpenApi;
    default:
      return _$sinkStatusStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SinkStatusStateEnum> _$sinkStatusStateEnumValues =
    BuiltSet<SinkStatusStateEnum>(const <SinkStatusStateEnum>[
      _$sinkStatusStateEnum_RUNNING,
      _$sinkStatusStateEnum_RESYNCING,
      _$sinkStatusStateEnum_FAILING,
      _$sinkStatusStateEnum_STOPPED,
      _$sinkStatusStateEnum_unknownDefaultOpenApi,
    ]);

Serializer<SinkStatusStateEnum> _$sinkStatusStateEnumSerializer =
    _$SinkStatusStateEnumSerializer();

class _$SinkStatusStateEnumSerializer
    implements PrimitiveSerializer<SinkStatusStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RUNNING': 'RUNNING',
    'RESYNCING': 'RESYNCING',
    'FAILING': 'FAILING',
    'STOPPED': 'STOPPED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RUNNING': 'RUNNING',
    'RESYNCING': 'RESYNCING',
    'FAILING': 'FAILING',
    'STOPPED': 'STOPPED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkStatusStateEnum];
  @override
  final String wireName = 'SinkStatusStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkStatusStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkStatusStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkStatusStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SinkStatus extends SinkStatus {
  @override
  final String sinkId;
  @override
  final SinkStatusStateEnum state;
  @override
  final int? lastSeq;
  @override
  final int? watermarkSeq;
  @override
  final int? lastPublishedSeq;
  @override
  final int? lagSeq;
  @override
  final DateTime? lastDeliveredAt;
  @override
  final String? lastError;
  @override
  final DateTime? failingSince;
  @override
  final int? resyncCount;
  @override
  final int delivered;
  @override
  final int dropped;
  @override
  final SinkStatusDenied denied;
  @override
  final SinkStatusClients? clients;

  factory _$SinkStatus([void Function(SinkStatusBuilder)? updates]) =>
      (SinkStatusBuilder()..update(updates))._build();

  _$SinkStatus._({
    required this.sinkId,
    required this.state,
    this.lastSeq,
    this.watermarkSeq,
    this.lastPublishedSeq,
    this.lagSeq,
    this.lastDeliveredAt,
    this.lastError,
    this.failingSince,
    this.resyncCount,
    required this.delivered,
    required this.dropped,
    required this.denied,
    this.clients,
  }) : super._();
  @override
  SinkStatus rebuild(void Function(SinkStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkStatusBuilder toBuilder() => SinkStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkStatus &&
        sinkId == other.sinkId &&
        state == other.state &&
        lastSeq == other.lastSeq &&
        watermarkSeq == other.watermarkSeq &&
        lastPublishedSeq == other.lastPublishedSeq &&
        lagSeq == other.lagSeq &&
        lastDeliveredAt == other.lastDeliveredAt &&
        lastError == other.lastError &&
        failingSince == other.failingSince &&
        resyncCount == other.resyncCount &&
        delivered == other.delivered &&
        dropped == other.dropped &&
        denied == other.denied &&
        clients == other.clients;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sinkId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, lastSeq.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, lastPublishedSeq.hashCode);
    _$hash = $jc(_$hash, lagSeq.hashCode);
    _$hash = $jc(_$hash, lastDeliveredAt.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jc(_$hash, failingSince.hashCode);
    _$hash = $jc(_$hash, resyncCount.hashCode);
    _$hash = $jc(_$hash, delivered.hashCode);
    _$hash = $jc(_$hash, dropped.hashCode);
    _$hash = $jc(_$hash, denied.hashCode);
    _$hash = $jc(_$hash, clients.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkStatus')
          ..add('sinkId', sinkId)
          ..add('state', state)
          ..add('lastSeq', lastSeq)
          ..add('watermarkSeq', watermarkSeq)
          ..add('lastPublishedSeq', lastPublishedSeq)
          ..add('lagSeq', lagSeq)
          ..add('lastDeliveredAt', lastDeliveredAt)
          ..add('lastError', lastError)
          ..add('failingSince', failingSince)
          ..add('resyncCount', resyncCount)
          ..add('delivered', delivered)
          ..add('dropped', dropped)
          ..add('denied', denied)
          ..add('clients', clients))
        .toString();
  }
}

class SinkStatusBuilder implements Builder<SinkStatus, SinkStatusBuilder> {
  _$SinkStatus? _$v;

  String? _sinkId;
  String? get sinkId => _$this._sinkId;
  set sinkId(String? sinkId) => _$this._sinkId = sinkId;

  SinkStatusStateEnum? _state;
  SinkStatusStateEnum? get state => _$this._state;
  set state(SinkStatusStateEnum? state) => _$this._state = state;

  int? _lastSeq;
  int? get lastSeq => _$this._lastSeq;
  set lastSeq(int? lastSeq) => _$this._lastSeq = lastSeq;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  int? _lastPublishedSeq;
  int? get lastPublishedSeq => _$this._lastPublishedSeq;
  set lastPublishedSeq(int? lastPublishedSeq) =>
      _$this._lastPublishedSeq = lastPublishedSeq;

  int? _lagSeq;
  int? get lagSeq => _$this._lagSeq;
  set lagSeq(int? lagSeq) => _$this._lagSeq = lagSeq;

  DateTime? _lastDeliveredAt;
  DateTime? get lastDeliveredAt => _$this._lastDeliveredAt;
  set lastDeliveredAt(DateTime? lastDeliveredAt) =>
      _$this._lastDeliveredAt = lastDeliveredAt;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  DateTime? _failingSince;
  DateTime? get failingSince => _$this._failingSince;
  set failingSince(DateTime? failingSince) =>
      _$this._failingSince = failingSince;

  int? _resyncCount;
  int? get resyncCount => _$this._resyncCount;
  set resyncCount(int? resyncCount) => _$this._resyncCount = resyncCount;

  int? _delivered;
  int? get delivered => _$this._delivered;
  set delivered(int? delivered) => _$this._delivered = delivered;

  int? _dropped;
  int? get dropped => _$this._dropped;
  set dropped(int? dropped) => _$this._dropped = dropped;

  SinkStatusDeniedBuilder? _denied;
  SinkStatusDeniedBuilder get denied =>
      _$this._denied ??= SinkStatusDeniedBuilder();
  set denied(SinkStatusDeniedBuilder? denied) => _$this._denied = denied;

  SinkStatusClientsBuilder? _clients;
  SinkStatusClientsBuilder get clients =>
      _$this._clients ??= SinkStatusClientsBuilder();
  set clients(SinkStatusClientsBuilder? clients) => _$this._clients = clients;

  SinkStatusBuilder() {
    SinkStatus._defaults(this);
  }

  SinkStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sinkId = $v.sinkId;
      _state = $v.state;
      _lastSeq = $v.lastSeq;
      _watermarkSeq = $v.watermarkSeq;
      _lastPublishedSeq = $v.lastPublishedSeq;
      _lagSeq = $v.lagSeq;
      _lastDeliveredAt = $v.lastDeliveredAt;
      _lastError = $v.lastError;
      _failingSince = $v.failingSince;
      _resyncCount = $v.resyncCount;
      _delivered = $v.delivered;
      _dropped = $v.dropped;
      _denied = $v.denied.toBuilder();
      _clients = $v.clients?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkStatus other) {
    _$v = other as _$SinkStatus;
  }

  @override
  void update(void Function(SinkStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkStatus build() => _build();

  _$SinkStatus _build() {
    _$SinkStatus _$result;
    try {
      _$result =
          _$v ??
          _$SinkStatus._(
            sinkId: BuiltValueNullFieldError.checkNotNull(
              sinkId,
              r'SinkStatus',
              'sinkId',
            ),
            state: BuiltValueNullFieldError.checkNotNull(
              state,
              r'SinkStatus',
              'state',
            ),
            lastSeq: lastSeq,
            watermarkSeq: watermarkSeq,
            lastPublishedSeq: lastPublishedSeq,
            lagSeq: lagSeq,
            lastDeliveredAt: lastDeliveredAt,
            lastError: lastError,
            failingSince: failingSince,
            resyncCount: resyncCount,
            delivered: BuiltValueNullFieldError.checkNotNull(
              delivered,
              r'SinkStatus',
              'delivered',
            ),
            dropped: BuiltValueNullFieldError.checkNotNull(
              dropped,
              r'SinkStatus',
              'dropped',
            ),
            denied: denied.build(),
            clients: _clients?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'denied';
        denied.build();
        _$failedField = 'clients';
        _clients?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SinkStatus',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
