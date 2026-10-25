// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorEventStateEnum _$indicatorEventStateEnum_pending =
    const IndicatorEventStateEnum._('pending');
const IndicatorEventStateEnum _$indicatorEventStateEnum_emerging =
    const IndicatorEventStateEnum._('emerging');
const IndicatorEventStateEnum _$indicatorEventStateEnum_observed =
    const IndicatorEventStateEnum._('observed');
const IndicatorEventStateEnum _$indicatorEventStateEnum_absent =
    const IndicatorEventStateEnum._('absent');
const IndicatorEventStateEnum _$indicatorEventStateEnum_unknownCoverage =
    const IndicatorEventStateEnum._('unknownCoverage');
const IndicatorEventStateEnum _$indicatorEventStateEnum_retired =
    const IndicatorEventStateEnum._('retired');
const IndicatorEventStateEnum _$indicatorEventStateEnum_reported =
    const IndicatorEventStateEnum._('reported');
const IndicatorEventStateEnum _$indicatorEventStateEnum_unknownDefaultOpenApi =
    const IndicatorEventStateEnum._('unknownDefaultOpenApi');

IndicatorEventStateEnum _$indicatorEventStateEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$indicatorEventStateEnum_pending;
    case 'emerging':
      return _$indicatorEventStateEnum_emerging;
    case 'observed':
      return _$indicatorEventStateEnum_observed;
    case 'absent':
      return _$indicatorEventStateEnum_absent;
    case 'unknownCoverage':
      return _$indicatorEventStateEnum_unknownCoverage;
    case 'retired':
      return _$indicatorEventStateEnum_retired;
    case 'reported':
      return _$indicatorEventStateEnum_reported;
    case 'unknownDefaultOpenApi':
      return _$indicatorEventStateEnum_unknownDefaultOpenApi;
    default:
      return _$indicatorEventStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IndicatorEventStateEnum> _$indicatorEventStateEnumValues =
    BuiltSet<IndicatorEventStateEnum>(const <IndicatorEventStateEnum>[
      _$indicatorEventStateEnum_pending,
      _$indicatorEventStateEnum_emerging,
      _$indicatorEventStateEnum_observed,
      _$indicatorEventStateEnum_absent,
      _$indicatorEventStateEnum_unknownCoverage,
      _$indicatorEventStateEnum_retired,
      _$indicatorEventStateEnum_reported,
      _$indicatorEventStateEnum_unknownDefaultOpenApi,
    ]);

const IndicatorEventPreviousStateEnum
_$indicatorEventPreviousStateEnum_pending =
    const IndicatorEventPreviousStateEnum._('pending');
const IndicatorEventPreviousStateEnum
_$indicatorEventPreviousStateEnum_emerging =
    const IndicatorEventPreviousStateEnum._('emerging');
const IndicatorEventPreviousStateEnum
_$indicatorEventPreviousStateEnum_observed =
    const IndicatorEventPreviousStateEnum._('observed');
const IndicatorEventPreviousStateEnum _$indicatorEventPreviousStateEnum_absent =
    const IndicatorEventPreviousStateEnum._('absent');
const IndicatorEventPreviousStateEnum
_$indicatorEventPreviousStateEnum_unknownCoverage =
    const IndicatorEventPreviousStateEnum._('unknownCoverage');
const IndicatorEventPreviousStateEnum
_$indicatorEventPreviousStateEnum_retired =
    const IndicatorEventPreviousStateEnum._('retired');
const IndicatorEventPreviousStateEnum
_$indicatorEventPreviousStateEnum_reported =
    const IndicatorEventPreviousStateEnum._('reported');
const IndicatorEventPreviousStateEnum
_$indicatorEventPreviousStateEnum_unknownDefaultOpenApi =
    const IndicatorEventPreviousStateEnum._('unknownDefaultOpenApi');

IndicatorEventPreviousStateEnum _$indicatorEventPreviousStateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'pending':
      return _$indicatorEventPreviousStateEnum_pending;
    case 'emerging':
      return _$indicatorEventPreviousStateEnum_emerging;
    case 'observed':
      return _$indicatorEventPreviousStateEnum_observed;
    case 'absent':
      return _$indicatorEventPreviousStateEnum_absent;
    case 'unknownCoverage':
      return _$indicatorEventPreviousStateEnum_unknownCoverage;
    case 'retired':
      return _$indicatorEventPreviousStateEnum_retired;
    case 'reported':
      return _$indicatorEventPreviousStateEnum_reported;
    case 'unknownDefaultOpenApi':
      return _$indicatorEventPreviousStateEnum_unknownDefaultOpenApi;
    default:
      return _$indicatorEventPreviousStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IndicatorEventPreviousStateEnum>
