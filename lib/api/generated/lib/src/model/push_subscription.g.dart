// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushSubscriptionStatusEnum _$pushSubscriptionStatusEnum_pending =
    const PushSubscriptionStatusEnum._('pending');
const PushSubscriptionStatusEnum _$pushSubscriptionStatusEnum_active =
    const PushSubscriptionStatusEnum._('active');
const PushSubscriptionStatusEnum _$pushSubscriptionStatusEnum_disabled =
    const PushSubscriptionStatusEnum._('disabled');

PushSubscriptionStatusEnum _$pushSubscriptionStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pushSubscriptionStatusEnum_pending;
    case 'active':
      return _$pushSubscriptionStatusEnum_active;
    case 'disabled':
      return _$pushSubscriptionStatusEnum_disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushSubscriptionStatusEnum> _$pushSubscriptionStatusEnumValues =
    BuiltSet<PushSubscriptionStatusEnum>(const <PushSubscriptionStatusEnum>[
  _$pushSubscriptionStatusEnum_pending,
  _$pushSubscriptionStatusEnum_active,
  _$pushSubscriptionStatusEnum_disabled,
]);

const PushSubscriptionTransportLabelEnum
    _$pushSubscriptionTransportLabelEnum_browser =
    const PushSubscriptionTransportLabelEnum._('browser');
const PushSubscriptionTransportLabelEnum
    _$pushSubscriptionTransportLabelEnum_unifiedpush =
    const PushSubscriptionTransportLabelEnum._('unifiedpush');
const PushSubscriptionTransportLabelEnum
    _$pushSubscriptionTransportLabelEnum_other =
    const PushSubscriptionTransportLabelEnum._('other');

