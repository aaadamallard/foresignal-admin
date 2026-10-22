// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_stream_alerts_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EventStreamAlertsFilterMinSeverityEnum
_$eventStreamAlertsFilterMinSeverityEnum_info =
    const EventStreamAlertsFilterMinSeverityEnum._('info');
const EventStreamAlertsFilterMinSeverityEnum
_$eventStreamAlertsFilterMinSeverityEnum_warning =
    const EventStreamAlertsFilterMinSeverityEnum._('warning');
const EventStreamAlertsFilterMinSeverityEnum
_$eventStreamAlertsFilterMinSeverityEnum_critical =
    const EventStreamAlertsFilterMinSeverityEnum._('critical');

EventStreamAlertsFilterMinSeverityEnum
_$eventStreamAlertsFilterMinSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$eventStreamAlertsFilterMinSeverityEnum_info;
    case 'warning':
      return _$eventStreamAlertsFilterMinSeverityEnum_warning;
    case 'critical':
      return _$eventStreamAlertsFilterMinSeverityEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EventStreamAlertsFilterMinSeverityEnum>
_$eventStreamAlertsFilterMinSeverityEnumValues =
    BuiltSet<EventStreamAlertsFilterMinSeverityEnum>(
      const <EventStreamAlertsFilterMinSeverityEnum>[
        _$eventStreamAlertsFilterMinSeverityEnum_info,
        _$eventStreamAlertsFilterMinSeverityEnum_warning,
        _$eventStreamAlertsFilterMinSeverityEnum_critical,
      ],
    );

Serializer<EventStreamAlertsFilterMinSeverityEnum>
_$eventStreamAlertsFilterMinSeverityEnumSerializer =
    _$EventStreamAlertsFilterMinSeverityEnumSerializer();

class _$EventStreamAlertsFilterMinSeverityEnumSerializer
    implements PrimitiveSerializer<EventStreamAlertsFilterMinSeverityEnum> {
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
  final Iterable<Type> types = const <Type>[
    EventStreamAlertsFilterMinSeverityEnum,
  ];
  @override
  final String wireName = 'EventStreamAlertsFilterMinSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    EventStreamAlertsFilterMinSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EventStreamAlertsFilterMinSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EventStreamAlertsFilterMinSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EventStreamAlertsFilter extends EventStreamAlertsFilter {
  @override
  final EventStreamAlertsFilterMinSeverityEnum? minSeverity;
  @override
  final BuiltList<String>? ruleId;
  @override
  final BuiltList<String>? source_;
  @override
  final BuiltList<String>? kind;
  @override
  final bool? includeSuppressed;

  factory _$EventStreamAlertsFilter([
    void Function(EventStreamAlertsFilterBuilder)? updates,
  ]) => (EventStreamAlertsFilterBuilder()..update(updates))._build();

  _$EventStreamAlertsFilter._({
    this.minSeverity,
    this.ruleId,
    this.source_,
    this.kind,
    this.includeSuppressed,
  }) : super._();
  @override
  EventStreamAlertsFilter rebuild(
    void Function(EventStreamAlertsFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EventStreamAlertsFilterBuilder toBuilder() =>
      EventStreamAlertsFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStreamAlertsFilter &&
        minSeverity == other.minSeverity &&
        ruleId == other.ruleId &&
        source_ == other.source_ &&
        kind == other.kind &&
        includeSuppressed == other.includeSuppressed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, includeSuppressed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStreamAlertsFilter')
          ..add('minSeverity', minSeverity)
          ..add('ruleId', ruleId)
          ..add('source_', source_)
          ..add('kind', kind)
          ..add('includeSuppressed', includeSuppressed))
        .toString();
  }
}

class EventStreamAlertsFilterBuilder
    implements
        Builder<EventStreamAlertsFilter, EventStreamAlertsFilterBuilder> {
  _$EventStreamAlertsFilter? _$v;

  EventStreamAlertsFilterMinSeverityEnum? _minSeverity;
  EventStreamAlertsFilterMinSeverityEnum? get minSeverity =>
      _$this._minSeverity;
  set minSeverity(EventStreamAlertsFilterMinSeverityEnum? minSeverity) =>
      _$this._minSeverity = minSeverity;

  ListBuilder<String>? _ruleId;
  ListBuilder<String> get ruleId => _$this._ruleId ??= ListBuilder<String>();
  set ruleId(ListBuilder<String>? ruleId) => _$this._ruleId = ruleId;

  ListBuilder<String>? _source_;
  ListBuilder<String> get source_ => _$this._source_ ??= ListBuilder<String>();
  set source_(ListBuilder<String>? source_) => _$this._source_ = source_;

  ListBuilder<String>? _kind;
  ListBuilder<String> get kind => _$this._kind ??= ListBuilder<String>();
  set kind(ListBuilder<String>? kind) => _$this._kind = kind;

  bool? _includeSuppressed;
  bool? get includeSuppressed => _$this._includeSuppressed;
  set includeSuppressed(bool? includeSuppressed) =>
      _$this._includeSuppressed = includeSuppressed;

  EventStreamAlertsFilterBuilder() {
    EventStreamAlertsFilter._defaults(this);
  }

  EventStreamAlertsFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minSeverity = $v.minSeverity;
      _ruleId = $v.ruleId?.toBuilder();
      _source_ = $v.source_?.toBuilder();
      _kind = $v.kind?.toBuilder();
      _includeSuppressed = $v.includeSuppressed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStreamAlertsFilter other) {
    _$v = other as _$EventStreamAlertsFilter;
  }

  @override
  void update(void Function(EventStreamAlertsFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStreamAlertsFilter build() => _build();

  _$EventStreamAlertsFilter _build() {
    _$EventStreamAlertsFilter _$result;
    try {
      _$result =
          _$v ??
          _$EventStreamAlertsFilter._(
            minSeverity: minSeverity,
            ruleId: _ruleId?.build(),
            source_: _source_?.build(),
            kind: _kind?.build(),
            includeSuppressed: includeSuppressed,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleId';
        _ruleId?.build();
        _$failedField = 'source_';
        _source_?.build();
        _$failedField = 'kind';
        _kind?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EventStreamAlertsFilter',
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
