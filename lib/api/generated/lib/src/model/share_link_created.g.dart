// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_link_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShareLinkCreatedTargetTypeEnum _$shareLinkCreatedTargetTypeEnum_record =
    const ShareLinkCreatedTargetTypeEnum._('record');
const ShareLinkCreatedTargetTypeEnum _$shareLinkCreatedTargetTypeEnum_alert =
    const ShareLinkCreatedTargetTypeEnum._('alert');
const ShareLinkCreatedTargetTypeEnum _$shareLinkCreatedTargetTypeEnum_view =
    const ShareLinkCreatedTargetTypeEnum._('view');
const ShareLinkCreatedTargetTypeEnum _$shareLinkCreatedTargetTypeEnum_track =
    const ShareLinkCreatedTargetTypeEnum._('track');
const ShareLinkCreatedTargetTypeEnum
    _$shareLinkCreatedTargetTypeEnum_briefingRun =
    const ShareLinkCreatedTargetTypeEnum._('briefingRun');
const ShareLinkCreatedTargetTypeEnum _$shareLinkCreatedTargetTypeEnum_export_ =
    const ShareLinkCreatedTargetTypeEnum._('export_');
const ShareLinkCreatedTargetTypeEnum
    _$shareLinkCreatedTargetTypeEnum_workspace =
    const ShareLinkCreatedTargetTypeEnum._('workspace');
const ShareLinkCreatedTargetTypeEnum _$shareLinkCreatedTargetTypeEnum_report =
    const ShareLinkCreatedTargetTypeEnum._('report');

ShareLinkCreatedTargetTypeEnum _$shareLinkCreatedTargetTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'record':
      return _$shareLinkCreatedTargetTypeEnum_record;
    case 'alert':
      return _$shareLinkCreatedTargetTypeEnum_alert;
    case 'view':
      return _$shareLinkCreatedTargetTypeEnum_view;
    case 'track':
      return _$shareLinkCreatedTargetTypeEnum_track;
    case 'briefingRun':
      return _$shareLinkCreatedTargetTypeEnum_briefingRun;
    case 'export_':
      return _$shareLinkCreatedTargetTypeEnum_export_;
    case 'workspace':
      return _$shareLinkCreatedTargetTypeEnum_workspace;
    case 'report':
      return _$shareLinkCreatedTargetTypeEnum_report;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShareLinkCreatedTargetTypeEnum>
    _$shareLinkCreatedTargetTypeEnumValues = BuiltSet<
        ShareLinkCreatedTargetTypeEnum>(const <ShareLinkCreatedTargetTypeEnum>[
  _$shareLinkCreatedTargetTypeEnum_record,
  _$shareLinkCreatedTargetTypeEnum_alert,
  _$shareLinkCreatedTargetTypeEnum_view,
  _$shareLinkCreatedTargetTypeEnum_track,
  _$shareLinkCreatedTargetTypeEnum_briefingRun,
  _$shareLinkCreatedTargetTypeEnum_export_,
  _$shareLinkCreatedTargetTypeEnum_workspace,
  _$shareLinkCreatedTargetTypeEnum_report,
]);

const ShareLinkCreatedStatusEnum _$shareLinkCreatedStatusEnum_active =
    const ShareLinkCreatedStatusEnum._('active');
const ShareLinkCreatedStatusEnum _$shareLinkCreatedStatusEnum_expired =
    const ShareLinkCreatedStatusEnum._('expired');
const ShareLinkCreatedStatusEnum _$shareLinkCreatedStatusEnum_revoked =
    const ShareLinkCreatedStatusEnum._('revoked');
const ShareLinkCreatedStatusEnum _$shareLinkCreatedStatusEnum_exhausted =
    const ShareLinkCreatedStatusEnum._('exhausted');

ShareLinkCreatedStatusEnum _$shareLinkCreatedStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$shareLinkCreatedStatusEnum_active;
    case 'expired':
      return _$shareLinkCreatedStatusEnum_expired;
    case 'revoked':
      return _$shareLinkCreatedStatusEnum_revoked;
    case 'exhausted':
      return _$shareLinkCreatedStatusEnum_exhausted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShareLinkCreatedStatusEnum> _$shareLinkCreatedStatusEnumValues =
    BuiltSet<ShareLinkCreatedStatusEnum>(const <ShareLinkCreatedStatusEnum>[
  _$shareLinkCreatedStatusEnum_active,
  _$shareLinkCreatedStatusEnum_expired,
  _$shareLinkCreatedStatusEnum_revoked,
  _$shareLinkCreatedStatusEnum_exhausted,
]);

