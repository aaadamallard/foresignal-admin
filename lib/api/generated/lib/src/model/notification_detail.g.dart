// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationDetailSeverityEnum _$notificationDetailSeverityEnum_info =
    const NotificationDetailSeverityEnum._('info');
const NotificationDetailSeverityEnum _$notificationDetailSeverityEnum_warning =
    const NotificationDetailSeverityEnum._('warning');
const NotificationDetailSeverityEnum _$notificationDetailSeverityEnum_critical =
    const NotificationDetailSeverityEnum._('critical');
const NotificationDetailSeverityEnum
_$notificationDetailSeverityEnum_unknownDefaultOpenApi =
    const NotificationDetailSeverityEnum._('unknownDefaultOpenApi');

NotificationDetailSeverityEnum _$notificationDetailSeverityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'info':
      return _$notificationDetailSeverityEnum_info;
    case 'warning':
      return _$notificationDetailSeverityEnum_warning;
    case 'critical':
      return _$notificationDetailSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$notificationDetailSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$notificationDetailSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NotificationDetailSeverityEnum>
_$notificationDetailSeverityEnumValues =
    BuiltSet<NotificationDetailSeverityEnum>(
      const <NotificationDetailSeverityEnum>[
        _$notificationDetailSeverityEnum_info,
        _$notificationDetailSeverityEnum_warning,
        _$notificationDetailSeverityEnum_critical,
        _$notificationDetailSeverityEnum_unknownDefaultOpenApi,
      ],
    );

const NotificationDetailAlertStateEnum
_$notificationDetailAlertStateEnum_firing =
    const NotificationDetailAlertStateEnum._('firing');
const NotificationDetailAlertStateEnum
_$notificationDetailAlertStateEnum_acknowledged =
    const NotificationDetailAlertStateEnum._('acknowledged');
const NotificationDetailAlertStateEnum
_$notificationDetailAlertStateEnum_resolved =
    const NotificationDetailAlertStateEnum._('resolved');
const NotificationDetailAlertStateEnum
_$notificationDetailAlertStateEnum_unknownDefaultOpenApi =
    const NotificationDetailAlertStateEnum._('unknownDefaultOpenApi');

NotificationDetailAlertStateEnum _$notificationDetailAlertStateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'firing':
      return _$notificationDetailAlertStateEnum_firing;
    case 'acknowledged':
      return _$notificationDetailAlertStateEnum_acknowledged;
    case 'resolved':
      return _$notificationDetailAlertStateEnum_resolved;
    case 'unknownDefaultOpenApi':
      return _$notificationDetailAlertStateEnum_unknownDefaultOpenApi;
    default:
      return _$notificationDetailAlertStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NotificationDetailAlertStateEnum>
_$notificationDetailAlertStateEnumValues =
    BuiltSet<NotificationDetailAlertStateEnum>(
      const <NotificationDetailAlertStateEnum>[
        _$notificationDetailAlertStateEnum_firing,
        _$notificationDetailAlertStateEnum_acknowledged,
        _$notificationDetailAlertStateEnum_resolved,
        _$notificationDetailAlertStateEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<NotificationDetailSeverityEnum>
_$notificationDetailSeverityEnumSerializer =
    _$NotificationDetailSeverityEnumSerializer();
Serializer<NotificationDetailAlertStateEnum>
_$notificationDetailAlertStateEnumSerializer =
    _$NotificationDetailAlertStateEnumSerializer();

class _$NotificationDetailSeverityEnumSerializer
    implements PrimitiveSerializer<NotificationDetailSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationDetailSeverityEnum];
  @override
  final String wireName = 'NotificationDetailSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationDetailSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationDetailSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationDetailSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NotificationDetailAlertStateEnumSerializer
    implements PrimitiveSerializer<NotificationDetailAlertStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationDetailAlertStateEnum];
  @override
  final String wireName = 'NotificationDetailAlertStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    NotificationDetailAlertStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NotificationDetailAlertStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NotificationDetailAlertStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NotificationDetail extends NotificationDetail {
  @override
  final int id;
  @override
  final String event;
  @override
  final String? subtype;
  @override
  final NotificationDetailSeverityEnum severity;
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
  final NotificationDetailAlertStateEnum? alertState;
  @override
  final BuiltList<NotificationLink>? links;
  @override
  final BuiltList<NotificationAction>? actions;

  factory _$NotificationDetail([
    void Function(NotificationDetailBuilder)? updates,
  ]) => (NotificationDetailBuilder()..update(updates))._build();

  _$NotificationDetail._({
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
    this.links,
    this.actions,
  }) : super._();
  @override
  NotificationDetail rebuild(
    void Function(NotificationDetailBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationDetailBuilder toBuilder() =>
      NotificationDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationDetail &&
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
        alertState == other.alertState &&
        links == other.links &&
        actions == other.actions;
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
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationDetail')
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
          ..add('alertState', alertState)
          ..add('links', links)
          ..add('actions', actions))
        .toString();
  }
}

class NotificationDetailBuilder
    implements Builder<NotificationDetail, NotificationDetailBuilder> {
  _$NotificationDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _subtype;
  String? get subtype => _$this._subtype;
  set subtype(String? subtype) => _$this._subtype = subtype;

  NotificationDetailSeverityEnum? _severity;
  NotificationDetailSeverityEnum? get severity => _$this._severity;
  set severity(NotificationDetailSeverityEnum? severity) =>
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

  NotificationDetailAlertStateEnum? _alertState;
  NotificationDetailAlertStateEnum? get alertState => _$this._alertState;
  set alertState(NotificationDetailAlertStateEnum? alertState) =>
      _$this._alertState = alertState;

  ListBuilder<NotificationLink>? _links;
  ListBuilder<NotificationLink> get links =>
      _$this._links ??= ListBuilder<NotificationLink>();
  set links(ListBuilder<NotificationLink>? links) => _$this._links = links;

  ListBuilder<NotificationAction>? _actions;
  ListBuilder<NotificationAction> get actions =>
      _$this._actions ??= ListBuilder<NotificationAction>();
  set actions(ListBuilder<NotificationAction>? actions) =>
      _$this._actions = actions;

  NotificationDetailBuilder() {
    NotificationDetail._defaults(this);
  }

  NotificationDetailBuilder get _$this {
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
      _links = $v.links?.toBuilder();
      _actions = $v.actions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationDetail other) {
    _$v = other as _$NotificationDetail;
  }

  @override
  void update(void Function(NotificationDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationDetail build() => _build();

  _$NotificationDetail _build() {
    _$NotificationDetail _$result;
    try {
      _$result =
          _$v ??
          _$NotificationDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'NotificationDetail',
              'id',
            ),
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'NotificationDetail',
              'event',
            ),
            subtype: subtype,
            severity: BuiltValueNullFieldError.checkNotNull(
              severity,
              r'NotificationDetail',
              'severity',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'NotificationDetail',
              'title',
            ),
            body: body,
            alertId: alertId,
            briefingRunId: briefingRunId,
            ruleId: ruleId,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'NotificationDetail',
              'createdAt',
            ),
            read: BuiltValueNullFieldError.checkNotNull(
              read,
              r'NotificationDetail',
              'read',
            ),
            alertState: alertState,
            links: _links?.build(),
            actions: _actions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'actions';
        _actions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationDetail',
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
