// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushPayloadVEnum _$pushPayloadVEnum_number1 = const PushPayloadVEnum._(
  'number1',
);
const PushPayloadVEnum _$pushPayloadVEnum_unknownDefaultOpenApi =
    const PushPayloadVEnum._('unknownDefaultOpenApi');

PushPayloadVEnum _$pushPayloadVEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$pushPayloadVEnum_number1;
    case 'unknownDefaultOpenApi':
      return _$pushPayloadVEnum_unknownDefaultOpenApi;
    default:
      return _$pushPayloadVEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushPayloadVEnum> _$pushPayloadVEnumValues =
    BuiltSet<PushPayloadVEnum>(const <PushPayloadVEnum>[
      _$pushPayloadVEnum_number1,
      _$pushPayloadVEnum_unknownDefaultOpenApi,
    ]);

const PushPayloadEventEnum _$pushPayloadEventEnum_alert =
    const PushPayloadEventEnum._('alert');
const PushPayloadEventEnum _$pushPayloadEventEnum_briefing =
    const PushPayloadEventEnum._('briefing');
const PushPayloadEventEnum _$pushPayloadEventEnum_system =
    const PushPayloadEventEnum._('system');
const PushPayloadEventEnum _$pushPayloadEventEnum_verify =
    const PushPayloadEventEnum._('verify');
const PushPayloadEventEnum _$pushPayloadEventEnum_unknownDefaultOpenApi =
    const PushPayloadEventEnum._('unknownDefaultOpenApi');

PushPayloadEventEnum _$pushPayloadEventEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$pushPayloadEventEnum_alert;
    case 'briefing':
      return _$pushPayloadEventEnum_briefing;
    case 'system':
      return _$pushPayloadEventEnum_system;
    case 'verify':
      return _$pushPayloadEventEnum_verify;
    case 'unknownDefaultOpenApi':
      return _$pushPayloadEventEnum_unknownDefaultOpenApi;
    default:
      return _$pushPayloadEventEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushPayloadEventEnum> _$pushPayloadEventEnumValues =
    BuiltSet<PushPayloadEventEnum>(const <PushPayloadEventEnum>[
      _$pushPayloadEventEnum_alert,
      _$pushPayloadEventEnum_briefing,
      _$pushPayloadEventEnum_system,
      _$pushPayloadEventEnum_verify,
      _$pushPayloadEventEnum_unknownDefaultOpenApi,
    ]);

const PushPayloadSeverityEnum _$pushPayloadSeverityEnum_info =
    const PushPayloadSeverityEnum._('info');
const PushPayloadSeverityEnum _$pushPayloadSeverityEnum_warning =
    const PushPayloadSeverityEnum._('warning');
const PushPayloadSeverityEnum _$pushPayloadSeverityEnum_critical =
    const PushPayloadSeverityEnum._('critical');
const PushPayloadSeverityEnum _$pushPayloadSeverityEnum_unknownDefaultOpenApi =
    const PushPayloadSeverityEnum._('unknownDefaultOpenApi');

PushPayloadSeverityEnum _$pushPayloadSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$pushPayloadSeverityEnum_info;
    case 'warning':
      return _$pushPayloadSeverityEnum_warning;
    case 'critical':
      return _$pushPayloadSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$pushPayloadSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$pushPayloadSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushPayloadSeverityEnum> _$pushPayloadSeverityEnumValues =
    BuiltSet<PushPayloadSeverityEnum>(const <PushPayloadSeverityEnum>[
      _$pushPayloadSeverityEnum_info,
      _$pushPayloadSeverityEnum_warning,
      _$pushPayloadSeverityEnum_critical,
      _$pushPayloadSeverityEnum_unknownDefaultOpenApi,
    ]);

Serializer<PushPayloadVEnum> _$pushPayloadVEnumSerializer =
    _$PushPayloadVEnumSerializer();
