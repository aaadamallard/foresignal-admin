// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationEventEnum _$notificationEventEnum_alert =
    const NotificationEventEnum._('alert');
const NotificationEventEnum _$notificationEventEnum_briefing =
    const NotificationEventEnum._('briefing');
const NotificationEventEnum _$notificationEventEnum_system =
    const NotificationEventEnum._('system');
const NotificationEventEnum _$notificationEventEnum_analystPeriodNote =
    const NotificationEventEnum._('analystPeriodNote');
const NotificationEventEnum _$notificationEventEnum_situationPeriodActivated =
    const NotificationEventEnum._('situationPeriodActivated');
const NotificationEventEnum _$notificationEventEnum_situationPeriodEscalated =
    const NotificationEventEnum._('situationPeriodEscalated');
const NotificationEventEnum _$notificationEventEnum_findingPeriodSignificant =
    const NotificationEventEnum._('findingPeriodSignificant');
const NotificationEventEnum
_$notificationEventEnum_forecastPeriodResolutionNeeded =
    const NotificationEventEnum._('forecastPeriodResolutionNeeded');
const NotificationEventEnum
_$notificationEventEnum_hypothesisPeriodBandChanged =
    const NotificationEventEnum._('hypothesisPeriodBandChanged');
const NotificationEventEnum _$notificationEventEnum_assessmentPeriodPublished =
    const NotificationEventEnum._('assessmentPeriodPublished');

NotificationEventEnum _$notificationEventEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$notificationEventEnum_alert;
    case 'briefing':
      return _$notificationEventEnum_briefing;
    case 'system':
      return _$notificationEventEnum_system;
    case 'analystPeriodNote':
      return _$notificationEventEnum_analystPeriodNote;
    case 'situationPeriodActivated':
      return _$notificationEventEnum_situationPeriodActivated;
    case 'situationPeriodEscalated':
      return _$notificationEventEnum_situationPeriodEscalated;
    case 'findingPeriodSignificant':
      return _$notificationEventEnum_findingPeriodSignificant;
    case 'forecastPeriodResolutionNeeded':
      return _$notificationEventEnum_forecastPeriodResolutionNeeded;
    case 'hypothesisPeriodBandChanged':
      return _$notificationEventEnum_hypothesisPeriodBandChanged;
    case 'assessmentPeriodPublished':
      return _$notificationEventEnum_assessmentPeriodPublished;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationEventEnum> _$notificationEventEnumValues =
    BuiltSet<NotificationEventEnum>(const <NotificationEventEnum>[
      _$notificationEventEnum_alert,
      _$notificationEventEnum_briefing,
      _$notificationEventEnum_system,
      _$notificationEventEnum_analystPeriodNote,
      _$notificationEventEnum_situationPeriodActivated,
      _$notificationEventEnum_situationPeriodEscalated,
      _$notificationEventEnum_findingPeriodSignificant,
      _$notificationEventEnum_forecastPeriodResolutionNeeded,
      _$notificationEventEnum_hypothesisPeriodBandChanged,
      _$notificationEventEnum_assessmentPeriodPublished,
    ]);

const NotificationSeverityEnum _$notificationSeverityEnum_info =
    const NotificationSeverityEnum._('info');
const NotificationSeverityEnum _$notificationSeverityEnum_warning =
    const NotificationSeverityEnum._('warning');
const NotificationSeverityEnum _$notificationSeverityEnum_critical =
    const NotificationSeverityEnum._('critical');

NotificationSeverityEnum _$notificationSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$notificationSeverityEnum_info;
    case 'warning':
      return _$notificationSeverityEnum_warning;
    case 'critical':
      return _$notificationSeverityEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationSeverityEnum> _$notificationSeverityEnumValues =
    BuiltSet<NotificationSeverityEnum>(const <NotificationSeverityEnum>[
      _$notificationSeverityEnum_info,
      _$notificationSeverityEnum_warning,
      _$notificationSeverityEnum_critical,
    ]);

const NotificationAlertStateEnum _$notificationAlertStateEnum_firing =
    const NotificationAlertStateEnum._('firing');
const NotificationAlertStateEnum _$notificationAlertStateEnum_acknowledged =
    const NotificationAlertStateEnum._('acknowledged');
const NotificationAlertStateEnum _$notificationAlertStateEnum_resolved =
    const NotificationAlertStateEnum._('resolved');