PushSubscriptionTransportLabelEnum _$pushSubscriptionTransportLabelEnumValueOf(
    String name) {
  switch (name) {
    case 'browser':
      return _$pushSubscriptionTransportLabelEnum_browser;
    case 'unifiedpush':
      return _$pushSubscriptionTransportLabelEnum_unifiedpush;
    case 'other':
      return _$pushSubscriptionTransportLabelEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushSubscriptionTransportLabelEnum>
    _$pushSubscriptionTransportLabelEnumValues = BuiltSet<
        PushSubscriptionTransportLabelEnum>(const <PushSubscriptionTransportLabelEnum>[
  _$pushSubscriptionTransportLabelEnum_browser,
  _$pushSubscriptionTransportLabelEnum_unifiedpush,
  _$pushSubscriptionTransportLabelEnum_other,
]);

const PushSubscriptionPayloadFormatEnum
    _$pushSubscriptionPayloadFormatEnum_foresignal =
    const PushSubscriptionPayloadFormatEnum._('foresignal');
const PushSubscriptionPayloadFormatEnum
    _$pushSubscriptionPayloadFormatEnum_declarative =
    const PushSubscriptionPayloadFormatEnum._('declarative');

PushSubscriptionPayloadFormatEnum _$pushSubscriptionPayloadFormatEnumValueOf(
    String name) {
  switch (name) {
    case 'foresignal':
      return _$pushSubscriptionPayloadFormatEnum_foresignal;
    case 'declarative':
      return _$pushSubscriptionPayloadFormatEnum_declarative;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushSubscriptionPayloadFormatEnum>
    _$pushSubscriptionPayloadFormatEnumValues = BuiltSet<
        PushSubscriptionPayloadFormatEnum>(const <PushSubscriptionPayloadFormatEnum>[
  _$pushSubscriptionPayloadFormatEnum_foresignal,
  _$pushSubscriptionPayloadFormatEnum_declarative,
]);

Serializer<PushSubscriptionStatusEnum> _$pushSubscriptionStatusEnumSerializer =
    _$PushSubscriptionStatusEnumSerializer();
Serializer<PushSubscriptionTransportLabelEnum>
    _$pushSubscriptionTransportLabelEnumSerializer =
    _$PushSubscriptionTransportLabelEnumSerializer();
Serializer<PushSubscriptionPayloadFormatEnum>
    _$pushSubscriptionPayloadFormatEnumSerializer =
    _$PushSubscriptionPayloadFormatEnumSerializer();

class _$PushSubscriptionStatusEnumSerializer
    implements PrimitiveSerializer<PushSubscriptionStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'active': 'active',
    'disabled': 'disabled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'active': 'active',
    'disabled': 'disabled',
  };

  @override
  final Iterable<Type> types = const <Type>[PushSubscriptionStatusEnum];
  @override
  final String wireName = 'PushSubscriptionStatusEnum';

  @override
  Object serialize(Serializers serializers, PushSubscriptionStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PushSubscriptionStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PushSubscriptionStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PushSubscriptionTransportLabelEnumSerializer
    implements PrimitiveSerializer<PushSubscriptionTransportLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'browser': 'browser',
    'unifiedpush': 'unifiedpush',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'browser': 'browser',
    'unifiedpush': 'unifiedpush',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[PushSubscriptionTransportLabelEnum];
  @override
  final String wireName = 'PushSubscriptionTransportLabelEnum';

  @override
  Object serialize(
          Serializers serializers, PushSubscriptionTransportLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PushSubscriptionTransportLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PushSubscriptionTransportLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PushSubscriptionPayloadFormatEnumSerializer
    implements PrimitiveSerializer<PushSubscriptionPayloadFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'foresignal': 'foresignal',
    'declarative': 'declarative',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'foresignal': 'foresignal',
    'declarative': 'declarative',
  };

  @override
  final Iterable<Type> types = const <Type>[PushSubscriptionPayloadFormatEnum];
  @override
  final String wireName = 'PushSubscriptionPayloadFormatEnum';

  @override
  Object serialize(
          Serializers serializers, PushSubscriptionPayloadFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PushSubscriptionPayloadFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PushSubscriptionPayloadFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PushSubscription extends PushSubscription {
  @override
  final String id;
  @override
  final String? name;
  @override
  final String endpointHost;
  @override
  final PushFilters? filters;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastSuccessAt;
  @override
  final PushSubscriptionStatusEnum? status;
  @override
  final PushSubscriptionTransportLabelEnum? transportLabel;
  @override
  final PushSubscriptionPayloadFormatEnum? payloadFormat;
  @override
  final String? lang;
  @override
  final int? failureCount;
  @override
  final DateTime? lastFailureAt;
  @override
  final int? lastStatus;

  factory _$PushSubscription(
          [void Function(PushSubscriptionBuilder)? updates]) =>
      (PushSubscriptionBuilder()..update(updates))._build();

  _$PushSubscription._(
      {required this.id,
      this.name,
      required this.endpointHost,
      this.filters,
      required this.createdAt,
      this.lastSuccessAt,
      this.status,
      this.transportLabel,
      this.payloadFormat,
      this.lang,
      this.failureCount,
      this.lastFailureAt,
      this.lastStatus})
      : super._();
  @override
  PushSubscription rebuild(void Function(PushSubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushSubscriptionBuilder toBuilder() =>
      PushSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushSubscription &&
        id == other.id &&
        name == other.name &&
        endpointHost == other.endpointHost &&
        filters == other.filters &&
        createdAt == other.createdAt &&
        lastSuccessAt == other.lastSuccessAt &&
        status == other.status &&
        transportLabel == other.transportLabel &&
        payloadFormat == other.payloadFormat &&
        lang == other.lang &&
        failureCount == other.failureCount &&
        lastFailureAt == other.lastFailureAt &&
        lastStatus == other.lastStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, endpointHost.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastSuccessAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, transportLabel.hashCode);
    _$hash = $jc(_$hash, payloadFormat.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, failureCount.hashCode);
    _$hash = $jc(_$hash, lastFailureAt.hashCode);
    _$hash = $jc(_$hash, lastStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushSubscription')
          ..add('id', id)
          ..add('name', name)
          ..add('endpointHost', endpointHost)
          ..add('filters', filters)
          ..add('createdAt', createdAt)
          ..add('lastSuccessAt', lastSuccessAt)
          ..add('status', status)
          ..add('transportLabel', transportLabel)
          ..add('payloadFormat', payloadFormat)
          ..add('lang', lang)
          ..add('failureCount', failureCount)
          ..add('lastFailureAt', lastFailureAt)
          ..add('lastStatus', lastStatus))
        .toString();
  }
}

class PushSubscriptionBuilder
    implements Builder<PushSubscription, PushSubscriptionBuilder> {
  _$PushSubscription? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _endpointHost;
  String? get endpointHost => _$this._endpointHost;
  set endpointHost(String? endpointHost) => _$this._endpointHost = endpointHost;

  PushFiltersBuilder? _filters;
  PushFiltersBuilder get filters => _$this._filters ??= PushFiltersBuilder();
  set filters(PushFiltersBuilder? filters) => _$this._filters = filters;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastSuccessAt;
  DateTime? get lastSuccessAt => _$this._lastSuccessAt;
  set lastSuccessAt(DateTime? lastSuccessAt) =>
      _$this._lastSuccessAt = lastSuccessAt;

  PushSubscriptionStatusEnum? _status;
  PushSubscriptionStatusEnum? get status => _$this._status;
  set status(PushSubscriptionStatusEnum? status) => _$this._status = status;

  PushSubscriptionTransportLabelEnum? _transportLabel;
  PushSubscriptionTransportLabelEnum? get transportLabel =>
      _$this._transportLabel;
  set transportLabel(PushSubscriptionTransportLabelEnum? transportLabel) =>
      _$this._transportLabel = transportLabel;

  PushSubscriptionPayloadFormatEnum? _payloadFormat;
  PushSubscriptionPayloadFormatEnum? get payloadFormat => _$this._payloadFormat;
  set payloadFormat(PushSubscriptionPayloadFormatEnum? payloadFormat) =>
      _$this._payloadFormat = payloadFormat;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  int? _failureCount;
  int? get failureCount => _$this._failureCount;
  set failureCount(int? failureCount) => _$this._failureCount = failureCount;

  DateTime? _lastFailureAt;
  DateTime? get lastFailureAt => _$this._lastFailureAt;
  set lastFailureAt(DateTime? lastFailureAt) =>
      _$this._lastFailureAt = lastFailureAt;

  int? _lastStatus;
  int? get lastStatus => _$this._lastStatus;
  set lastStatus(int? lastStatus) => _$this._lastStatus = lastStatus;

  PushSubscriptionBuilder() {
    PushSubscription._defaults(this);
  }

  PushSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _endpointHost = $v.endpointHost;
      _filters = $v.filters?.toBuilder();
      _createdAt = $v.createdAt;
      _lastSuccessAt = $v.lastSuccessAt;
      _status = $v.status;
      _transportLabel = $v.transportLabel;
      _payloadFormat = $v.payloadFormat;
      _lang = $v.lang;
      _failureCount = $v.failureCount;
      _lastFailureAt = $v.lastFailureAt;
      _lastStatus = $v.lastStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushSubscription other) {
    _$v = other as _$PushSubscription;
  }

  @override
  void update(void Function(PushSubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushSubscription build() => _build();

  _$PushSubscription _build() {
    _$PushSubscription _$result;
    try {
      _$result = _$v ??
          _$PushSubscription._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PushSubscription', 'id'),
            name: name,
            endpointHost: BuiltValueNullFieldError.checkNotNull(
                endpointHost, r'PushSubscription', 'endpointHost'),
            filters: _filters?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'PushSubscription', 'createdAt'),
            lastSuccessAt: lastSuccessAt,
            status: status,
            transportLabel: transportLabel,
            payloadFormat: payloadFormat,
            lang: lang,
            failureCount: failureCount,
            lastFailureAt: lastFailureAt,
            lastStatus: lastStatus,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PushSubscription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
