// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_link_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShareLinkCreateTargetTypeEnum _$shareLinkCreateTargetTypeEnum_record =
    const ShareLinkCreateTargetTypeEnum._('record');
const ShareLinkCreateTargetTypeEnum _$shareLinkCreateTargetTypeEnum_alert =
    const ShareLinkCreateTargetTypeEnum._('alert');
const ShareLinkCreateTargetTypeEnum _$shareLinkCreateTargetTypeEnum_view =
    const ShareLinkCreateTargetTypeEnum._('view');
const ShareLinkCreateTargetTypeEnum _$shareLinkCreateTargetTypeEnum_track =
    const ShareLinkCreateTargetTypeEnum._('track');
const ShareLinkCreateTargetTypeEnum
_$shareLinkCreateTargetTypeEnum_briefingRun =
    const ShareLinkCreateTargetTypeEnum._('briefingRun');
const ShareLinkCreateTargetTypeEnum _$shareLinkCreateTargetTypeEnum_export_ =
    const ShareLinkCreateTargetTypeEnum._('export_');

ShareLinkCreateTargetTypeEnum _$shareLinkCreateTargetTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'record':
      return _$shareLinkCreateTargetTypeEnum_record;
    case 'alert':
      return _$shareLinkCreateTargetTypeEnum_alert;
    case 'view':
      return _$shareLinkCreateTargetTypeEnum_view;
    case 'track':
      return _$shareLinkCreateTargetTypeEnum_track;
    case 'briefingRun':
      return _$shareLinkCreateTargetTypeEnum_briefingRun;
    case 'export_':
      return _$shareLinkCreateTargetTypeEnum_export_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShareLinkCreateTargetTypeEnum>
_$shareLinkCreateTargetTypeEnumValues = BuiltSet<ShareLinkCreateTargetTypeEnum>(
  const <ShareLinkCreateTargetTypeEnum>[
    _$shareLinkCreateTargetTypeEnum_record,
    _$shareLinkCreateTargetTypeEnum_alert,
    _$shareLinkCreateTargetTypeEnum_view,
    _$shareLinkCreateTargetTypeEnum_track,
    _$shareLinkCreateTargetTypeEnum_briefingRun,
    _$shareLinkCreateTargetTypeEnum_export_,
  ],
);

Serializer<ShareLinkCreateTargetTypeEnum>
_$shareLinkCreateTargetTypeEnumSerializer =
    _$ShareLinkCreateTargetTypeEnumSerializer();

class _$ShareLinkCreateTargetTypeEnumSerializer
    implements PrimitiveSerializer<ShareLinkCreateTargetTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'alert': 'alert',
    'view': 'view',
    'track': 'track',
    'briefingRun': 'briefing-run',
    'export_': 'export',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'alert': 'alert',
    'view': 'view',
    'track': 'track',
    'briefing-run': 'briefingRun',
    'export': 'export_',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareLinkCreateTargetTypeEnum];
  @override
  final String wireName = 'ShareLinkCreateTargetTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ShareLinkCreateTargetTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ShareLinkCreateTargetTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ShareLinkCreateTargetTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ShareLinkCreate extends ShareLinkCreate {
  @override
  final ShareLinkCreateTargetTypeEnum targetType;
  @override
  final String targetRef;
  @override
  final BuiltList<String>? fieldMask;
  @override
  final int? precisionM;
  @override
  final DateTime? expiresAt;
  @override
  final int? maxUses;

  factory _$ShareLinkCreate([void Function(ShareLinkCreateBuilder)? updates]) =>
      (ShareLinkCreateBuilder()..update(updates))._build();

  _$ShareLinkCreate._({
    required this.targetType,
    required this.targetRef,
    this.fieldMask,
    this.precisionM,
    this.expiresAt,
    this.maxUses,
  }) : super._();
  @override
  ShareLinkCreate rebuild(void Function(ShareLinkCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareLinkCreateBuilder toBuilder() => ShareLinkCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareLinkCreate &&
        targetType == other.targetType &&
        targetRef == other.targetRef &&
        fieldMask == other.fieldMask &&
        precisionM == other.precisionM &&
        expiresAt == other.expiresAt &&
        maxUses == other.maxUses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetType.hashCode);
    _$hash = $jc(_$hash, targetRef.hashCode);
    _$hash = $jc(_$hash, fieldMask.hashCode);
    _$hash = $jc(_$hash, precisionM.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, maxUses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareLinkCreate')
          ..add('targetType', targetType)
          ..add('targetRef', targetRef)
          ..add('fieldMask', fieldMask)
          ..add('precisionM', precisionM)
          ..add('expiresAt', expiresAt)
          ..add('maxUses', maxUses))
        .toString();
  }
}

class ShareLinkCreateBuilder
    implements Builder<ShareLinkCreate, ShareLinkCreateBuilder> {
  _$ShareLinkCreate? _$v;

  ShareLinkCreateTargetTypeEnum? _targetType;
  ShareLinkCreateTargetTypeEnum? get targetType => _$this._targetType;
  set targetType(ShareLinkCreateTargetTypeEnum? targetType) =>
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

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  int? _maxUses;
  int? get maxUses => _$this._maxUses;
  set maxUses(int? maxUses) => _$this._maxUses = maxUses;

  ShareLinkCreateBuilder() {
    ShareLinkCreate._defaults(this);
  }

  ShareLinkCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetType = $v.targetType;
      _targetRef = $v.targetRef;
      _fieldMask = $v.fieldMask?.toBuilder();
      _precisionM = $v.precisionM;
      _expiresAt = $v.expiresAt;
      _maxUses = $v.maxUses;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareLinkCreate other) {
    _$v = other as _$ShareLinkCreate;
  }

  @override
  void update(void Function(ShareLinkCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareLinkCreate build() => _build();

  _$ShareLinkCreate _build() {
    _$ShareLinkCreate _$result;
    try {
      _$result =
          _$v ??
          _$ShareLinkCreate._(
            targetType: BuiltValueNullFieldError.checkNotNull(
              targetType,
              r'ShareLinkCreate',
              'targetType',
            ),
            targetRef: BuiltValueNullFieldError.checkNotNull(
              targetRef,
              r'ShareLinkCreate',
              'targetRef',
            ),
            fieldMask: _fieldMask?.build(),
            precisionM: precisionM,
            expiresAt: expiresAt,
            maxUses: maxUses,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fieldMask';
        _fieldMask?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ShareLinkCreate',
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
