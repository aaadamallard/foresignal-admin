// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger_rule_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TriggerRuleInputModeEnum _$triggerRuleInputModeEnum_match =
    const TriggerRuleInputModeEnum._('match');
const TriggerRuleInputModeEnum _$triggerRuleInputModeEnum_enter =
    const TriggerRuleInputModeEnum._('enter');
const TriggerRuleInputModeEnum _$triggerRuleInputModeEnum_exit =
    const TriggerRuleInputModeEnum._('exit');

TriggerRuleInputModeEnum _$triggerRuleInputModeEnumValueOf(String name) {
  switch (name) {
    case 'match':
      return _$triggerRuleInputModeEnum_match;
    case 'enter':
      return _$triggerRuleInputModeEnum_enter;
    case 'exit':
      return _$triggerRuleInputModeEnum_exit;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TriggerRuleInputModeEnum> _$triggerRuleInputModeEnumValues =
    BuiltSet<TriggerRuleInputModeEnum>(const <TriggerRuleInputModeEnum>[
      _$triggerRuleInputModeEnum_match,
      _$triggerRuleInputModeEnum_enter,
      _$triggerRuleInputModeEnum_exit,
    ]);

const TriggerRuleInputSeverityEnum _$triggerRuleInputSeverityEnum_info =
    const TriggerRuleInputSeverityEnum._('info');
const TriggerRuleInputSeverityEnum _$triggerRuleInputSeverityEnum_warning =
    const TriggerRuleInputSeverityEnum._('warning');
const TriggerRuleInputSeverityEnum _$triggerRuleInputSeverityEnum_critical =
    const TriggerRuleInputSeverityEnum._('critical');

TriggerRuleInputSeverityEnum _$triggerRuleInputSeverityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'info':
      return _$triggerRuleInputSeverityEnum_info;
    case 'warning':
      return _$triggerRuleInputSeverityEnum_warning;
    case 'critical':
      return _$triggerRuleInputSeverityEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TriggerRuleInputSeverityEnum>
_$triggerRuleInputSeverityEnumValues =
    BuiltSet<TriggerRuleInputSeverityEnum>(const <TriggerRuleInputSeverityEnum>[
      _$triggerRuleInputSeverityEnum_info,
      _$triggerRuleInputSeverityEnum_warning,
      _$triggerRuleInputSeverityEnum_critical,
    ]);

const TriggerRuleInputCooldownScopeEnum
_$triggerRuleInputCooldownScopeEnum_record =
    const TriggerRuleInputCooldownScopeEnum._('record');
const TriggerRuleInputCooldownScopeEnum
_$triggerRuleInputCooldownScopeEnum_rule =
    const TriggerRuleInputCooldownScopeEnum._('rule');

TriggerRuleInputCooldownScopeEnum _$triggerRuleInputCooldownScopeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'record':
      return _$triggerRuleInputCooldownScopeEnum_record;
    case 'rule':
      return _$triggerRuleInputCooldownScopeEnum_rule;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TriggerRuleInputCooldownScopeEnum>
_$triggerRuleInputCooldownScopeEnumValues =
    BuiltSet<TriggerRuleInputCooldownScopeEnum>(
      const <TriggerRuleInputCooldownScopeEnum>[
        _$triggerRuleInputCooldownScopeEnum_record,
        _$triggerRuleInputCooldownScopeEnum_rule,
      ],
    );

const TriggerRuleInputWeatherContextEnum
_$triggerRuleInputWeatherContextEnum_auto =
    const TriggerRuleInputWeatherContextEnum._('auto');
const TriggerRuleInputWeatherContextEnum
_$triggerRuleInputWeatherContextEnum_off =
    const TriggerRuleInputWeatherContextEnum._('off');

TriggerRuleInputWeatherContextEnum _$triggerRuleInputWeatherContextEnumValueOf(
  String name,
) {
  switch (name) {
    case 'auto':
      return _$triggerRuleInputWeatherContextEnum_auto;
    case 'off':
      return _$triggerRuleInputWeatherContextEnum_off;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TriggerRuleInputWeatherContextEnum>
_$triggerRuleInputWeatherContextEnumValues =
    BuiltSet<TriggerRuleInputWeatherContextEnum>(
      const <TriggerRuleInputWeatherContextEnum>[
        _$triggerRuleInputWeatherContextEnum_auto,
        _$triggerRuleInputWeatherContextEnum_off,
      ],
    );

const TriggerRuleInputTypeEnum _$triggerRuleInputTypeEnum_record =
    const TriggerRuleInputTypeEnum._('record');
const TriggerRuleInputTypeEnum _$triggerRuleInputTypeEnum_count =
    const TriggerRuleInputTypeEnum._('count');
const TriggerRuleInputTypeEnum _$triggerRuleInputTypeEnum_absence =
    const TriggerRuleInputTypeEnum._('absence');
const TriggerRuleInputTypeEnum _$triggerRuleInputTypeEnum_anomaly =
    const TriggerRuleInputTypeEnum._('anomaly');

TriggerRuleInputTypeEnum _$triggerRuleInputTypeEnumValueOf(String name) {
  switch (name) {
    case 'record':
      return _$triggerRuleInputTypeEnum_record;
    case 'count':
      return _$triggerRuleInputTypeEnum_count;
    case 'absence':
      return _$triggerRuleInputTypeEnum_absence;
    case 'anomaly':
      return _$triggerRuleInputTypeEnum_anomaly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TriggerRuleInputTypeEnum> _$triggerRuleInputTypeEnumValues =
    BuiltSet<TriggerRuleInputTypeEnum>(const <TriggerRuleInputTypeEnum>[
      _$triggerRuleInputTypeEnum_record,
      _$triggerRuleInputTypeEnum_count,
      _$triggerRuleInputTypeEnum_absence,
      _$triggerRuleInputTypeEnum_anomaly,
    ]);

Serializer<TriggerRuleInputModeEnum> _$triggerRuleInputModeEnumSerializer =
    _$TriggerRuleInputModeEnumSerializer();
Serializer<TriggerRuleInputSeverityEnum>
_$triggerRuleInputSeverityEnumSerializer =
    _$TriggerRuleInputSeverityEnumSerializer();
Serializer<TriggerRuleInputCooldownScopeEnum>
_$triggerRuleInputCooldownScopeEnumSerializer =
    _$TriggerRuleInputCooldownScopeEnumSerializer();
Serializer<TriggerRuleInputWeatherContextEnum>
_$triggerRuleInputWeatherContextEnumSerializer =
    _$TriggerRuleInputWeatherContextEnumSerializer();
Serializer<TriggerRuleInputTypeEnum> _$triggerRuleInputTypeEnumSerializer =
    _$TriggerRuleInputTypeEnumSerializer();

class _$TriggerRuleInputModeEnumSerializer
    implements PrimitiveSerializer<TriggerRuleInputModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'match': 'match',
    'enter': 'enter',
    'exit': 'exit',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'match': 'match',
    'enter': 'enter',
    'exit': 'exit',
  };

  @override
  final Iterable<Type> types = const <Type>[TriggerRuleInputModeEnum];
  @override
  final String wireName = 'TriggerRuleInputModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    TriggerRuleInputModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TriggerRuleInputModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TriggerRuleInputModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TriggerRuleInputSeverityEnumSerializer
    implements PrimitiveSerializer<TriggerRuleInputSeverityEnum> {
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
  final Iterable<Type> types = const <Type>[TriggerRuleInputSeverityEnum];
  @override
  final String wireName = 'TriggerRuleInputSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    TriggerRuleInputSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TriggerRuleInputSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TriggerRuleInputSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TriggerRuleInputCooldownScopeEnumSerializer
    implements PrimitiveSerializer<TriggerRuleInputCooldownScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'rule': 'rule',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'rule': 'rule',
  };

  @override
  final Iterable<Type> types = const <Type>[TriggerRuleInputCooldownScopeEnum];
  @override
  final String wireName = 'TriggerRuleInputCooldownScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    TriggerRuleInputCooldownScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TriggerRuleInputCooldownScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TriggerRuleInputCooldownScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TriggerRuleInputWeatherContextEnumSerializer
    implements PrimitiveSerializer<TriggerRuleInputWeatherContextEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'off': 'off',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'off': 'off',
  };

  @override
  final Iterable<Type> types = const <Type>[TriggerRuleInputWeatherContextEnum];
  @override
  final String wireName = 'TriggerRuleInputWeatherContextEnum';

  @override
  Object serialize(
    Serializers serializers,
    TriggerRuleInputWeatherContextEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TriggerRuleInputWeatherContextEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TriggerRuleInputWeatherContextEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TriggerRuleInputTypeEnumSerializer
    implements PrimitiveSerializer<TriggerRuleInputTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'count': 'count',
    'absence': 'absence',
    'anomaly': 'anomaly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'count': 'count',
    'absence': 'absence',
    'anomaly': 'anomaly',
  };

  @override
  final Iterable<Type> types = const <Type>[TriggerRuleInputTypeEnum];
  @override
  final String wireName = 'TriggerRuleInputTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    TriggerRuleInputTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TriggerRuleInputTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TriggerRuleInputTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TriggerRuleInput extends TriggerRuleInput {
  @override
  final String name;
  @override
  final bool? enabled;
  @override
  final String? source_;
  @override
  final String? kind;
  @override
  final BuiltList<TriggerRuleInputConditionsInner>? conditions;
  @override
  final Geometry? geofence;
  @override
  final TriggerRuleInputModeEnum? mode;
  @override
  final bool? onlyNew;
  @override
  final String? cooldown;
  @override
  final String? messageTemplate;
  @override
  final TriggerRuleInputSeverityEnum? severity;
  @override
  final bool? enrich;
  @override
  final num? enrichRadiusKm;
  @override
  final String? enrichWindow;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final num? bufferMeters;
  @override
  final num? hysteresisMeters;
  @override
  final JsonObject? near;
  @override
  final bool? reappearAsEnter;
  @override
  final TriggerRuleInputCooldownScopeEnum? cooldownScope;
  @override
  final JsonObject? autoResolve;
  @override
  final int? maxAlertsPerHour;
  @override
  final bool? autoDisableOnStorm;
  @override
  final DateTime? activeFrom;
  @override
  final DateTime? activeUntil;
  @override
  final ActiveWindow? activeWindow;
  @override
  final String? forecastHorizon;
  @override
  final String? escalationPolicyId;
  @override
  final GeofenceRef? geofenceRef;
  @override
  final TriggerRuleInputWeatherContextEnum? weatherContext;
  @override
  final TriggerRuleInputTypeEnum? type;
  @override
  final TriggerRuleInputWindow? window;

  factory _$TriggerRuleInput([
    void Function(TriggerRuleInputBuilder)? updates,
  ]) => (TriggerRuleInputBuilder()..update(updates))._build();

  _$TriggerRuleInput._({
    required this.name,
    this.enabled,
    this.source_,
    this.kind,
    this.conditions,
    this.geofence,
    this.mode,
    this.onlyNew,
    this.cooldown,
    this.messageTemplate,
    this.severity,
    this.enrich,
    this.enrichRadiusKm,
    this.enrichWindow,
    this.tags,
    this.sources,
    this.kinds,
    this.bufferMeters,
    this.hysteresisMeters,
    this.near,
    this.reappearAsEnter,
    this.cooldownScope,
    this.autoResolve,
    this.maxAlertsPerHour,
    this.autoDisableOnStorm,
    this.activeFrom,
    this.activeUntil,
    this.activeWindow,
    this.forecastHorizon,
    this.escalationPolicyId,
    this.geofenceRef,
    this.weatherContext,
    this.type,
    this.window,
  }) : super._();
  @override
  TriggerRuleInput rebuild(void Function(TriggerRuleInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TriggerRuleInputBuilder toBuilder() =>
      TriggerRuleInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TriggerRuleInput &&
        name == other.name &&
        enabled == other.enabled &&
        source_ == other.source_ &&
        kind == other.kind &&
        conditions == other.conditions &&
        geofence == other.geofence &&
        mode == other.mode &&
        onlyNew == other.onlyNew &&
        cooldown == other.cooldown &&
        messageTemplate == other.messageTemplate &&
        severity == other.severity &&
        enrich == other.enrich &&
        enrichRadiusKm == other.enrichRadiusKm &&
        enrichWindow == other.enrichWindow &&
        tags == other.tags &&
        sources == other.sources &&
        kinds == other.kinds &&
        bufferMeters == other.bufferMeters &&
        hysteresisMeters == other.hysteresisMeters &&
        near == other.near &&
        reappearAsEnter == other.reappearAsEnter &&
        cooldownScope == other.cooldownScope &&
        autoResolve == other.autoResolve &&
        maxAlertsPerHour == other.maxAlertsPerHour &&
        autoDisableOnStorm == other.autoDisableOnStorm &&
        activeFrom == other.activeFrom &&
        activeUntil == other.activeUntil &&
        activeWindow == other.activeWindow &&
        forecastHorizon == other.forecastHorizon &&
        escalationPolicyId == other.escalationPolicyId &&
        geofenceRef == other.geofenceRef &&
        weatherContext == other.weatherContext &&
        type == other.type &&
        window == other.window;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jc(_$hash, geofence.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, onlyNew.hashCode);
    _$hash = $jc(_$hash, cooldown.hashCode);
    _$hash = $jc(_$hash, messageTemplate.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, enrich.hashCode);
    _$hash = $jc(_$hash, enrichRadiusKm.hashCode);
    _$hash = $jc(_$hash, enrichWindow.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bufferMeters.hashCode);
    _$hash = $jc(_$hash, hysteresisMeters.hashCode);
    _$hash = $jc(_$hash, near.hashCode);
    _$hash = $jc(_$hash, reappearAsEnter.hashCode);
    _$hash = $jc(_$hash, cooldownScope.hashCode);
    _$hash = $jc(_$hash, autoResolve.hashCode);
    _$hash = $jc(_$hash, maxAlertsPerHour.hashCode);
    _$hash = $jc(_$hash, autoDisableOnStorm.hashCode);
    _$hash = $jc(_$hash, activeFrom.hashCode);
    _$hash = $jc(_$hash, activeUntil.hashCode);
    _$hash = $jc(_$hash, activeWindow.hashCode);
    _$hash = $jc(_$hash, forecastHorizon.hashCode);
    _$hash = $jc(_$hash, escalationPolicyId.hashCode);
    _$hash = $jc(_$hash, geofenceRef.hashCode);
    _$hash = $jc(_$hash, weatherContext.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TriggerRuleInput')
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('source_', source_)
          ..add('kind', kind)
          ..add('conditions', conditions)
          ..add('geofence', geofence)
          ..add('mode', mode)
          ..add('onlyNew', onlyNew)
          ..add('cooldown', cooldown)
          ..add('messageTemplate', messageTemplate)
          ..add('severity', severity)
          ..add('enrich', enrich)
          ..add('enrichRadiusKm', enrichRadiusKm)
          ..add('enrichWindow', enrichWindow)
          ..add('tags', tags)
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bufferMeters', bufferMeters)
          ..add('hysteresisMeters', hysteresisMeters)
          ..add('near', near)
          ..add('reappearAsEnter', reappearAsEnter)
          ..add('cooldownScope', cooldownScope)
          ..add('autoResolve', autoResolve)
          ..add('maxAlertsPerHour', maxAlertsPerHour)
          ..add('autoDisableOnStorm', autoDisableOnStorm)
          ..add('activeFrom', activeFrom)
          ..add('activeUntil', activeUntil)
          ..add('activeWindow', activeWindow)
          ..add('forecastHorizon', forecastHorizon)
          ..add('escalationPolicyId', escalationPolicyId)
          ..add('geofenceRef', geofenceRef)
          ..add('weatherContext', weatherContext)
          ..add('type', type)
          ..add('window', window))
        .toString();
  }
}

class TriggerRuleInputBuilder
    implements Builder<TriggerRuleInput, TriggerRuleInputBuilder> {
  _$TriggerRuleInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  ListBuilder<TriggerRuleInputConditionsInner>? _conditions;
  ListBuilder<TriggerRuleInputConditionsInner> get conditions =>
      _$this._conditions ??= ListBuilder<TriggerRuleInputConditionsInner>();
  set conditions(ListBuilder<TriggerRuleInputConditionsInner>? conditions) =>
      _$this._conditions = conditions;

  GeometryBuilder? _geofence;
  GeometryBuilder get geofence => _$this._geofence ??= GeometryBuilder();
  set geofence(GeometryBuilder? geofence) => _$this._geofence = geofence;

  TriggerRuleInputModeEnum? _mode;
  TriggerRuleInputModeEnum? get mode => _$this._mode;
  set mode(TriggerRuleInputModeEnum? mode) => _$this._mode = mode;

  bool? _onlyNew;
  bool? get onlyNew => _$this._onlyNew;
  set onlyNew(bool? onlyNew) => _$this._onlyNew = onlyNew;

  String? _cooldown;
  String? get cooldown => _$this._cooldown;
  set cooldown(String? cooldown) => _$this._cooldown = cooldown;

  String? _messageTemplate;
  String? get messageTemplate => _$this._messageTemplate;
  set messageTemplate(String? messageTemplate) =>
      _$this._messageTemplate = messageTemplate;

  TriggerRuleInputSeverityEnum? _severity;
  TriggerRuleInputSeverityEnum? get severity => _$this._severity;
  set severity(TriggerRuleInputSeverityEnum? severity) =>
      _$this._severity = severity;

  bool? _enrich;
  bool? get enrich => _$this._enrich;
  set enrich(bool? enrich) => _$this._enrich = enrich;

  num? _enrichRadiusKm;
  num? get enrichRadiusKm => _$this._enrichRadiusKm;
  set enrichRadiusKm(num? enrichRadiusKm) =>
      _$this._enrichRadiusKm = enrichRadiusKm;

  String? _enrichWindow;
  String? get enrichWindow => _$this._enrichWindow;
  set enrichWindow(String? enrichWindow) => _$this._enrichWindow = enrichWindow;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  num? _bufferMeters;
  num? get bufferMeters => _$this._bufferMeters;
  set bufferMeters(num? bufferMeters) => _$this._bufferMeters = bufferMeters;

  num? _hysteresisMeters;
  num? get hysteresisMeters => _$this._hysteresisMeters;
  set hysteresisMeters(num? hysteresisMeters) =>
      _$this._hysteresisMeters = hysteresisMeters;

  JsonObject? _near;
  JsonObject? get near => _$this._near;
  set near(JsonObject? near) => _$this._near = near;

  bool? _reappearAsEnter;
  bool? get reappearAsEnter => _$this._reappearAsEnter;
  set reappearAsEnter(bool? reappearAsEnter) =>
      _$this._reappearAsEnter = reappearAsEnter;

  TriggerRuleInputCooldownScopeEnum? _cooldownScope;
  TriggerRuleInputCooldownScopeEnum? get cooldownScope => _$this._cooldownScope;
  set cooldownScope(TriggerRuleInputCooldownScopeEnum? cooldownScope) =>
      _$this._cooldownScope = cooldownScope;

  JsonObject? _autoResolve;
  JsonObject? get autoResolve => _$this._autoResolve;
  set autoResolve(JsonObject? autoResolve) => _$this._autoResolve = autoResolve;

  int? _maxAlertsPerHour;
  int? get maxAlertsPerHour => _$this._maxAlertsPerHour;
  set maxAlertsPerHour(int? maxAlertsPerHour) =>
      _$this._maxAlertsPerHour = maxAlertsPerHour;

  bool? _autoDisableOnStorm;
  bool? get autoDisableOnStorm => _$this._autoDisableOnStorm;
  set autoDisableOnStorm(bool? autoDisableOnStorm) =>
      _$this._autoDisableOnStorm = autoDisableOnStorm;

  DateTime? _activeFrom;
  DateTime? get activeFrom => _$this._activeFrom;
  set activeFrom(DateTime? activeFrom) => _$this._activeFrom = activeFrom;

  DateTime? _activeUntil;
  DateTime? get activeUntil => _$this._activeUntil;
  set activeUntil(DateTime? activeUntil) => _$this._activeUntil = activeUntil;

  ActiveWindowBuilder? _activeWindow;
  ActiveWindowBuilder get activeWindow =>
      _$this._activeWindow ??= ActiveWindowBuilder();
  set activeWindow(ActiveWindowBuilder? activeWindow) =>
      _$this._activeWindow = activeWindow;

  String? _forecastHorizon;
  String? get forecastHorizon => _$this._forecastHorizon;
  set forecastHorizon(String? forecastHorizon) =>
      _$this._forecastHorizon = forecastHorizon;

  String? _escalationPolicyId;
  String? get escalationPolicyId => _$this._escalationPolicyId;
  set escalationPolicyId(String? escalationPolicyId) =>
      _$this._escalationPolicyId = escalationPolicyId;

  GeofenceRefBuilder? _geofenceRef;
  GeofenceRefBuilder get geofenceRef =>
      _$this._geofenceRef ??= GeofenceRefBuilder();
  set geofenceRef(GeofenceRefBuilder? geofenceRef) =>
      _$this._geofenceRef = geofenceRef;

  TriggerRuleInputWeatherContextEnum? _weatherContext;
  TriggerRuleInputWeatherContextEnum? get weatherContext =>
      _$this._weatherContext;
  set weatherContext(TriggerRuleInputWeatherContextEnum? weatherContext) =>
      _$this._weatherContext = weatherContext;

  TriggerRuleInputTypeEnum? _type;
  TriggerRuleInputTypeEnum? get type => _$this._type;
  set type(TriggerRuleInputTypeEnum? type) => _$this._type = type;

  TriggerRuleInputWindowBuilder? _window;
  TriggerRuleInputWindowBuilder get window =>
      _$this._window ??= TriggerRuleInputWindowBuilder();
  set window(TriggerRuleInputWindowBuilder? window) => _$this._window = window;

  TriggerRuleInputBuilder() {
    TriggerRuleInput._defaults(this);
  }

  TriggerRuleInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _enabled = $v.enabled;
      _source_ = $v.source_;
      _kind = $v.kind;
      _conditions = $v.conditions?.toBuilder();
      _geofence = $v.geofence?.toBuilder();
      _mode = $v.mode;
      _onlyNew = $v.onlyNew;
      _cooldown = $v.cooldown;
      _messageTemplate = $v.messageTemplate;
      _severity = $v.severity;
      _enrich = $v.enrich;
      _enrichRadiusKm = $v.enrichRadiusKm;
      _enrichWindow = $v.enrichWindow;
      _tags = $v.tags?.toBuilder();
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bufferMeters = $v.bufferMeters;
      _hysteresisMeters = $v.hysteresisMeters;
      _near = $v.near;
      _reappearAsEnter = $v.reappearAsEnter;
      _cooldownScope = $v.cooldownScope;
      _autoResolve = $v.autoResolve;
      _maxAlertsPerHour = $v.maxAlertsPerHour;
      _autoDisableOnStorm = $v.autoDisableOnStorm;
      _activeFrom = $v.activeFrom;
      _activeUntil = $v.activeUntil;
      _activeWindow = $v.activeWindow?.toBuilder();
      _forecastHorizon = $v.forecastHorizon;
      _escalationPolicyId = $v.escalationPolicyId;
      _geofenceRef = $v.geofenceRef?.toBuilder();
      _weatherContext = $v.weatherContext;
      _type = $v.type;
      _window = $v.window?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TriggerRuleInput other) {
    _$v = other as _$TriggerRuleInput;
  }

  @override
  void update(void Function(TriggerRuleInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TriggerRuleInput build() => _build();

  _$TriggerRuleInput _build() {
    _$TriggerRuleInput _$result;
    try {
      _$result =
          _$v ??
          _$TriggerRuleInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'TriggerRuleInput',
              'name',
            ),
            enabled: enabled,
            source_: source_,
            kind: kind,
            conditions: _conditions?.build(),
            geofence: _geofence?.build(),
            mode: mode,
            onlyNew: onlyNew,
            cooldown: cooldown,
            messageTemplate: messageTemplate,
            severity: severity,
            enrich: enrich,
            enrichRadiusKm: enrichRadiusKm,
            enrichWindow: enrichWindow,
            tags: _tags?.build(),
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bufferMeters: bufferMeters,
            hysteresisMeters: hysteresisMeters,
            near: near,
            reappearAsEnter: reappearAsEnter,
            cooldownScope: cooldownScope,
            autoResolve: autoResolve,
            maxAlertsPerHour: maxAlertsPerHour,
            autoDisableOnStorm: autoDisableOnStorm,
            activeFrom: activeFrom,
            activeUntil: activeUntil,
            activeWindow: _activeWindow?.build(),
            forecastHorizon: forecastHorizon,
            escalationPolicyId: escalationPolicyId,
            geofenceRef: _geofenceRef?.build(),
            weatherContext: weatherContext,
            type: type,
            window: _window?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conditions';
        _conditions?.build();
        _$failedField = 'geofence';
        _geofence?.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();

        _$failedField = 'activeWindow';
        _activeWindow?.build();

        _$failedField = 'geofenceRef';
        _geofenceRef?.build();

        _$failedField = 'window';
        _window?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TriggerRuleInput',
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
