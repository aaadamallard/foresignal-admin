// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_run_failed_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CycleRunFailedEventCadenceEnum _$cycleRunFailedEventCadenceEnum_daily =
    const CycleRunFailedEventCadenceEnum._('daily');
const CycleRunFailedEventCadenceEnum _$cycleRunFailedEventCadenceEnum_weekly =
    const CycleRunFailedEventCadenceEnum._('weekly');
const CycleRunFailedEventCadenceEnum _$cycleRunFailedEventCadenceEnum_monthly =
    const CycleRunFailedEventCadenceEnum._('monthly');
const CycleRunFailedEventCadenceEnum _$cycleRunFailedEventCadenceEnum_onDemand =
    const CycleRunFailedEventCadenceEnum._('onDemand');
const CycleRunFailedEventCadenceEnum
_$cycleRunFailedEventCadenceEnum_unknownDefaultOpenApi =
    const CycleRunFailedEventCadenceEnum._('unknownDefaultOpenApi');

CycleRunFailedEventCadenceEnum _$cycleRunFailedEventCadenceEnumValueOf(
  String name,
) {
  switch (name) {
    case 'daily':
      return _$cycleRunFailedEventCadenceEnum_daily;
    case 'weekly':
      return _$cycleRunFailedEventCadenceEnum_weekly;
    case 'monthly':
      return _$cycleRunFailedEventCadenceEnum_monthly;
    case 'onDemand':
      return _$cycleRunFailedEventCadenceEnum_onDemand;
    case 'unknownDefaultOpenApi':
      return _$cycleRunFailedEventCadenceEnum_unknownDefaultOpenApi;
    default:
      return _$cycleRunFailedEventCadenceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CycleRunFailedEventCadenceEnum>
_$cycleRunFailedEventCadenceEnumValues =
    BuiltSet<CycleRunFailedEventCadenceEnum>(
      const <CycleRunFailedEventCadenceEnum>[
        _$cycleRunFailedEventCadenceEnum_daily,
        _$cycleRunFailedEventCadenceEnum_weekly,
        _$cycleRunFailedEventCadenceEnum_monthly,
        _$cycleRunFailedEventCadenceEnum_onDemand,
        _$cycleRunFailedEventCadenceEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<CycleRunFailedEventCadenceEnum>
_$cycleRunFailedEventCadenceEnumSerializer =
    _$CycleRunFailedEventCadenceEnumSerializer();

class _$CycleRunFailedEventCadenceEnumSerializer
    implements PrimitiveSerializer<CycleRunFailedEventCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'onDemand': 'on-demand',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'on-demand': 'onDemand',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CycleRunFailedEventCadenceEnum];
  @override
  final String wireName = 'CycleRunFailedEventCadenceEnum';

  @override
  Object serialize(
    Serializers serializers,
    CycleRunFailedEventCadenceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CycleRunFailedEventCadenceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CycleRunFailedEventCadenceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CycleRunFailedEvent extends CycleRunFailedEvent {
  @override
  final String runId;
  @override
  final String? cycleId;
  @override
  final String? situationId;
  @override
  final CycleRunFailedEventCadenceEnum cadence;
  @override
  final String reason;
  @override
  final DateTime at;

  factory _$CycleRunFailedEvent([
    void Function(CycleRunFailedEventBuilder)? updates,
  ]) => (CycleRunFailedEventBuilder()..update(updates))._build();

  _$CycleRunFailedEvent._({
    required this.runId,
    this.cycleId,
    this.situationId,
    required this.cadence,
    required this.reason,
    required this.at,
  }) : super._();
  @override
  CycleRunFailedEvent rebuild(
    void Function(CycleRunFailedEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CycleRunFailedEventBuilder toBuilder() =>
      CycleRunFailedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CycleRunFailedEvent &&
        runId == other.runId &&
        cycleId == other.cycleId &&
        situationId == other.situationId &&
        cadence == other.cadence &&
        reason == other.reason &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, runId.hashCode);
    _$hash = $jc(_$hash, cycleId.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CycleRunFailedEvent')
          ..add('runId', runId)
          ..add('cycleId', cycleId)
          ..add('situationId', situationId)
          ..add('cadence', cadence)
          ..add('reason', reason)
          ..add('at', at))
        .toString();
  }
}

class CycleRunFailedEventBuilder
    implements Builder<CycleRunFailedEvent, CycleRunFailedEventBuilder> {
  _$CycleRunFailedEvent? _$v;

  String? _runId;
  String? get runId => _$this._runId;
  set runId(String? runId) => _$this._runId = runId;

  String? _cycleId;
  String? get cycleId => _$this._cycleId;
  set cycleId(String? cycleId) => _$this._cycleId = cycleId;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  CycleRunFailedEventCadenceEnum? _cadence;
  CycleRunFailedEventCadenceEnum? get cadence => _$this._cadence;
  set cadence(CycleRunFailedEventCadenceEnum? cadence) =>
      _$this._cadence = cadence;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  CycleRunFailedEventBuilder() {
    CycleRunFailedEvent._defaults(this);
  }

  CycleRunFailedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _runId = $v.runId;
      _cycleId = $v.cycleId;
      _situationId = $v.situationId;
      _cadence = $v.cadence;
      _reason = $v.reason;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CycleRunFailedEvent other) {
    _$v = other as _$CycleRunFailedEvent;
  }

  @override
  void update(void Function(CycleRunFailedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CycleRunFailedEvent build() => _build();

  _$CycleRunFailedEvent _build() {
    final _$result =
        _$v ??
        _$CycleRunFailedEvent._(
          runId: BuiltValueNullFieldError.checkNotNull(
            runId,
            r'CycleRunFailedEvent',
            'runId',
          ),
          cycleId: cycleId,
          situationId: situationId,
          cadence: BuiltValueNullFieldError.checkNotNull(
            cadence,
            r'CycleRunFailedEvent',
            'cadence',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'CycleRunFailedEvent',
            'reason',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'CycleRunFailedEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