Serializer<ShareLinkCreatedTargetTypeEnum>
    _$shareLinkCreatedTargetTypeEnumSerializer =
    _$ShareLinkCreatedTargetTypeEnumSerializer();
Serializer<ShareLinkCreatedStatusEnum> _$shareLinkCreatedStatusEnumSerializer =
    _$ShareLinkCreatedStatusEnumSerializer();

class _$ShareLinkCreatedTargetTypeEnumSerializer
    implements PrimitiveSerializer<ShareLinkCreatedTargetTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'alert': 'alert',
    'view': 'view',
    'track': 'track',
    'briefingRun': 'briefing-run',
    'export_': 'export',
    'workspace': 'workspace',
    'report': 'report',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'alert': 'alert',
    'view': 'view',
    'track': 'track',
    'briefing-run': 'briefingRun',
    'export': 'export_',
    'workspace': 'workspace',
    'report': 'report',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareLinkCreatedTargetTypeEnum];
  @override
  final String wireName = 'ShareLinkCreatedTargetTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ShareLinkCreatedTargetTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ShareLinkCreatedTargetTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ShareLinkCreatedTargetTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ShareLinkCreatedStatusEnumSerializer
    implements PrimitiveSerializer<ShareLinkCreatedStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'expired': 'expired',
    'revoked': 'revoked',
    'exhausted': 'exhausted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'expired': 'expired',
    'revoked': 'revoked',
    'exhausted': 'exhausted',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareLinkCreatedStatusEnum];
  @override
  final String wireName = 'ShareLinkCreatedStatusEnum';

  @override
  Object serialize(Serializers serializers, ShareLinkCreatedStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ShareLinkCreatedStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ShareLinkCreatedStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ShareLinkCreated extends ShareLinkCreated {
  @override
  final String id;
  @override
  final String keyPrefix;
  @override
  final ShareLinkCreatedTargetTypeEnum targetType;
  @override
  final String targetRef;
  @override
  final BuiltList<String>? fieldMask;
  @override
  final int? precisionM;
  @override
  final bool? masked;
  @override
  final DateTime expiresAt;
  @override
  final int? maxUses;
  @override
  final int uses;
  @override
  final ShareLinkCreatedStatusEnum status;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime? revokedAt;
  @override
  final DateTime? lastUsedAt;
  @override
  final String key;
  @override
  final String url;

  factory _$ShareLinkCreated(
          [void Function(ShareLinkCreatedBuilder)? updates]) =>
      (ShareLinkCreatedBuilder()..update(updates))._build();

  _$ShareLinkCreated._(
      {required this.id,
      required this.keyPrefix,
      required this.targetType,
      required this.targetRef,
      this.fieldMask,
      this.precisionM,
      this.masked,
      required this.expiresAt,
      this.maxUses,
      required this.uses,
      required this.status,
      this.createdBy,
      required this.createdAt,
      this.revokedAt,
      this.lastUsedAt,
      required this.key,
      required this.url})
      : super._();
  @override
  ShareLinkCreated rebuild(void Function(ShareLinkCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareLinkCreatedBuilder toBuilder() =>
      ShareLinkCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareLinkCreated &&
        id == other.id &&
        keyPrefix == other.keyPrefix &&
        targetType == other.targetType &&
        targetRef == other.targetRef &&
        fieldMask == other.fieldMask &&
        precisionM == other.precisionM &&
        masked == other.masked &&
        expiresAt == other.expiresAt &&
        maxUses == other.maxUses &&
        uses == other.uses &&
        status == other.status &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        revokedAt == other.revokedAt &&
        lastUsedAt == other.lastUsedAt &&
        key == other.key &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, keyPrefix.hashCode);
    _$hash = $jc(_$hash, targetType.hashCode);
    _$hash = $jc(_$hash, targetRef.hashCode);
    _$hash = $jc(_$hash, fieldMask.hashCode);
    _$hash = $jc(_$hash, precisionM.hashCode);
    _$hash = $jc(_$hash, masked.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, maxUses.hashCode);
    _$hash = $jc(_$hash, uses.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, revokedAt.hashCode);
    _$hash = $jc(_$hash, lastUsedAt.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareLinkCreated')
          ..add('id', id)
          ..add('keyPrefix', keyPrefix)
          ..add('targetType', targetType)
          ..add('targetRef', targetRef)
          ..add('fieldMask', fieldMask)
          ..add('precisionM', precisionM)
          ..add('masked', masked)
          ..add('expiresAt', expiresAt)
          ..add('maxUses', maxUses)
          ..add('uses', uses)
          ..add('status', status)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('revokedAt', revokedAt)
          ..add('lastUsedAt', lastUsedAt)
          ..add('key', key)
          ..add('url', url))
        .toString();
  }
}

class ShareLinkCreatedBuilder
    implements Builder<ShareLinkCreated, ShareLinkCreatedBuilder> {
  _$ShareLinkCreated? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _keyPrefix;
  String? get keyPrefix => _$this._keyPrefix;
  set keyPrefix(String? keyPrefix) => _$this._keyPrefix = keyPrefix;

  ShareLinkCreatedTargetTypeEnum? _targetType;
  ShareLinkCreatedTargetTypeEnum? get targetType => _$this._targetType;
  set targetType(ShareLinkCreatedTargetTypeEnum? targetType) =>
      _$this._targetType = targetType;

  String? _targetRef;
  String? get targetRef => _$this._targetRef;
  set targetRef(String? targetRef) => _$this._targetRef = targetRef;

  ListBuilder<String>? _fieldMask;
  ListBuilder<String> get fieldMask =>
      _$this._fieldMask ??= ListBuilder<String>();
  set fieldMask(ListBuilder<String>? fieldMask) =>
      _$this._fieldMask = fieldMask;

  int? _precisionM;
  int? get precisionM => _$this._precisionM;
  set precisionM(int? precisionM) => _$this._precisionM = precisionM;

  bool? _masked;
  bool? get masked => _$this._masked;
  set masked(bool? masked) => _$this._masked = masked;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  int? _maxUses;
  int? get maxUses => _$this._maxUses;
  set maxUses(int? maxUses) => _$this._maxUses = maxUses;

  int? _uses;
  int? get uses => _$this._uses;
  set uses(int? uses) => _$this._uses = uses;

  ShareLinkCreatedStatusEnum? _status;
  ShareLinkCreatedStatusEnum? get status => _$this._status;
  set status(ShareLinkCreatedStatusEnum? status) => _$this._status = status;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _revokedAt;
  DateTime? get revokedAt => _$this._revokedAt;
  set revokedAt(DateTime? revokedAt) => _$this._revokedAt = revokedAt;

  DateTime? _lastUsedAt;
  DateTime? get lastUsedAt => _$this._lastUsedAt;
  set lastUsedAt(DateTime? lastUsedAt) => _$this._lastUsedAt = lastUsedAt;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ShareLinkCreatedBuilder() {
    ShareLinkCreated._defaults(this);
  }

  ShareLinkCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _keyPrefix = $v.keyPrefix;
      _targetType = $v.targetType;
      _targetRef = $v.targetRef;
      _fieldMask = $v.fieldMask?.toBuilder();
      _precisionM = $v.precisionM;
      _masked = $v.masked;
      _expiresAt = $v.expiresAt;
      _maxUses = $v.maxUses;
      _uses = $v.uses;
      _status = $v.status;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _revokedAt = $v.revokedAt;
      _lastUsedAt = $v.lastUsedAt;
      _key = $v.key;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareLinkCreated other) {
    _$v = other as _$ShareLinkCreated;
  }

  @override
  void update(void Function(ShareLinkCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareLinkCreated build() => _build();

  _$ShareLinkCreated _build() {
    _$ShareLinkCreated _$result;
    try {
      _$result = _$v ??
          _$ShareLinkCreated._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ShareLinkCreated', 'id'),
            keyPrefix: BuiltValueNullFieldError.checkNotNull(
                keyPrefix, r'ShareLinkCreated', 'keyPrefix'),
            targetType: BuiltValueNullFieldError.checkNotNull(
                targetType, r'ShareLinkCreated', 'targetType'),
            targetRef: BuiltValueNullFieldError.checkNotNull(
                targetRef, r'ShareLinkCreated', 'targetRef'),
            fieldMask: _fieldMask?.build(),
            precisionM: precisionM,
            masked: masked,
            expiresAt: BuiltValueNullFieldError.checkNotNull(
                expiresAt, r'ShareLinkCreated', 'expiresAt'),
            maxUses: maxUses,
            uses: BuiltValueNullFieldError.checkNotNull(
                uses, r'ShareLinkCreated', 'uses'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ShareLinkCreated', 'status'),
            createdBy: createdBy,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ShareLinkCreated', 'createdAt'),
            revokedAt: revokedAt,
            lastUsedAt: lastUsedAt,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'ShareLinkCreated', 'key'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'ShareLinkCreated', 'url'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fieldMask';
        _fieldMask?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ShareLinkCreated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
