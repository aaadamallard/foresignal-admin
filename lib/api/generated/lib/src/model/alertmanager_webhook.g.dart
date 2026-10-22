// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alertmanager_webhook.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertmanagerWebhookVersionEnum _$alertmanagerWebhookVersionEnum_n4 =
    const AlertmanagerWebhookVersionEnum._('n4');

AlertmanagerWebhookVersionEnum _$alertmanagerWebhookVersionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'n4':
      return _$alertmanagerWebhookVersionEnum_n4;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertmanagerWebhookVersionEnum>
_$alertmanagerWebhookVersionEnumValues =
    BuiltSet<AlertmanagerWebhookVersionEnum>(
      const <AlertmanagerWebhookVersionEnum>[
        _$alertmanagerWebhookVersionEnum_n4,
      ],
    );

const AlertmanagerWebhookStatusEnum _$alertmanagerWebhookStatusEnum_firing =
    const AlertmanagerWebhookStatusEnum._('firing');
const AlertmanagerWebhookStatusEnum _$alertmanagerWebhookStatusEnum_resolved =
    const AlertmanagerWebhookStatusEnum._('resolved');

AlertmanagerWebhookStatusEnum _$alertmanagerWebhookStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'firing':
      return _$alertmanagerWebhookStatusEnum_firing;
    case 'resolved':
      return _$alertmanagerWebhookStatusEnum_resolved;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertmanagerWebhookStatusEnum>
_$alertmanagerWebhookStatusEnumValues = BuiltSet<AlertmanagerWebhookStatusEnum>(
  const <AlertmanagerWebhookStatusEnum>[
    _$alertmanagerWebhookStatusEnum_firing,
    _$alertmanagerWebhookStatusEnum_resolved,
  ],
);

Serializer<AlertmanagerWebhookVersionEnum>
_$alertmanagerWebhookVersionEnumSerializer =
    _$AlertmanagerWebhookVersionEnumSerializer();
Serializer<AlertmanagerWebhookStatusEnum>
_$alertmanagerWebhookStatusEnumSerializer =
    _$AlertmanagerWebhookStatusEnumSerializer();

class _$AlertmanagerWebhookVersionEnumSerializer
    implements PrimitiveSerializer<AlertmanagerWebhookVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{'n4': '4'};
  static const Map<Object, String> _fromWire = const <Object, String>{
    '4': 'n4',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertmanagerWebhookVersionEnum];
  @override
  final String wireName = 'AlertmanagerWebhookVersionEnum';

  @override
  Object serialize(
    Serializers serializers,
    AlertmanagerWebhookVersionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlertmanagerWebhookVersionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlertmanagerWebhookVersionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AlertmanagerWebhookStatusEnumSerializer
    implements PrimitiveSerializer<AlertmanagerWebhookStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'firing': 'firing',
    'resolved': 'resolved',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'firing': 'firing',
    'resolved': 'resolved',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertmanagerWebhookStatusEnum];
  @override
  final String wireName = 'AlertmanagerWebhookStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AlertmanagerWebhookStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlertmanagerWebhookStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlertmanagerWebhookStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AlertmanagerWebhook extends AlertmanagerWebhook {
  @override
  final AlertmanagerWebhookVersionEnum version;
  @override
  final String? groupKey;
  @override
  final int? truncatedAlerts;
  @override
  final AlertmanagerWebhookStatusEnum? status;
  @override
  final String? receiver;
  @override
  final BuiltMap<String, String>? groupLabels;
  @override
  final BuiltMap<String, String>? commonLabels;
  @override
  final BuiltMap<String, String>? commonAnnotations;
  @override
  final String? externalURL;
  @override
  final BuiltList<AlertmanagerWebhookAlertsInner> alerts;

  factory _$AlertmanagerWebhook([
    void Function(AlertmanagerWebhookBuilder)? updates,
  ]) => (AlertmanagerWebhookBuilder()..update(updates))._build();

  _$AlertmanagerWebhook._({
    required this.version,
    this.groupKey,
    this.truncatedAlerts,
    this.status,
    this.receiver,
    this.groupLabels,
    this.commonLabels,
    this.commonAnnotations,
    this.externalURL,
    required this.alerts,
  }) : super._();
  @override
  AlertmanagerWebhook rebuild(
    void Function(AlertmanagerWebhookBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlertmanagerWebhookBuilder toBuilder() =>
      AlertmanagerWebhookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertmanagerWebhook &&
        version == other.version &&
        groupKey == other.groupKey &&
        truncatedAlerts == other.truncatedAlerts &&
        status == other.status &&
        receiver == other.receiver &&
        groupLabels == other.groupLabels &&
        commonLabels == other.commonLabels &&
        commonAnnotations == other.commonAnnotations &&
        externalURL == other.externalURL &&
        alerts == other.alerts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, truncatedAlerts.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, receiver.hashCode);
    _$hash = $jc(_$hash, groupLabels.hashCode);
    _$hash = $jc(_$hash, commonLabels.hashCode);
    _$hash = $jc(_$hash, commonAnnotations.hashCode);
    _$hash = $jc(_$hash, externalURL.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertmanagerWebhook')
          ..add('version', version)
          ..add('groupKey', groupKey)
          ..add('truncatedAlerts', truncatedAlerts)
          ..add('status', status)
          ..add('receiver', receiver)
          ..add('groupLabels', groupLabels)
          ..add('commonLabels', commonLabels)
          ..add('commonAnnotations', commonAnnotations)
          ..add('externalURL', externalURL)
          ..add('alerts', alerts))
        .toString();
  }
}

