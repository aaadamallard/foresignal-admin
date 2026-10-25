// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccessRequestDirectionEnum _$accessRequestDirectionEnum_incoming =
    const AccessRequestDirectionEnum._('incoming');
const AccessRequestDirectionEnum _$accessRequestDirectionEnum_outgoing =
    const AccessRequestDirectionEnum._('outgoing');
const AccessRequestDirectionEnum
_$accessRequestDirectionEnum_unknownDefaultOpenApi =
    const AccessRequestDirectionEnum._('unknownDefaultOpenApi');

AccessRequestDirectionEnum _$accessRequestDirectionEnumValueOf(String name) {
  switch (name) {
    case 'incoming':
      return _$accessRequestDirectionEnum_incoming;
    case 'outgoing':
      return _$accessRequestDirectionEnum_outgoing;
    case 'unknownDefaultOpenApi':
      return _$accessRequestDirectionEnum_unknownDefaultOpenApi;
    default:
      return _$accessRequestDirectionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AccessRequestDirectionEnum> _$accessRequestDirectionEnumValues =
    BuiltSet<AccessRequestDirectionEnum>(const <AccessRequestDirectionEnum>[
      _$accessRequestDirectionEnum_incoming,
      _$accessRequestDirectionEnum_outgoing,
      _$accessRequestDirectionEnum_unknownDefaultOpenApi,
    ]);

const AccessRequestStatusEnum _$accessRequestStatusEnum_pending =
    const AccessRequestStatusEnum._('pending');
const AccessRequestStatusEnum _$accessRequestStatusEnum_granted =
    const AccessRequestStatusEnum._('granted');
const AccessRequestStatusEnum _$accessRequestStatusEnum_declined =
    const AccessRequestStatusEnum._('declined');
const AccessRequestStatusEnum _$accessRequestStatusEnum_unknownDefaultOpenApi =
    const AccessRequestStatusEnum._('unknownDefaultOpenApi');

AccessRequestStatusEnum _$accessRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$accessRequestStatusEnum_pending;
    case 'granted':
      return _$accessRequestStatusEnum_granted;
    case 'declined':
      return _$accessRequestStatusEnum_declined;
    case 'unknownDefaultOpenApi':
      return _$accessRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$accessRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AccessRequestStatusEnum> _$accessRequestStatusEnumValues =
    BuiltSet<AccessRequestStatusEnum>(const <AccessRequestStatusEnum>[
      _$accessRequestStatusEnum_pending,
      _$accessRequestStatusEnum_granted,
      _$accessRequestStatusEnum_declined,
      _$accessRequestStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<AccessRequestDirectionEnum> _$accessRequestDirectionEnumSerializer =
    _$AccessRequestDirectionEnumSerializer();
Serializer<AccessRequestStatusEnum> _$accessRequestStatusEnumSerializer =
    _$AccessRequestStatusEnumSerializer();

class _$AccessRequestDirectionEnumSerializer
    implements PrimitiveSerializer<AccessRequestDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'incoming': 'incoming',
    'outgoing': 'outgoing',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'incoming': 'incoming',
    'outgoing': 'outgoing',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AccessRequestDirectionEnum];
  @override
  final String wireName = 'AccessRequestDirectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    AccessRequestDirectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AccessRequestDirectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AccessRequestDirectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AccessRequestStatusEnumSerializer
    implements PrimitiveSerializer<AccessRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'granted': 'granted',
    'declined': 'declined',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'granted': 'granted',
    'declined': 'declined',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AccessRequestStatusEnum];
  @override
  final String wireName = 'AccessRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AccessRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AccessRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AccessRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AccessRequest extends AccessRequest {
  @override
  final String id;
  @override
  final String linkId;
  @override
  final AccessRequestDirectionEnum direction;
  @override
  final String? chronicleId;
  @override
  final String requesterHandle;
  @override
  final String? requesterInstanceId;
  @override
  final String? message;
  @override
  final AccessRequestOfferShare? offerShare;
  @override
  final AccessRequestStatusEnum status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? decidedAt;
  @override
  final AccessRequestGrant? grant;

  factory _$AccessRequest([void Function(AccessRequestBuilder)? updates]) =>
      (AccessRequestBuilder()..update(updates))._build();

  _$AccessRequest._({
    required this.id,
    required this.linkId,
    required this.direction,
    this.chronicleId,
    required this.requesterHandle,
    this.requesterInstanceId,
    this.message,
    this.offerShare,
    required this.status,
    required this.createdAt,
    this.decidedAt,
    this.grant,
  }) : super._();
  @override
  AccessRequest rebuild(void Function(AccessRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessRequestBuilder toBuilder() => AccessRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessRequest &&
        id == other.id &&
        linkId == other.linkId &&
        direction == other.direction &&
        chronicleId == other.chronicleId &&
        requesterHandle == other.requesterHandle &&
        requesterInstanceId == other.requesterInstanceId &&
        message == other.message &&
        offerShare == other.offerShare &&
        status == other.status &&
        createdAt == other.createdAt &&
        decidedAt == other.decidedAt &&
        grant == other.grant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, requesterHandle.hashCode);
    _$hash = $jc(_$hash, requesterInstanceId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, offerShare.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, decidedAt.hashCode);
    _$hash = $jc(_$hash, grant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessRequest')
          ..add('id', id)
          ..add('linkId', linkId)
          ..add('direction', direction)
          ..add('chronicleId', chronicleId)
          ..add('requesterHandle', requesterHandle)
          ..add('requesterInstanceId', requesterInstanceId)
          ..add('message', message)
          ..add('offerShare', offerShare)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('decidedAt', decidedAt)
          ..add('grant', grant))
        .toString();
  }
}

class AccessRequestBuilder
    implements Builder<AccessRequest, AccessRequestBuilder> {
  _$AccessRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  AccessRequestDirectionEnum? _direction;
  AccessRequestDirectionEnum? get direction => _$this._direction;
  set direction(AccessRequestDirectionEnum? direction) =>
      _$this._direction = direction;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  String? _requesterHandle;
  String? get requesterHandle => _$this._requesterHandle;
  set requesterHandle(String? requesterHandle) =>
      _$this._requesterHandle = requesterHandle;

  String? _requesterInstanceId;
  String? get requesterInstanceId => _$this._requesterInstanceId;
  set requesterInstanceId(String? requesterInstanceId) =>
      _$this._requesterInstanceId = requesterInstanceId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AccessRequestOfferShareBuilder? _offerShare;
  AccessRequestOfferShareBuilder get offerShare =>
      _$this._offerShare ??= AccessRequestOfferShareBuilder();
  set offerShare(AccessRequestOfferShareBuilder? offerShare) =>
      _$this._offerShare = offerShare;

  AccessRequestStatusEnum? _status;
  AccessRequestStatusEnum? get status => _$this._status;
  set status(AccessRequestStatusEnum? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _decidedAt;
  DateTime? get decidedAt => _$this._decidedAt;
  set decidedAt(DateTime? decidedAt) => _$this._decidedAt = decidedAt;

  AccessRequestGrantBuilder? _grant;
  AccessRequestGrantBuilder get grant =>
      _$this._grant ??= AccessRequestGrantBuilder();
  set grant(AccessRequestGrantBuilder? grant) => _$this._grant = grant;

  AccessRequestBuilder() {
    AccessRequest._defaults(this);
  }

  AccessRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _linkId = $v.linkId;
      _direction = $v.direction;
      _chronicleId = $v.chronicleId;
      _requesterHandle = $v.requesterHandle;
      _requesterInstanceId = $v.requesterInstanceId;
      _message = $v.message;
      _offerShare = $v.offerShare?.toBuilder();
      _status = $v.status;
      _createdAt = $v.createdAt;
      _decidedAt = $v.decidedAt;
      _grant = $v.grant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessRequest other) {
    _$v = other as _$AccessRequest;
  }

  @override
  void update(void Function(AccessRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessRequest build() => _build();

  _$AccessRequest _build() {
    _$AccessRequest _$result;
    try {
      _$result =
          _$v ??
          _$AccessRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'AccessRequest',
              'id',
            ),
            linkId: BuiltValueNullFieldError.checkNotNull(
              linkId,
              r'AccessRequest',
              'linkId',
            ),
            direction: BuiltValueNullFieldError.checkNotNull(
              direction,
              r'AccessRequest',
              'direction',
            ),
            chronicleId: chronicleId,
            requesterHandle: BuiltValueNullFieldError.checkNotNull(
              requesterHandle,
              r'AccessRequest',
              'requesterHandle',
            ),
            requesterInstanceId: requesterInstanceId,
            message: message,
            offerShare: _offerShare?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'AccessRequest',
              'status',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'AccessRequest',
              'createdAt',
            ),
            decidedAt: decidedAt,
            grant: _grant?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'offerShare';
        _offerShare?.build();

        _$failedField = 'grant';
        _grant?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AccessRequest',
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
