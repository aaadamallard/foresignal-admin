// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_record =
    const ShareLinkTargetTypeEnum._('record');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_alert =
    const ShareLinkTargetTypeEnum._('alert');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_view =
    const ShareLinkTargetTypeEnum._('view');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_track =
    const ShareLinkTargetTypeEnum._('track');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_briefingRun =
    const ShareLinkTargetTypeEnum._('briefingRun');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_export_ =
    const ShareLinkTargetTypeEnum._('export_');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_workspace =
    const ShareLinkTargetTypeEnum._('workspace');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_report =
    const ShareLinkTargetTypeEnum._('report');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_editionSite =
    const ShareLinkTargetTypeEnum._('editionSite');
const ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnum_unknownDefaultOpenApi =
    const ShareLinkTargetTypeEnum._('unknownDefaultOpenApi');

ShareLinkTargetTypeEnum _$shareLinkTargetTypeEnumValueOf(String name) {
  switch (name) {
    case 'record':
      return _$shareLinkTargetTypeEnum_record;
    case 'alert':
      return _$shareLinkTargetTypeEnum_alert;
    case 'view':
      return _$shareLinkTargetTypeEnum_view;
    case 'track':
      return _$shareLinkTargetTypeEnum_track;
    case 'briefingRun':
      return _$shareLinkTargetTypeEnum_briefingRun;
    case 'export_':
      return _$shareLinkTargetTypeEnum_export_;
    case 'workspace':
      return _$shareLinkTargetTypeEnum_workspace;
    case 'report':
      return _$shareLinkTargetTypeEnum_report;
    case 'editionSite':
      return _$shareLinkTargetTypeEnum_editionSite;
    case 'unknownDefaultOpenApi':
      return _$shareLinkTargetTypeEnum_unknownDefaultOpenApi;
    default:
      return _$shareLinkTargetTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ShareLinkTargetTypeEnum> _$shareLinkTargetTypeEnumValues =
    BuiltSet<ShareLinkTargetTypeEnum>(const <ShareLinkTargetTypeEnum>[
      _$shareLinkTargetTypeEnum_record,
      _$shareLinkTargetTypeEnum_alert,
      _$shareLinkTargetTypeEnum_view,
      _$shareLinkTargetTypeEnum_track,
      _$shareLinkTargetTypeEnum_briefingRun,
      _$shareLinkTargetTypeEnum_export_,
      _$shareLinkTargetTypeEnum_workspace,
      _$shareLinkTargetTypeEnum_report,
      _$shareLinkTargetTypeEnum_editionSite,
      _$shareLinkTargetTypeEnum_unknownDefaultOpenApi,
    ]);

const ShareLinkStatusEnum _$shareLinkStatusEnum_active =
    const ShareLinkStatusEnum._('active');
const ShareLinkStatusEnum _$shareLinkStatusEnum_expired =
    const ShareLinkStatusEnum._('expired');
const ShareLinkStatusEnum _$shareLinkStatusEnum_revoked =
    const ShareLinkStatusEnum._('revoked');
const ShareLinkStatusEnum _$shareLinkStatusEnum_exhausted =
    const ShareLinkStatusEnum._('exhausted');
const ShareLinkStatusEnum _$shareLinkStatusEnum_unknownDefaultOpenApi =
    const ShareLinkStatusEnum._('unknownDefaultOpenApi');

ShareLinkStatusEnum _$shareLinkStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$shareLinkStatusEnum_active;
    case 'expired':
      return _$shareLinkStatusEnum_expired;
    case 'revoked':
      return _$shareLinkStatusEnum_revoked;
    case 'exhausted':
      return _$shareLinkStatusEnum_exhausted;
    case 'unknownDefaultOpenApi':
      return _$shareLinkStatusEnum_unknownDefaultOpenApi;
    default:
      return _$shareLinkStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ShareLinkStatusEnum> _$shareLinkStatusEnumValues =
    BuiltSet<ShareLinkStatusEnum>(const <ShareLinkStatusEnum>[
      _$shareLinkStatusEnum_active,
      _$shareLinkStatusEnum_expired,
      _$shareLinkStatusEnum_revoked,
      _$shareLinkStatusEnum_exhausted,
      _$shareLinkStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ShareLinkTargetTypeEnum> _$shareLinkTargetTypeEnumSerializer =
    _$ShareLinkTargetTypeEnumSerializer();
Serializer<ShareLinkStatusEnum> _$shareLinkStatusEnumSerializer =
    _$ShareLinkStatusEnumSerializer();

class _$ShareLinkTargetTypeEnumSerializer
    implements PrimitiveSerializer<ShareLinkTargetTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'alert': 'alert',
    'view': 'view',
    'track': 'track',
    'briefingRun': 'briefing-run',
    'export_': 'export',
    'workspace': 'workspace',
    'report': 'report',
    'editionSite': 'edition-site',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
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
    'edition-site': 'editionSite',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareLinkTargetTypeEnum];
  @override
  final String wireName = 'ShareLinkTargetTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ShareLinkTargetTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ShareLinkTargetTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ShareLinkTargetTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ShareLinkStatusEnumSerializer
    implements PrimitiveSerializer<ShareLinkStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'expired': 'expired',
    'revoked': 'revoked',
    'exhausted': 'exhausted',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'expired': 'expired',
    'revoked': 'revoked',
    'exhausted': 'exhausted',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareLinkStatusEnum];
  @override
  final String wireName = 'ShareLinkStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ShareLinkStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ShareLinkStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ShareLinkStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ShareLink extends ShareLink {
  @override
  final String id;
  @override
  final String keyPrefix;
  @override
  final ShareLinkTargetTypeEnum targetType;
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
  final ShareLinkStatusEnum status;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime? revokedAt;
  @override
  final DateTime? lastUsedAt;

  factory _$ShareLink([void Function(ShareLinkBuilder)? updates]) =>
      (ShareLinkBuilder()..update(updates))._build();

  _$ShareLink._({
    required this.id,
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
  }) : super._();
  @override
  ShareLink rebuild(void Function(ShareLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareLinkBuilder toBuilder() => ShareLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareLink &&
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
        lastUsedAt == other.lastUsedAt;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareLink')
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
          ..add('lastUsedAt', lastUsedAt))
        .toString();
  }
}

class ShareLinkBuilder implements Builder<ShareLink, ShareLinkBuilder> {
  _$ShareLink? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _keyPrefix;
  String? get keyPrefix => _$this._keyPrefix;
  set keyPrefix(String? keyPrefix) => _$this._keyPrefix = keyPrefix;

  ShareLinkTargetTypeEnum? _targetType;
  ShareLinkTargetTypeEnum? get targetType => _$this._targetType;
  set targetType(ShareLinkTargetTypeEnum? targetType) =>
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

  ShareLinkStatusEnum? _status;
  ShareLinkStatusEnum? get status => _$this._status;
  set status(ShareLinkStatusEnum? status) => _$this._status = status;

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

  ShareLinkBuilder() {
    ShareLink._defaults(this);
  }

  ShareLinkBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareLink other) {
    _$v = other as _$ShareLink;
  }

  @override
  void update(void Function(ShareLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareLink build() => _build();

  _$ShareLink _build() {
    _$ShareLink _$result;
    try {
      _$result =
          _$v ??
          _$ShareLink._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ShareLink', 'id'),
            keyPrefix: BuiltValueNullFieldError.checkNotNull(
              keyPrefix,
              r'ShareLink',
              'keyPrefix',
            ),
            targetType: BuiltValueNullFieldError.checkNotNull(
              targetType,
              r'ShareLink',
              'targetType',
            ),
            targetRef: BuiltValueNullFieldError.checkNotNull(
              targetRef,
              r'ShareLink',
              'targetRef',
            ),
            fieldMask: _fieldMask?.build(),
            precisionM: precisionM,
            masked: masked,
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'ShareLink',
              'expiresAt',
            ),
            maxUses: maxUses,
            uses: BuiltValueNullFieldError.checkNotNull(
              uses,
              r'ShareLink',
              'uses',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ShareLink',
              'status',
            ),
            createdBy: createdBy,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'ShareLink',
              'createdAt',
            ),
            revokedAt: revokedAt,
            lastUsedAt: lastUsedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fieldMask';
        _fieldMask?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ShareLink',
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
