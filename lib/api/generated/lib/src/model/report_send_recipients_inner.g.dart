// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_send_recipients_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportSendRecipientsInnerStatusEnum
    _$reportSendRecipientsInnerStatusEnum_notified =
    const ReportSendRecipientsInnerStatusEnum._('notified');
const ReportSendRecipientsInnerStatusEnum
    _$reportSendRecipientsInnerStatusEnum_granted =
    const ReportSendRecipientsInnerStatusEnum._('granted');
const ReportSendRecipientsInnerStatusEnum
    _$reportSendRecipientsInnerStatusEnum_delivered =
    const ReportSendRecipientsInnerStatusEnum._('delivered');
const ReportSendRecipientsInnerStatusEnum
    _$reportSendRecipientsInnerStatusEnum_failed =
    const ReportSendRecipientsInnerStatusEnum._('failed');

ReportSendRecipientsInnerStatusEnum
    _$reportSendRecipientsInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'notified':
      return _$reportSendRecipientsInnerStatusEnum_notified;
    case 'granted':
      return _$reportSendRecipientsInnerStatusEnum_granted;
    case 'delivered':
      return _$reportSendRecipientsInnerStatusEnum_delivered;
    case 'failed':
      return _$reportSendRecipientsInnerStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReportSendRecipientsInnerStatusEnum>
    _$reportSendRecipientsInnerStatusEnumValues = BuiltSet<
        ReportSendRecipientsInnerStatusEnum>(const <ReportSendRecipientsInnerStatusEnum>[
  _$reportSendRecipientsInnerStatusEnum_notified,
  _$reportSendRecipientsInnerStatusEnum_granted,
  _$reportSendRecipientsInnerStatusEnum_delivered,
  _$reportSendRecipientsInnerStatusEnum_failed,
]);

Serializer<ReportSendRecipientsInnerStatusEnum>
    _$reportSendRecipientsInnerStatusEnumSerializer =
    _$ReportSendRecipientsInnerStatusEnumSerializer();

class _$ReportSendRecipientsInnerStatusEnumSerializer
    implements PrimitiveSerializer<ReportSendRecipientsInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'notified': 'notified',
    'granted': 'granted',
    'delivered': 'delivered',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'notified': 'notified',
    'granted': 'granted',
    'delivered': 'delivered',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ReportSendRecipientsInnerStatusEnum
  ];
  @override
  final String wireName = 'ReportSendRecipientsInnerStatusEnum';

  @override
  Object serialize(
          Serializers serializers, ReportSendRecipientsInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReportSendRecipientsInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReportSendRecipientsInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReportSendRecipientsInner extends ReportSendRecipientsInner {
  @override
  final String grantee;
  @override
  final ReportSendRecipientsInnerStatusEnum status;
  @override
  final BuiltList<String>? channelIds;

  factory _$ReportSendRecipientsInner(
          [void Function(ReportSendRecipientsInnerBuilder)? updates]) =>
      (ReportSendRecipientsInnerBuilder()..update(updates))._build();

  _$ReportSendRecipientsInner._(
      {required this.grantee, required this.status, this.channelIds})
      : super._();
  @override
  ReportSendRecipientsInner rebuild(
          void Function(ReportSendRecipientsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportSendRecipientsInnerBuilder toBuilder() =>
      ReportSendRecipientsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportSendRecipientsInner &&
        grantee == other.grantee &&
        status == other.status &&
        channelIds == other.channelIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantee.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportSendRecipientsInner')
          ..add('grantee', grantee)
          ..add('status', status)
          ..add('channelIds', channelIds))
        .toString();
  }
}

class ReportSendRecipientsInnerBuilder
    implements
        Builder<ReportSendRecipientsInner, ReportSendRecipientsInnerBuilder> {
  _$ReportSendRecipientsInner? _$v;

  String? _grantee;
  String? get grantee => _$this._grantee;
  set grantee(String? grantee) => _$this._grantee = grantee;

  ReportSendRecipientsInnerStatusEnum? _status;
  ReportSendRecipientsInnerStatusEnum? get status => _$this._status;
  set status(ReportSendRecipientsInnerStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  ReportSendRecipientsInnerBuilder() {
    ReportSendRecipientsInner._defaults(this);
  }

  ReportSendRecipientsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantee = $v.grantee;
      _status = $v.status;
      _channelIds = $v.channelIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportSendRecipientsInner other) {
    _$v = other as _$ReportSendRecipientsInner;
  }

  @override
  void update(void Function(ReportSendRecipientsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportSendRecipientsInner build() => _build();

  _$ReportSendRecipientsInner _build() {
    _$ReportSendRecipientsInner _$result;
    try {
      _$result = _$v ??
          _$ReportSendRecipientsInner._(
            grantee: BuiltValueNullFieldError.checkNotNull(
                grantee, r'ReportSendRecipientsInner', 'grantee'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ReportSendRecipientsInner', 'status'),
            channelIds: _channelIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'channelIds';
        _channelIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReportSendRecipientsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