Serializer<PushPayloadEventEnum> _$pushPayloadEventEnumSerializer =
    _$PushPayloadEventEnumSerializer();
Serializer<PushPayloadSeverityEnum> _$pushPayloadSeverityEnumSerializer =
    _$PushPayloadSeverityEnumSerializer();

class _$PushPayloadVEnumSerializer
    implements PrimitiveSerializer<PushPayloadVEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushPayloadVEnum];
  @override
  final String wireName = 'PushPayloadVEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushPayloadVEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushPayloadVEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushPayloadVEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushPayloadEventEnumSerializer
    implements PrimitiveSerializer<PushPayloadEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
    'verify': 'verify',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
    'verify': 'verify',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushPayloadEventEnum];
  @override
  final String wireName = 'PushPayloadEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushPayloadEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushPayloadEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushPayloadEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushPayloadSeverityEnumSerializer
    implements PrimitiveSerializer<PushPayloadSeverityEnum> {
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
  final Iterable<Type> types = const <Type>[PushPayloadSeverityEnum];
  @override
  final String wireName = 'PushPayloadSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushPayloadSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushPayloadSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushPayloadSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushPayload extends PushPayload {
  @override
  final PushPayloadVEnum v;
  @override
  final PushPayloadEventEnum event;
  @override
  final int? id;
  @override
  final int? alertId;
  @override
  final String? ruleId;
  @override
  final PushPayloadSeverityEnum? severity;
  @override
  final String? title;
  @override
  final String? shortTitle;
  @override
  final String? body;
  @override
  final String? url;
  @override
  final PushPayloadLinks? links;
  @override
  final BuiltList<String>? tags;
  @override
  final String? lang;
  @override
  final String? tag;
  @override
  final bool? silent;
  @override
  final int? ts;
  @override
  final BuiltList<PushPayloadActionsInner>? actions;
  @override
  final String? confirmUrl;
  @override
  final String? subscriptionId;
  @override
  final String? code;
  @override
  final bool? exercise;

  factory _$PushPayload([void Function(PushPayloadBuilder)? updates]) =>
      (PushPayloadBuilder()..update(updates))._build();

  _$PushPayload._({
    required this.v,
    required this.event,
    this.id,
    this.alertId,
    this.ruleId,
    this.severity,
    this.title,
    this.shortTitle,
    this.body,
    this.url,
    this.links,
    this.tags,
    this.lang,
    this.tag,
    this.silent,
    this.ts,
    this.actions,
    this.confirmUrl,
    this.subscriptionId,
    this.code,
    this.exercise,
  }) : super._();
  @override
  PushPayload rebuild(void Function(PushPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushPayloadBuilder toBuilder() => PushPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushPayload &&
        v == other.v &&
        event == other.event &&
        id == other.id &&
        alertId == other.alertId &&
        ruleId == other.ruleId &&
        severity == other.severity &&
        title == other.title &&
        shortTitle == other.shortTitle &&
        body == other.body &&
        url == other.url &&
        links == other.links &&
        tags == other.tags &&
        lang == other.lang &&
        tag == other.tag &&
        silent == other.silent &&
        ts == other.ts &&
        actions == other.actions &&
        confirmUrl == other.confirmUrl &&
        subscriptionId == other.subscriptionId &&
        code == other.code &&
        exercise == other.exercise;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, v.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, shortTitle.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, silent.hashCode);
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jc(_$hash, confirmUrl.hashCode);
    _$hash = $jc(_$hash, subscriptionId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, exercise.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushPayload')
          ..add('v', v)
          ..add('event', event)
          ..add('id', id)
          ..add('alertId', alertId)
          ..add('ruleId', ruleId)
          ..add('severity', severity)
          ..add('title', title)
          ..add('shortTitle', shortTitle)
          ..add('body', body)
          ..add('url', url)
          ..add('links', links)
          ..add('tags', tags)
          ..add('lang', lang)
          ..add('tag', tag)
          ..add('silent', silent)
          ..add('ts', ts)
          ..add('actions', actions)
          ..add('confirmUrl', confirmUrl)
          ..add('subscriptionId', subscriptionId)
          ..add('code', code)
          ..add('exercise', exercise))
        .toString();
  }
}

