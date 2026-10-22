// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_filters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushFiltersEventsEnum _$pushFiltersEventsEnum_alert =
    const PushFiltersEventsEnum._('alert');
const PushFiltersEventsEnum _$pushFiltersEventsEnum_briefing =
    const PushFiltersEventsEnum._('briefing');
const PushFiltersEventsEnum _$pushFiltersEventsEnum_system =
    const PushFiltersEventsEnum._('system');

PushFiltersEventsEnum _$pushFiltersEventsEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$pushFiltersEventsEnum_alert;
    case 'briefing':
      return _$pushFiltersEventsEnum_briefing;
    case 'system':
      return _$pushFiltersEventsEnum_system;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushFiltersEventsEnum> _$pushFiltersEventsEnumValues =
    BuiltSet<PushFiltersEventsEnum>(const <PushFiltersEventsEnum>[
  _$pushFiltersEventsEnum_alert,
  _$pushFiltersEventsEnum_briefing,
  _$pushFiltersEventsEnum_system,
]);

const PushFiltersMinSeverityEnum _$pushFiltersMinSeverityEnum_info =
    const PushFiltersMinSeverityEnum._('info');
const PushFiltersMinSeverityEnum _$pushFiltersMinSeverityEnum_warning =
    const PushFiltersMinSeverityEnum._('warning');
const PushFiltersMinSeverityEnum _$pushFiltersMinSeverityEnum_critical =
    const PushFiltersMinSeverityEnum._('critical');

PushFiltersMinSeverityEnum _$pushFiltersMinSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$pushFiltersMinSeverityEnum_info;
    case 'warning':
      return _$pushFiltersMinSeverityEnum_warning;
    case 'critical':
      return _$pushFiltersMinSeverityEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushFiltersMinSeverityEnum> _$pushFiltersMinSeverityEnumValues =
    BuiltSet<PushFiltersMinSeverityEnum>(const <PushFiltersMinSeverityEnum>[
  _$pushFiltersMinSeverityEnum_info,
  _$pushFiltersMinSeverityEnum_warning,
  _$pushFiltersMinSeverityEnum_critical,
]);

Serializer<PushFiltersEventsEnum> _$pushFiltersEventsEnumSerializer =
    _$PushFiltersEventsEnumSerializer();
Serializer<PushFiltersMinSeverityEnum> _$pushFiltersMinSeverityEnumSerializer =
    _$PushFiltersMinSeverityEnumSerializer();

class _$PushFiltersEventsEnumSerializer
    implements PrimitiveSerializer<PushFiltersEventsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
  };

  @override
  final Iterable<Type> types = const <Type>[PushFiltersEventsEnum];
  @override
  final String wireName = 'PushFiltersEventsEnum';

  @override
  Object serialize(Serializers serializers, PushFiltersEventsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PushFiltersEventsEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PushFiltersEventsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PushFiltersMinSeverityEnumSerializer
    implements PrimitiveSerializer<PushFiltersMinSeverityEnum> {
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
  final Iterable<Type> types = const <Type>[PushFiltersMinSeverityEnum];
  @override
  final String wireName = 'PushFiltersMinSeverityEnum';

  @override
  Object serialize(Serializers serializers, PushFiltersMinSeverityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PushFiltersMinSeverityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PushFiltersMinSeverityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PushFilters extends PushFilters {
  @override
  final BuiltList<PushFiltersEventsEnum>? events;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final PushFiltersMinSeverityEnum? minSeverity;
  @override
  final BuiltList<String>? tags;

  factory _$PushFilters([void Function(PushFiltersBuilder)? updates]) =>
      (PushFiltersBuilder()..update(updates))._build();

  _$PushFilters._({this.events, this.ruleIds, this.minSeverity, this.tags})
      : super._();
  @override
  PushFilters rebuild(void Function(PushFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushFiltersBuilder toBuilder() => PushFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushFilters &&
        events == other.events &&
        ruleIds == other.ruleIds &&
        minSeverity == other.minSeverity &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushFilters')
          ..add('events', events)
          ..add('ruleIds', ruleIds)
          ..add('minSeverity', minSeverity)
          ..add('tags', tags))
        .toString();
  }
}

class PushFiltersBuilder implements Builder<PushFilters, PushFiltersBuilder> {
  _$PushFilters? _$v;

  ListBuilder<PushFiltersEventsEnum>? _events;
  ListBuilder<PushFiltersEventsEnum> get events =>
      _$this._events ??= ListBuilder<PushFiltersEventsEnum>();
  set events(ListBuilder<PushFiltersEventsEnum>? events) =>
      _$this._events = events;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  PushFiltersMinSeverityEnum? _minSeverity;
  PushFiltersMinSeverityEnum? get minSeverity => _$this._minSeverity;
  set minSeverity(PushFiltersMinSeverityEnum? minSeverity) =>
      _$this._minSeverity = minSeverity;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  PushFiltersBuilder() {
    PushFilters._defaults(this);
  }

  PushFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _events = $v.events?.toBuilder();
      _ruleIds = $v.ruleIds?.toBuilder();
      _minSeverity = $v.minSeverity;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushFilters other) {
    _$v = other as _$PushFilters;
  }

  @override
  void update(void Function(PushFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushFilters build() => _build();

  _$PushFilters _build() {
    _$PushFilters _$result;
    try {
      _$result = _$v ??
          _$PushFilters._(
            events: _events?.build(),
            ruleIds: _ruleIds?.build(),
            minSeverity: minSeverity,
            tags: _tags?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        _events?.build();
        _$failedField = 'ruleIds';
        _ruleIds?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PushFilters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
