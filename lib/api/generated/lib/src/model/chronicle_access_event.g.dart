// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_access_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleAccessEventStatusEnum _$chronicleAccessEventStatusEnum_pending =
    const ChronicleAccessEventStatusEnum._('pending');
const ChronicleAccessEventStatusEnum _$chronicleAccessEventStatusEnum_granted =
    const ChronicleAccessEventStatusEnum._('granted');
const ChronicleAccessEventStatusEnum _$chronicleAccessEventStatusEnum_declined =
    const ChronicleAccessEventStatusEnum._('declined');

ChronicleAccessEventStatusEnum _$chronicleAccessEventStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'pending':
      return _$chronicleAccessEventStatusEnum_pending;
    case 'granted':
      return _$chronicleAccessEventStatusEnum_granted;
    case 'declined':
      return _$chronicleAccessEventStatusEnum_declined;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleAccessEventStatusEnum>
    _$chronicleAccessEventStatusEnumValues = BuiltSet<
        ChronicleAccessEventStatusEnum>(const <ChronicleAccessEventStatusEnum>[
  _$chronicleAccessEventStatusEnum_pending,
  _$chronicleAccessEventStatusEnum_granted,
  _$chronicleAccessEventStatusEnum_declined,
]);

Serializer<ChronicleAccessEventStatusEnum>
    _$chronicleAccessEventStatusEnumSerializer =
    _$ChronicleAccessEventStatusEnumSerializer();

class _$ChronicleAccessEventStatusEnumSerializer
    implements PrimitiveSerializer<ChronicleAccessEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'granted': 'granted',
    'declined': 'declined',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'granted': 'granted',
    'declined': 'declined',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleAccessEventStatusEnum];
  @override
  final String wireName = 'ChronicleAccessEventStatusEnum';

  @override
  Object serialize(
          Serializers serializers, ChronicleAccessEventStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChronicleAccessEventStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChronicleAccessEventStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChronicleAccessEvent extends ChronicleAccessEvent {
  @override
  final String requestId;
  @override
  final String linkId;
  @override
  final ChronicleAccessEventStatusEnum status;
  @override
  final String? requesterHandle;
  @override
  final String? message;
  @override
  final String? chronicleId;
  @override
  final DateTime at;

  factory _$ChronicleAccessEvent(
          [void Function(ChronicleAccessEventBuilder)? updates]) =>
      (ChronicleAccessEventBuilder()..update(updates))._build();

  _$ChronicleAccessEvent._(
      {required this.requestId,
      required this.linkId,
      required this.status,
      this.requesterHandle,
      this.message,
      this.chronicleId,
      required this.at})
      : super._();
  @override
  ChronicleAccessEvent rebuild(
          void Function(ChronicleAccessEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleAccessEventBuilder toBuilder() =>
      ChronicleAccessEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleAccessEvent &&
        requestId == other.requestId &&
        linkId == other.linkId &&
        status == other.status &&
        requesterHandle == other.requesterHandle &&
        message == other.message &&
        chronicleId == other.chronicleId &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, requesterHandle.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleAccessEvent')
          ..add('requestId', requestId)
          ..add('linkId', linkId)
          ..add('status', status)
          ..add('requesterHandle', requesterHandle)
          ..add('message', message)
          ..add('chronicleId', chronicleId)
          ..add('at', at))
        .toString();
  }
}

class ChronicleAccessEventBuilder
    implements Builder<ChronicleAccessEvent, ChronicleAccessEventBuilder> {
  _$ChronicleAccessEvent? _$v;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  ChronicleAccessEventStatusEnum? _status;
  ChronicleAccessEventStatusEnum? get status => _$this._status;
  set status(ChronicleAccessEventStatusEnum? status) => _$this._status = status;

  String? _requesterHandle;
  String? get requesterHandle => _$this._requesterHandle;
  set requesterHandle(String? requesterHandle) =>
      _$this._requesterHandle = requesterHandle;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ChronicleAccessEventBuilder() {
    ChronicleAccessEvent._defaults(this);
  }

  ChronicleAccessEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _linkId = $v.linkId;
      _status = $v.status;
      _requesterHandle = $v.requesterHandle;
      _message = $v.message;
      _chronicleId = $v.chronicleId;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleAccessEvent other) {
    _$v = other as _$ChronicleAccessEvent;
  }

  @override
  void update(void Function(ChronicleAccessEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleAccessEvent build() => _build();

  _$ChronicleAccessEvent _build() {
    final _$result = _$v ??
        _$ChronicleAccessEvent._(
          requestId: BuiltValueNullFieldError.checkNotNull(
              requestId, r'ChronicleAccessEvent', 'requestId'),
          linkId: BuiltValueNullFieldError.checkNotNull(
              linkId, r'ChronicleAccessEvent', 'linkId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ChronicleAccessEvent', 'status'),
          requesterHandle: requesterHandle,
          message: message,
          chronicleId: chronicleId,
          at: BuiltValueNullFieldError.checkNotNull(
              at, r'ChronicleAccessEvent', 'at'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