class AlertmanagerWebhookBuilder
    implements Builder<AlertmanagerWebhook, AlertmanagerWebhookBuilder> {
  _$AlertmanagerWebhook? _$v;

  AlertmanagerWebhookVersionEnum? _version;
  AlertmanagerWebhookVersionEnum? get version => _$this._version;
  set version(AlertmanagerWebhookVersionEnum? version) =>
      _$this._version = version;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  int? _truncatedAlerts;
  int? get truncatedAlerts => _$this._truncatedAlerts;
  set truncatedAlerts(int? truncatedAlerts) =>
      _$this._truncatedAlerts = truncatedAlerts;

  AlertmanagerWebhookStatusEnum? _status;
  AlertmanagerWebhookStatusEnum? get status => _$this._status;
  set status(AlertmanagerWebhookStatusEnum? status) => _$this._status = status;

  String? _receiver;
  String? get receiver => _$this._receiver;
  set receiver(String? receiver) => _$this._receiver = receiver;

  MapBuilder<String, String>? _groupLabels;
  MapBuilder<String, String> get groupLabels =>
      _$this._groupLabels ??= MapBuilder<String, String>();
  set groupLabels(MapBuilder<String, String>? groupLabels) =>
      _$this._groupLabels = groupLabels;

  MapBuilder<String, String>? _commonLabels;
  MapBuilder<String, String> get commonLabels =>
      _$this._commonLabels ??= MapBuilder<String, String>();
  set commonLabels(MapBuilder<String, String>? commonLabels) =>
      _$this._commonLabels = commonLabels;

  MapBuilder<String, String>? _commonAnnotations;
  MapBuilder<String, String> get commonAnnotations =>
      _$this._commonAnnotations ??= MapBuilder<String, String>();
  set commonAnnotations(MapBuilder<String, String>? commonAnnotations) =>
      _$this._commonAnnotations = commonAnnotations;

  String? _externalURL;
  String? get externalURL => _$this._externalURL;
  set externalURL(String? externalURL) => _$this._externalURL = externalURL;

  ListBuilder<AlertmanagerWebhookAlertsInner>? _alerts;
  ListBuilder<AlertmanagerWebhookAlertsInner> get alerts =>
      _$this._alerts ??= ListBuilder<AlertmanagerWebhookAlertsInner>();
  set alerts(ListBuilder<AlertmanagerWebhookAlertsInner>? alerts) =>
      _$this._alerts = alerts;

  AlertmanagerWebhookBuilder() {
    AlertmanagerWebhook._defaults(this);
  }

  AlertmanagerWebhookBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _groupKey = $v.groupKey;
      _truncatedAlerts = $v.truncatedAlerts;
      _status = $v.status;
      _receiver = $v.receiver;
      _groupLabels = $v.groupLabels?.toBuilder();
      _commonLabels = $v.commonLabels?.toBuilder();
      _commonAnnotations = $v.commonAnnotations?.toBuilder();
      _externalURL = $v.externalURL;
      _alerts = $v.alerts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertmanagerWebhook other) {
    _$v = other as _$AlertmanagerWebhook;
  }

  @override
  void update(void Function(AlertmanagerWebhookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertmanagerWebhook build() => _build();

  _$AlertmanagerWebhook _build() {
    _$AlertmanagerWebhook _$result;
    try {
      _$result =
          _$v ??
          _$AlertmanagerWebhook._(
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'AlertmanagerWebhook',
              'version',
            ),
            groupKey: groupKey,
            truncatedAlerts: truncatedAlerts,
            status: status,
            receiver: receiver,
            groupLabels: _groupLabels?.build(),
            commonLabels: _commonLabels?.build(),
            commonAnnotations: _commonAnnotations?.build(),
            externalURL: externalURL,
            alerts: alerts.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupLabels';
        _groupLabels?.build();
        _$failedField = 'commonLabels';
        _commonLabels?.build();
        _$failedField = 'commonAnnotations';
        _commonAnnotations?.build();

        _$failedField = 'alerts';
        alerts.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlertmanagerWebhook',
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
