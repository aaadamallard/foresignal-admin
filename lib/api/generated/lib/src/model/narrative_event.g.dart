// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NarrativeEventEventEnum _$narrativeEventEventEnum_narrativePeriodEmerged =
    const NarrativeEventEventEnum._('narrativePeriodEmerged');
const NarrativeEventEventEnum _$narrativeEventEventEnum_narrativePeriodUpdated =
    const NarrativeEventEventEnum._('narrativePeriodUpdated');

NarrativeEventEventEnum _$narrativeEventEventEnumValueOf(String name) {
  switch (name) {
    case 'narrativePeriodEmerged':
      return _$narrativeEventEventEnum_narrativePeriodEmerged;
    case 'narrativePeriodUpdated':
      return _$narrativeEventEventEnum_narrativePeriodUpdated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NarrativeEventEventEnum> _$narrativeEventEventEnumValues =
    BuiltSet<NarrativeEventEventEnum>(const <NarrativeEventEventEnum>[
      _$narrativeEventEventEnum_narrativePeriodEmerged,
      _$narrativeEventEventEnum_narrativePeriodUpdated,
    ]);

const NarrativeEventChangedEnum _$narrativeEventChangedEnum_state =
    const NarrativeEventChangedEnum._('state');
const NarrativeEventChangedEnum _$narrativeEventChangedEnum_status =
    const NarrativeEventChangedEnum._('status');
const NarrativeEventChangedEnum _$narrativeEventChangedEnum_postCount =
    const NarrativeEventChangedEnum._('postCount');
const NarrativeEventChangedEnum _$narrativeEventChangedEnum_evidenceGroupCount =
    const NarrativeEventChangedEnum._('evidenceGroupCount');
const NarrativeEventChangedEnum _$narrativeEventChangedEnum_velocity =
    const NarrativeEventChangedEnum._('velocity');
const NarrativeEventChangedEnum _$narrativeEventChangedEnum_merged =
    const NarrativeEventChangedEnum._('merged');
const NarrativeEventChangedEnum _$narrativeEventChangedEnum_split =
    const NarrativeEventChangedEnum._('split');
const NarrativeEventChangedEnum _$narrativeEventChangedEnum_title =
    const NarrativeEventChangedEnum._('title');

NarrativeEventChangedEnum _$narrativeEventChangedEnumValueOf(String name) {
  switch (name) {
    case 'state':
      return _$narrativeEventChangedEnum_state;
    case 'status':
      return _$narrativeEventChangedEnum_status;
    case 'postCount':
      return _$narrativeEventChangedEnum_postCount;
    case 'evidenceGroupCount':
      return _$narrativeEventChangedEnum_evidenceGroupCount;
    case 'velocity':
      return _$narrativeEventChangedEnum_velocity;
    case 'merged':
      return _$narrativeEventChangedEnum_merged;
    case 'split':
      return _$narrativeEventChangedEnum_split;
    case 'title':
      return _$narrativeEventChangedEnum_title;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NarrativeEventChangedEnum> _$narrativeEventChangedEnumValues =
    BuiltSet<NarrativeEventChangedEnum>(const <NarrativeEventChangedEnum>[
      _$narrativeEventChangedEnum_state,
      _$narrativeEventChangedEnum_status,
      _$narrativeEventChangedEnum_postCount,
      _$narrativeEventChangedEnum_evidenceGroupCount,
      _$narrativeEventChangedEnum_velocity,
      _$narrativeEventChangedEnum_merged,
      _$narrativeEventChangedEnum_split,
      _$narrativeEventChangedEnum_title,
    ]);

Serializer<NarrativeEventEventEnum> _$narrativeEventEventEnumSerializer =
    _$NarrativeEventEventEnumSerializer();
Serializer<NarrativeEventChangedEnum> _$narrativeEventChangedEnumSerializer =
    _$NarrativeEventChangedEnumSerializer();

class _$NarrativeEventEventEnumSerializer
    implements PrimitiveSerializer<NarrativeEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'narrativePeriodEmerged': 'narrative.emerged',
    'narrativePeriodUpdated': 'narrative.updated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'narrative.emerged': 'narrativePeriodEmerged',
    'narrative.updated': 'narrativePeriodUpdated',
  };

  @override
  final Iterable<Type> types = const <Type>[NarrativeEventEventEnum];
  @override
  final String wireName = 'NarrativeEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativeEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativeEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativeEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NarrativeEventChangedEnumSerializer
    implements PrimitiveSerializer<NarrativeEventChangedEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'state': 'state',
    'status': 'status',
    'postCount': 'postCount',
    'evidenceGroupCount': 'evidenceGroupCount',
    'velocity': 'velocity',
    'merged': 'merged',
    'split': 'split',
    'title': 'title',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'state': 'state',
    'status': 'status',
    'postCount': 'postCount',
    'evidenceGroupCount': 'evidenceGroupCount',
    'velocity': 'velocity',
    'merged': 'merged',
    'split': 'split',
    'title': 'title',
  };

  @override
  final Iterable<Type> types = const <Type>[NarrativeEventChangedEnum];
  @override
  final String wireName = 'NarrativeEventChangedEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativeEventChangedEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativeEventChangedEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativeEventChangedEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NarrativeEvent extends NarrativeEvent {
  @override
  final NarrativeEventEventEnum event;
  @override
  final NarrativeSummary narrative;
  @override
  final BuiltList<NarrativeEventChangedEnum>? changed;
  @override
  final DateTime at;

  factory _$NarrativeEvent([void Function(NarrativeEventBuilder)? updates]) =>
      (NarrativeEventBuilder()..update(updates))._build();

  _$NarrativeEvent._({
    required this.event,
    required this.narrative,
    this.changed,
    required this.at,
  }) : super._();
  @override
  NarrativeEvent rebuild(void Function(NarrativeEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativeEventBuilder toBuilder() => NarrativeEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeEvent &&
        event == other.event &&
        narrative == other.narrative &&
        changed == other.changed &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, narrative.hashCode);
    _$hash = $jc(_$hash, changed.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativeEvent')
          ..add('event', event)
          ..add('narrative', narrative)
          ..add('changed', changed)
          ..add('at', at))
        .toString();
  }
}

class NarrativeEventBuilder
    implements Builder<NarrativeEvent, NarrativeEventBuilder> {
  _$NarrativeEvent? _$v;

  NarrativeEventEventEnum? _event;
  NarrativeEventEventEnum? get event => _$this._event;
  set event(NarrativeEventEventEnum? event) => _$this._event = event;

  NarrativeSummaryBuilder? _narrative;
  NarrativeSummaryBuilder get narrative =>
      _$this._narrative ??= NarrativeSummaryBuilder();
  set narrative(NarrativeSummaryBuilder? narrative) =>
      _$this._narrative = narrative;

  ListBuilder<NarrativeEventChangedEnum>? _changed;
  ListBuilder<NarrativeEventChangedEnum> get changed =>
      _$this._changed ??= ListBuilder<NarrativeEventChangedEnum>();
  set changed(ListBuilder<NarrativeEventChangedEnum>? changed) =>
      _$this._changed = changed;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  NarrativeEventBuilder() {
    NarrativeEvent._defaults(this);
  }

  NarrativeEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _narrative = $v.narrative.toBuilder();
      _changed = $v.changed?.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeEvent other) {
    _$v = other as _$NarrativeEvent;
  }

  @override
  void update(void Function(NarrativeEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeEvent build() => _build();

  _$NarrativeEvent _build() {
    _$NarrativeEvent _$result;
    try {
      _$result =
          _$v ??
          _$NarrativeEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'NarrativeEvent',
              'event',
            ),
            narrative: narrative.build(),
            changed: _changed?.build(),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'NarrativeEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'narrative';
        narrative.build();
        _$failedField = 'changed';
        _changed?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NarrativeEvent',
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
