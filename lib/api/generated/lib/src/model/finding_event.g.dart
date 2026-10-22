// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finding_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FindingEventEventEnum _$findingEventEventEnum_findingPeriodCreated =
    const FindingEventEventEnum._('findingPeriodCreated');
const FindingEventEventEnum _$findingEventEventEnum_findingPeriodUpdated =
    const FindingEventEventEnum._('findingPeriodUpdated');
const FindingEventEventEnum _$findingEventEventEnum_findingPeriodDismissed =
    const FindingEventEventEnum._('findingPeriodDismissed');

FindingEventEventEnum _$findingEventEventEnumValueOf(String name) {
  switch (name) {
    case 'findingPeriodCreated':
      return _$findingEventEventEnum_findingPeriodCreated;
    case 'findingPeriodUpdated':
      return _$findingEventEventEnum_findingPeriodUpdated;
    case 'findingPeriodDismissed':
      return _$findingEventEventEnum_findingPeriodDismissed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FindingEventEventEnum> _$findingEventEventEnumValues =
    BuiltSet<FindingEventEventEnum>(const <FindingEventEventEnum>[
      _$findingEventEventEnum_findingPeriodCreated,
      _$findingEventEventEnum_findingPeriodUpdated,
      _$findingEventEventEnum_findingPeriodDismissed,
    ]);

Serializer<FindingEventEventEnum> _$findingEventEventEnumSerializer =
    _$FindingEventEventEnumSerializer();

class _$FindingEventEventEnumSerializer
    implements PrimitiveSerializer<FindingEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'findingPeriodCreated': 'finding.created',
    'findingPeriodUpdated': 'finding.updated',
    'findingPeriodDismissed': 'finding.dismissed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'finding.created': 'findingPeriodCreated',
    'finding.updated': 'findingPeriodUpdated',
    'finding.dismissed': 'findingPeriodDismissed',
  };

  @override
  final Iterable<Type> types = const <Type>[FindingEventEventEnum];
  @override
  final String wireName = 'FindingEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    FindingEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FindingEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FindingEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$FindingEvent extends FindingEvent {
  @override
  final FindingEventEventEnum event;
  @override
  final FindingEventFinding finding;
  @override
  final DateTime at;

  factory _$FindingEvent([void Function(FindingEventBuilder)? updates]) =>
      (FindingEventBuilder()..update(updates))._build();

  _$FindingEvent._({
    required this.event,
    required this.finding,
    required this.at,
  }) : super._();
  @override
  FindingEvent rebuild(void Function(FindingEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FindingEventBuilder toBuilder() => FindingEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FindingEvent &&
        event == other.event &&
        finding == other.finding &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, finding.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FindingEvent')
          ..add('event', event)
          ..add('finding', finding)
          ..add('at', at))
        .toString();
  }
}

class FindingEventBuilder
    implements Builder<FindingEvent, FindingEventBuilder> {
  _$FindingEvent? _$v;

  FindingEventEventEnum? _event;
  FindingEventEventEnum? get event => _$this._event;
  set event(FindingEventEventEnum? event) => _$this._event = event;

  FindingEventFindingBuilder? _finding;
  FindingEventFindingBuilder get finding =>
      _$this._finding ??= FindingEventFindingBuilder();
  set finding(FindingEventFindingBuilder? finding) => _$this._finding = finding;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  FindingEventBuilder() {
    FindingEvent._defaults(this);
  }

  FindingEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _finding = $v.finding.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FindingEvent other) {
    _$v = other as _$FindingEvent;
  }

  @override
  void update(void Function(FindingEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FindingEvent build() => _build();

  _$FindingEvent _build() {
    _$FindingEvent _$result;
    try {
      _$result =
          _$v ??
          _$FindingEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'FindingEvent',
              'event',
            ),
            finding: finding.build(),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'FindingEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'finding';
        finding.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FindingEvent',
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