NotificationAlertStateEnum _$notificationAlertStateEnumValueOf(String name) {
  switch (name) {
    case 'firing':
      return _$notificationAlertStateEnum_firing;
    case 'acknowledged':
      return _$notificationAlertStateEnum_acknowledged;
    case 'resolved':
      return _$notificationAlertStateEnum_resolved;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationAlertStateEnum> _$notificationAlertStateEnumValues =
    BuiltSet<NotificationAlertStateEnum>(const <NotificationAlertStateEnum>[
      _$notificationAlertStateEnum_firing,
      _$notificationAlertStateEnum_acknowledged,
      _$notificationAlertStateEnum_resolved,
    ]);

Serializer<NotificationEventEnum> _$notificationEventEnumSerializer =
    _$NotificationEventEnumSerializer();
Serializer<NotificationSeverityEnum> _$notificationSeverityEnumSerializer =
    _$NotificationSeverityEnumSerializer();
Serializer<NotificationAlertStateEnum> _$notificationAlertStateEnumSerializer =
    _$NotificationAlertStateEnumSerializer();

class _$NotificationEventEnumSerializer
    implements PrimitiveSerializer<NotificationEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
    'analystPeriodNote': 'analyst.note',
    'situationPeriodActivated': 'situation.activated',
    'situationPeriodEscalated': 'situation.escalated',
    'findingPeriodSignificant': 'finding.significant',
    'forecastPeriodResolutionNeeded': 'forecast.resolution_needed',
    'hypothesisPeriodBandChanged': 'hypothesis.band_changed',
    'assessmentPeriodPublished': 'assessment.published',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
    'analyst.note': 'analystPeriodNote',
    'situation.activated': 'situationPeriodActivated',
    'situation.escalated': 'situationPeriodEscalated',
    'finding.significant': 'findingPeriodSignificant',
    'forecast.resolution_needed': 'forecastPeriodResolutionNeeded',
    'hypothesis.band_changed': 'hypothesisPeriodBandChanged',
    'assessment.published': 'assessmentPeriodPublished',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationEventEnum];
  @override
  final String wireName = 'NotificationEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NotificationSeverityEnumSerializer
    implements PrimitiveSerializer<NotificationSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationSeverityEnum];
  @override
  final String wireName = 'NotificationSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NotificationAlertStateEnumSerializer
    implements PrimitiveSerializer<NotificationAlertStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationAlertStateEnum];
  @override
  final String wireName = 'NotificationAlertStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationAlertStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationAlertStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationAlertStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Notification extends Notification {
  @override
  final int id;
  @override
  final NotificationEventEnum event;
  @override
  final String? subtype;
  @override
  final NotificationSeverityEnum severity;
  @override
  final String title;
  @override
  final String? body;
  @override
  final int? alertId;
  @override
  final String? briefingRunId;
  @override
  final String? ruleId;
  @override
  final DateTime createdAt;
  @override
  final bool read;
  @override
  final NotificationAlertStateEnum? alertState;

  factory _$Notification([void Function(NotificationBuilder)? updates]) =>
      (NotificationBuilder()..update(updates))._build();

  _$Notification._({
    required this.id,
    required this.event,
    this.subtype,
    required this.severity,
    required this.title,
    this.body,
    this.alertId,
    this.briefingRunId,
    this.ruleId,
    required this.createdAt,
    required this.read,
    this.alertState,
  }) : super._();
  @override
  Notification rebuild(void Function(NotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBuilder toBuilder() => NotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notification &&
        id == other.id &&
        event == other.event &&
        subtype == other.subtype &&
        severity == other.severity &&
        title == other.title &&
        body == other.body &&
        alertId == other.alertId &&
        briefingRunId == other.briefingRunId &&
        ruleId == other.ruleId &&
        createdAt == other.createdAt &&
        read == other.read &&
        alertState == other.alertState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, subtype.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, briefingRunId.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jc(_$hash, alertState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Notification')
          ..add('id', id)
          ..add('event', event)
          ..add('subtype', subtype)
          ..add('severity', severity)
          ..add('title', title)
          ..add('body', body)
          ..add('alertId', alertId)
          ..add('briefingRunId', briefingRunId)
          ..add('ruleId', ruleId)
          ..add('createdAt', createdAt)
          ..add('read', read)
          ..add('alertState', alertState))
        .toString();
  }
}

class NotificationBuilder
    implements Builder<Notification, NotificationBuilder> {
  _$Notification? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  NotificationEventEnum? _event;
  NotificationEventEnum? get event => _$this._event;
  set event(NotificationEventEnum? event) => _$this._event = event;

  String? _subtype;
  String? get subtype => _$this._subtype;
  set subtype(String? subtype) => _$this._subtype = subtype;

  NotificationSeverityEnum? _severity;
  NotificationSeverityEnum? get severity => _$this._severity;
  set severity(NotificationSeverityEnum? severity) =>
      _$this._severity = severity;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  String? _briefingRunId;
  String? get briefingRunId => _$this._briefingRunId;
  set briefingRunId(String? briefingRunId) =>
      _$this._briefingRunId = briefingRunId;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  NotificationAlertStateEnum? _alertState;
  NotificationAlertStateEnum? get alertState => _$this._alertState;
  set alertState(NotificationAlertStateEnum? alertState) =>
      _$this._alertState = alertState;

  NotificationBuilder() {
    Notification._defaults(this);
  }

  NotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _event = $v.event;
      _subtype = $v.subtype;
      _severity = $v.severity;
      _title = $v.title;
      _body = $v.body;
      _alertId = $v.alertId;
      _briefingRunId = $v.briefingRunId;
      _ruleId = $v.ruleId;
      _createdAt = $v.createdAt;
      _read = $v.read;
      _alertState = $v.alertState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notification other) {
    _$v = other as _$Notification;
  }

  @override
  void update(void Function(NotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Notification build() => _build();

  _$Notification _build() {
    final _$result =
        _$v ??
        _$Notification._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Notification', 'id'),
          event: BuiltValueNullFieldError.checkNotNull(
            event,
            r'Notification',
            'event',
          ),
          subtype: subtype,
          severity: BuiltValueNullFieldError.checkNotNull(
            severity,
            r'Notification',
            'severity',
          ),
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'Notification',
            'title',
          ),
          body: body,
          alertId: alertId,
          briefingRunId: briefingRunId,
          ruleId: ruleId,
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'Notification',
            'createdAt',
          ),
          read: BuiltValueNullFieldError.checkNotNull(
            read,
            r'Notification',
            'read',
          ),
          alertState: alertState,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
