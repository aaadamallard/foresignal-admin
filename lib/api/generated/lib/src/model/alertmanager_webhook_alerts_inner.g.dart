// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alertmanager_webhook_alerts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertmanagerWebhookAlertsInnerStatusEnum
    _$alertmanagerWebhookAlertsInnerStatusEnum_firing =
    const AlertmanagerWebhookAlertsInnerStatusEnum._('firing');
const AlertmanagerWebhookAlertsInnerStatusEnum
    _$alertmanagerWebhookAlertsInnerStatusEnum_resolved =
    const AlertmanagerWebhookAlertsInnerStatusEnum._('resolved');

AlertmanagerWebhookAlertsInnerStatusEnum
    _$alertmanagerWebhookAlertsInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'firing':
      return _$alertmanagerWebhookAlertsInnerStatusEnum_firing;
    case 'resolved':
      return _$alertmanagerWebhookAlertsInnerStatusEnum_resolved;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertmanagerWebhookAlertsInnerStatusEnum>
    _$alertmanagerWebhookAlertsInnerStatusEnumValues = BuiltSet<
        AlertmanagerWebhookAlertsInnerStatusEnum>(const <AlertmanagerWebhookAlertsInnerStatusEnum>[
  _$alertmanagerWebhookAlertsInnerStatusEnum_firing,
  _$alertmanagerWebhookAlertsInnerStatusEnum_resolved,
]);

Serializer<AlertmanagerWebhookAlertsInnerStatusEnum>
    _$alertmanagerWebhookAlertsInnerStatusEnumSerializer =
    _$AlertmanagerWebhookAlertsInnerStatusEnumSerializer();

class _$AlertmanagerWebhookAlertsInnerStatusEnumSerializer
    implements PrimitiveSerializer<AlertmanagerWebhookAlertsInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'firing': 'firing',
    'resolved': 'resolved',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'firing': 'firing',
    'resolved': 'resolved',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AlertmanagerWebhookAlertsInnerStatusEnum
  ];
  @override
  final String wireName = 'AlertmanagerWebhookAlertsInnerStatusEnum';

  @override
  Object serialize(Serializers serializers,
          AlertmanagerWebhookAlertsInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlertmanagerWebhookAlertsInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlertmanagerWebhookAlertsInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlertmanagerWebhookAlertsInner extends AlertmanagerWebhookAlertsInner {
  @override
  final AlertmanagerWebhookAlertsInnerStatusEnum status;
  @override
  final BuiltMap<String, String> labels;
  @override
  final BuiltMap<String, String>? annotations;
  @override
  final DateTime startsAt;
  @override
  final DateTime? endsAt;
  @override
  final String? generatorURL;
  @override
  final String fingerprint;

  factory _$AlertmanagerWebhookAlertsInner(
          [void Function(AlertmanagerWebhookAlertsInnerBuilder)? updates]) =>
      (AlertmanagerWebhookAlertsInnerBuilder()..update(updates))._build();

  _$AlertmanagerWebhookAlertsInner._(
      {required this.status,
      required this.labels,
      this.annotations,
      required this.startsAt,
      this.endsAt,
      this.generatorURL,
      required this.fingerprint})
      : super._();
  @override
  AlertmanagerWebhookAlertsInner rebuild(
          void Function(AlertmanagerWebhookAlertsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertmanagerWebhookAlertsInnerBuilder toBuilder() =>
      AlertmanagerWebhookAlertsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertmanagerWebhookAlertsInner &&
        status == other.status &&
        labels == other.labels &&
        annotations == other.annotations &&
        startsAt == other.startsAt &&
        endsAt == other.endsAt &&
        generatorURL == other.generatorURL &&
        fingerprint == other.fingerprint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, labels.hashCode);
    _$hash = $jc(_$hash, annotations.hashCode);
    _$hash = $jc(_$hash, startsAt.hashCode);
    _$hash = $jc(_$hash, endsAt.hashCode);
    _$hash = $jc(_$hash, generatorURL.hashCode);
    _$hash = $jc(_$hash, fingerprint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertmanagerWebhookAlertsInner')
          ..add('status', status)
          ..add('labels', labels)
          ..add('annotations', annotations)
          ..add('startsAt', startsAt)
          ..add('endsAt', endsAt)
          ..add('generatorURL', generatorURL)
          ..add('fingerprint', fingerprint))
        .toString();
  }
}

class AlertmanagerWebhookAlertsInnerBuilder
    implements
        Builder<AlertmanagerWebhookAlertsInner,
            AlertmanagerWebhookAlertsInnerBuilder> {
  _$AlertmanagerWebhookAlertsInner? _$v;

  AlertmanagerWebhookAlertsInnerStatusEnum? _status;
  AlertmanagerWebhookAlertsInnerStatusEnum? get status => _$this._status;
  set status(AlertmanagerWebhookAlertsInnerStatusEnum? status) =>
      _$this._status = status;

  MapBuilder<String, String>? _labels;
  MapBuilder<String, String> get labels =>
      _$this._labels ??= MapBuilder<String, String>();
  set labels(MapBuilder<String, String>? labels) => _$this._labels = labels;

  MapBuilder<String, String>? _annotations;
  MapBuilder<String, String> get annotations =>
      _$this._annotations ??= MapBuilder<String, String>();
  set annotations(MapBuilder<String, String>? annotations) =>
      _$this._annotations = annotations;

  DateTime? _startsAt;
  DateTime? get startsAt => _$this._startsAt;
  set startsAt(DateTime? startsAt) => _$this._startsAt = startsAt;

  DateTime? _endsAt;
  DateTime? get endsAt => _$this._endsAt;
  set endsAt(DateTime? endsAt) => _$this._endsAt = endsAt;

  String? _generatorURL;
  String? get generatorURL => _$this._generatorURL;
  set generatorURL(String? generatorURL) => _$this._generatorURL = generatorURL;

  String? _fingerprint;
  String? get fingerprint => _$this._fingerprint;
  set fingerprint(String? fingerprint) => _$this._fingerprint = fingerprint;

  AlertmanagerWebhookAlertsInnerBuilder() {
    AlertmanagerWebhookAlertsInner._defaults(this);
  }

  AlertmanagerWebhookAlertsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _labels = $v.labels.toBuilder();
      _annotations = $v.annotations?.toBuilder();
      _startsAt = $v.startsAt;
      _endsAt = $v.endsAt;
      _generatorURL = $v.generatorURL;
      _fingerprint = $v.fingerprint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertmanagerWebhookAlertsInner other) {
    _$v = other as _$AlertmanagerWebhookAlertsInner;
  }

  @override
  void update(void Function(AlertmanagerWebhookAlertsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertmanagerWebhookAlertsInner build() => _build();

  _$AlertmanagerWebhookAlertsInner _build() {
    _$AlertmanagerWebhookAlertsInner _$result;
    try {
      _$result = _$v ??
          _$AlertmanagerWebhookAlertsInner._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'AlertmanagerWebhookAlertsInner', 'status'),
            labels: labels.build(),
            annotations: _annotations?.build(),
            startsAt: BuiltValueNullFieldError.checkNotNull(
                startsAt, r'AlertmanagerWebhookAlertsInner', 'startsAt'),
            endsAt: endsAt,
            generatorURL: generatorURL,
            fingerprint: BuiltValueNullFieldError.checkNotNull(
                fingerprint, r'AlertmanagerWebhookAlertsInner', 'fingerprint'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labels';
        labels.build();
        _$failedField = 'annotations';
        _annotations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AlertmanagerWebhookAlertsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