class PushPayloadBuilder implements Builder<PushPayload, PushPayloadBuilder> {
  _$PushPayload? _$v;

  PushPayloadVEnum? _v;
  PushPayloadVEnum? get v => _$this._v;
  set v(PushPayloadVEnum? v) => _$this._v = v;

  PushPayloadEventEnum? _event;
  PushPayloadEventEnum? get event => _$this._event;
  set event(PushPayloadEventEnum? event) => _$this._event = event;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  PushPayloadSeverityEnum? _severity;
  PushPayloadSeverityEnum? get severity => _$this._severity;
  set severity(PushPayloadSeverityEnum? severity) =>
      _$this._severity = severity;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shortTitle;
  String? get shortTitle => _$this._shortTitle;
  set shortTitle(String? shortTitle) => _$this._shortTitle = shortTitle;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  PushPayloadLinksBuilder? _links;
  PushPayloadLinksBuilder get links =>
      _$this._links ??= PushPayloadLinksBuilder();
  set links(PushPayloadLinksBuilder? links) => _$this._links = links;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  bool? _silent;
  bool? get silent => _$this._silent;
  set silent(bool? silent) => _$this._silent = silent;

  int? _ts;
  int? get ts => _$this._ts;
  set ts(int? ts) => _$this._ts = ts;

  ListBuilder<PushPayloadActionsInner>? _actions;
  ListBuilder<PushPayloadActionsInner> get actions =>
      _$this._actions ??= ListBuilder<PushPayloadActionsInner>();
  set actions(ListBuilder<PushPayloadActionsInner>? actions) =>
      _$this._actions = actions;

  String? _confirmUrl;
  String? get confirmUrl => _$this._confirmUrl;
  set confirmUrl(String? confirmUrl) => _$this._confirmUrl = confirmUrl;

  String? _subscriptionId;
  String? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(String? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  bool? _exercise;
  bool? get exercise => _$this._exercise;
  set exercise(bool? exercise) => _$this._exercise = exercise;

  PushPayloadBuilder() {
    PushPayload._defaults(this);
  }

  PushPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _v = $v.v;
      _event = $v.event;
      _id = $v.id;
      _alertId = $v.alertId;
      _ruleId = $v.ruleId;
      _severity = $v.severity;
      _title = $v.title;
      _shortTitle = $v.shortTitle;
      _body = $v.body;
      _url = $v.url;
      _links = $v.links?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _lang = $v.lang;
      _tag = $v.tag;
      _silent = $v.silent;
      _ts = $v.ts;
      _actions = $v.actions?.toBuilder();
      _confirmUrl = $v.confirmUrl;
      _subscriptionId = $v.subscriptionId;
      _code = $v.code;
      _exercise = $v.exercise;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushPayload other) {
    _$v = other as _$PushPayload;
  }

  @override
  void update(void Function(PushPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushPayload build() => _build();

  _$PushPayload _build() {
    _$PushPayload _$result;
    try {
      _$result =
          _$v ??
          _$PushPayload._(
            v: BuiltValueNullFieldError.checkNotNull(v, r'PushPayload', 'v'),
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'PushPayload',
              'event',
            ),
            id: id,
            alertId: alertId,
            ruleId: ruleId,
            severity: severity,
            title: title,
            shortTitle: shortTitle,
            body: body,
            url: url,
            links: _links?.build(),
            tags: _tags?.build(),
            lang: lang,
            tag: tag,
            silent: silent,
            ts: ts,
            actions: _actions?.build(),
            confirmUrl: confirmUrl,
            subscriptionId: subscriptionId,
            code: code,
            exercise: exercise,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'actions';
        _actions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PushPayload',
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