_$indicatorEventPreviousStateEnumValues =
    BuiltSet<IndicatorEventPreviousStateEnum>(
      const <IndicatorEventPreviousStateEnum>[
        _$indicatorEventPreviousStateEnum_pending,
        _$indicatorEventPreviousStateEnum_emerging,
        _$indicatorEventPreviousStateEnum_observed,
        _$indicatorEventPreviousStateEnum_absent,
        _$indicatorEventPreviousStateEnum_unknownCoverage,
        _$indicatorEventPreviousStateEnum_retired,
        _$indicatorEventPreviousStateEnum_reported,
        _$indicatorEventPreviousStateEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<IndicatorEventStateEnum> _$indicatorEventStateEnumSerializer =
    _$IndicatorEventStateEnumSerializer();
Serializer<IndicatorEventPreviousStateEnum>
_$indicatorEventPreviousStateEnumSerializer =
    _$IndicatorEventPreviousStateEnumSerializer();

class _$IndicatorEventStateEnumSerializer
    implements PrimitiveSerializer<IndicatorEventStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'emerging': 'emerging',
    'observed': 'observed',
    'absent': 'absent',
    'unknownCoverage': 'unknown-coverage',
    'retired': 'retired',
    'reported': 'reported',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'emerging': 'emerging',
    'observed': 'observed',
    'absent': 'absent',
    'unknown-coverage': 'unknownCoverage',
    'retired': 'retired',
    'reported': 'reported',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorEventStateEnum];
  @override
  final String wireName = 'IndicatorEventStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    IndicatorEventStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndicatorEventStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndicatorEventStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndicatorEventPreviousStateEnumSerializer
    implements PrimitiveSerializer<IndicatorEventPreviousStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'emerging': 'emerging',
    'observed': 'observed',
    'absent': 'absent',
    'unknownCoverage': 'unknown-coverage',
    'retired': 'retired',
    'reported': 'reported',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'emerging': 'emerging',
    'observed': 'observed',
    'absent': 'absent',
    'unknown-coverage': 'unknownCoverage',
    'retired': 'retired',
    'reported': 'reported',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorEventPreviousStateEnum];
  @override
  final String wireName = 'IndicatorEventPreviousStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    IndicatorEventPreviousStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndicatorEventPreviousStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndicatorEventPreviousStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndicatorEvent extends IndicatorEvent {
  @override
  final String indicatorId;
  @override
  final String setId;
  @override
  final String? description;
  @override
  final String? signalFamily;
  @override
  final IndicatorEventStateEnum state;
  @override
  final IndicatorEventPreviousStateEnum? previousState;
  @override
  final JsonObject? evidence;
  @override
  final String? revisionId;
  @override
  final bool? private;
  @override
  final DateTime at;

  factory _$IndicatorEvent([void Function(IndicatorEventBuilder)? updates]) =>
      (IndicatorEventBuilder()..update(updates))._build();

  _$IndicatorEvent._({
    required this.indicatorId,
    required this.setId,
    this.description,
    this.signalFamily,
    required this.state,
    this.previousState,
    this.evidence,
    this.revisionId,
    this.private,
    required this.at,
  }) : super._();
  @override
  IndicatorEvent rebuild(void Function(IndicatorEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndicatorEventBuilder toBuilder() => IndicatorEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorEvent &&
        indicatorId == other.indicatorId &&
        setId == other.setId &&
        description == other.description &&
        signalFamily == other.signalFamily &&
        state == other.state &&
        previousState == other.previousState &&
        evidence == other.evidence &&
        revisionId == other.revisionId &&
        private == other.private &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indicatorId.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, previousState.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, revisionId.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorEvent')
          ..add('indicatorId', indicatorId)
          ..add('setId', setId)
          ..add('description', description)
          ..add('signalFamily', signalFamily)
          ..add('state', state)
          ..add('previousState', previousState)
          ..add('evidence', evidence)
          ..add('revisionId', revisionId)
          ..add('private', private)
          ..add('at', at))
        .toString();
  }
}

class IndicatorEventBuilder
    implements Builder<IndicatorEvent, IndicatorEventBuilder> {
  _$IndicatorEvent? _$v;

  String? _indicatorId;
  String? get indicatorId => _$this._indicatorId;
  set indicatorId(String? indicatorId) => _$this._indicatorId = indicatorId;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  IndicatorEventStateEnum? _state;
  IndicatorEventStateEnum? get state => _$this._state;
  set state(IndicatorEventStateEnum? state) => _$this._state = state;

  IndicatorEventPreviousStateEnum? _previousState;
  IndicatorEventPreviousStateEnum? get previousState => _$this._previousState;
  set previousState(IndicatorEventPreviousStateEnum? previousState) =>
      _$this._previousState = previousState;

  JsonObject? _evidence;
  JsonObject? get evidence => _$this._evidence;
  set evidence(JsonObject? evidence) => _$this._evidence = evidence;

  String? _revisionId;
  String? get revisionId => _$this._revisionId;
  set revisionId(String? revisionId) => _$this._revisionId = revisionId;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  IndicatorEventBuilder() {
    IndicatorEvent._defaults(this);
  }

  IndicatorEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indicatorId = $v.indicatorId;
      _setId = $v.setId;
      _description = $v.description;
      _signalFamily = $v.signalFamily;
      _state = $v.state;
      _previousState = $v.previousState;
      _evidence = $v.evidence;
      _revisionId = $v.revisionId;
      _private = $v.private;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorEvent other) {
    _$v = other as _$IndicatorEvent;
  }

  @override
  void update(void Function(IndicatorEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorEvent build() => _build();

  _$IndicatorEvent _build() {
    final _$result =
        _$v ??
        _$IndicatorEvent._(
          indicatorId: BuiltValueNullFieldError.checkNotNull(
            indicatorId,
            r'IndicatorEvent',
            'indicatorId',
          ),
          setId: BuiltValueNullFieldError.checkNotNull(
            setId,
            r'IndicatorEvent',
            'setId',
          ),
          description: description,
          signalFamily: signalFamily,
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'IndicatorEvent',
            'state',
          ),
          previousState: previousState,
          evidence: evidence,
          revisionId: revisionId,
          private: private,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'IndicatorEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
