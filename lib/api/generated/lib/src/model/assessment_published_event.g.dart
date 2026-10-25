// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_published_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssessmentPublishedEventCadenceEnum
_$assessmentPublishedEventCadenceEnum_daily =
    const AssessmentPublishedEventCadenceEnum._('daily');
const AssessmentPublishedEventCadenceEnum
_$assessmentPublishedEventCadenceEnum_weekly =
    const AssessmentPublishedEventCadenceEnum._('weekly');
const AssessmentPublishedEventCadenceEnum
_$assessmentPublishedEventCadenceEnum_monthly =
    const AssessmentPublishedEventCadenceEnum._('monthly');
const AssessmentPublishedEventCadenceEnum
_$assessmentPublishedEventCadenceEnum_onDemand =
    const AssessmentPublishedEventCadenceEnum._('onDemand');
const AssessmentPublishedEventCadenceEnum
_$assessmentPublishedEventCadenceEnum_unknownDefaultOpenApi =
    const AssessmentPublishedEventCadenceEnum._('unknownDefaultOpenApi');

AssessmentPublishedEventCadenceEnum
_$assessmentPublishedEventCadenceEnumValueOf(String name) {
  switch (name) {
    case 'daily':
      return _$assessmentPublishedEventCadenceEnum_daily;
    case 'weekly':
      return _$assessmentPublishedEventCadenceEnum_weekly;
    case 'monthly':
      return _$assessmentPublishedEventCadenceEnum_monthly;
    case 'onDemand':
      return _$assessmentPublishedEventCadenceEnum_onDemand;
    case 'unknownDefaultOpenApi':
      return _$assessmentPublishedEventCadenceEnum_unknownDefaultOpenApi;
    default:
      return _$assessmentPublishedEventCadenceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AssessmentPublishedEventCadenceEnum>
_$assessmentPublishedEventCadenceEnumValues =
    BuiltSet<AssessmentPublishedEventCadenceEnum>(
      const <AssessmentPublishedEventCadenceEnum>[
        _$assessmentPublishedEventCadenceEnum_daily,
        _$assessmentPublishedEventCadenceEnum_weekly,
        _$assessmentPublishedEventCadenceEnum_monthly,
        _$assessmentPublishedEventCadenceEnum_onDemand,
        _$assessmentPublishedEventCadenceEnum_unknownDefaultOpenApi,
      ],
    );

const AssessmentPublishedEventStatusEnum
_$assessmentPublishedEventStatusEnum_ok =
    const AssessmentPublishedEventStatusEnum._('ok');
const AssessmentPublishedEventStatusEnum
_$assessmentPublishedEventStatusEnum_partial =
    const AssessmentPublishedEventStatusEnum._('partial');
const AssessmentPublishedEventStatusEnum
_$assessmentPublishedEventStatusEnum_digestOnly =
    const AssessmentPublishedEventStatusEnum._('digestOnly');
const AssessmentPublishedEventStatusEnum
_$assessmentPublishedEventStatusEnum_failed =
    const AssessmentPublishedEventStatusEnum._('failed');
const AssessmentPublishedEventStatusEnum
_$assessmentPublishedEventStatusEnum_unknownDefaultOpenApi =
    const AssessmentPublishedEventStatusEnum._('unknownDefaultOpenApi');

AssessmentPublishedEventStatusEnum _$assessmentPublishedEventStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$assessmentPublishedEventStatusEnum_ok;
    case 'partial':
      return _$assessmentPublishedEventStatusEnum_partial;
    case 'digestOnly':
      return _$assessmentPublishedEventStatusEnum_digestOnly;
    case 'failed':
      return _$assessmentPublishedEventStatusEnum_failed;
    case 'unknownDefaultOpenApi':
      return _$assessmentPublishedEventStatusEnum_unknownDefaultOpenApi;
    default:
      return _$assessmentPublishedEventStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AssessmentPublishedEventStatusEnum>
_$assessmentPublishedEventStatusEnumValues =
    BuiltSet<AssessmentPublishedEventStatusEnum>(
      const <AssessmentPublishedEventStatusEnum>[
        _$assessmentPublishedEventStatusEnum_ok,
        _$assessmentPublishedEventStatusEnum_partial,
        _$assessmentPublishedEventStatusEnum_digestOnly,
        _$assessmentPublishedEventStatusEnum_failed,
        _$assessmentPublishedEventStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AssessmentPublishedEventCadenceEnum>
_$assessmentPublishedEventCadenceEnumSerializer =
    _$AssessmentPublishedEventCadenceEnumSerializer();
Serializer<AssessmentPublishedEventStatusEnum>
_$assessmentPublishedEventStatusEnumSerializer =
    _$AssessmentPublishedEventStatusEnumSerializer();

class _$AssessmentPublishedEventCadenceEnumSerializer
    implements PrimitiveSerializer<AssessmentPublishedEventCadenceEnum> {
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
  final Iterable<Type> types = const <Type>[
    AssessmentPublishedEventCadenceEnum,
  ];
  @override
  final String wireName = 'AssessmentPublishedEventCadenceEnum';

  @override
  Object serialize(
    Serializers serializers,
    AssessmentPublishedEventCadenceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AssessmentPublishedEventCadenceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AssessmentPublishedEventCadenceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AssessmentPublishedEventStatusEnumSerializer
    implements PrimitiveSerializer<AssessmentPublishedEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'partial': 'partial',
    'digestOnly': 'digest-only',
    'failed': 'failed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'partial': 'partial',
    'digest-only': 'digestOnly',
    'failed': 'failed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AssessmentPublishedEventStatusEnum];
  @override
  final String wireName = 'AssessmentPublishedEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AssessmentPublishedEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AssessmentPublishedEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AssessmentPublishedEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AssessmentPublishedEvent extends AssessmentPublishedEvent {
  @override
  final String assessmentId;
  @override
  final String? cycleId;
  @override
  final String? situationId;
  @override
  final AssessmentPublishedEventCadenceEnum cadence;
  @override
  final AssessmentPublishedEventStatusEnum status;
  @override
  final DateTime? periodStart;
  @override
  final DateTime? periodEnd;
  @override
  final String? headline;
  @override
  final bool? private;
  @override
  final DateTime at;

  factory _$AssessmentPublishedEvent([
    void Function(AssessmentPublishedEventBuilder)? updates,
  ]) => (AssessmentPublishedEventBuilder()..update(updates))._build();

  _$AssessmentPublishedEvent._({
    required this.assessmentId,
    this.cycleId,
    this.situationId,
    required this.cadence,
    required this.status,
    this.periodStart,
    this.periodEnd,
    this.headline,
    this.private,
    required this.at,
  }) : super._();
  @override
  AssessmentPublishedEvent rebuild(
    void Function(AssessmentPublishedEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AssessmentPublishedEventBuilder toBuilder() =>
      AssessmentPublishedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentPublishedEvent &&
        assessmentId == other.assessmentId &&
        cycleId == other.cycleId &&
        situationId == other.situationId &&
        cadence == other.cadence &&
        status == other.status &&
        periodStart == other.periodStart &&
        periodEnd == other.periodEnd &&
        headline == other.headline &&
        private == other.private &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assessmentId.hashCode);
    _$hash = $jc(_$hash, cycleId.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, periodStart.hashCode);
    _$hash = $jc(_$hash, periodEnd.hashCode);
    _$hash = $jc(_$hash, headline.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssessmentPublishedEvent')
          ..add('assessmentId', assessmentId)
          ..add('cycleId', cycleId)
          ..add('situationId', situationId)
          ..add('cadence', cadence)
          ..add('status', status)
          ..add('periodStart', periodStart)
          ..add('periodEnd', periodEnd)
          ..add('headline', headline)
          ..add('private', private)
          ..add('at', at))
        .toString();
  }
}

class AssessmentPublishedEventBuilder
    implements
        Builder<AssessmentPublishedEvent, AssessmentPublishedEventBuilder> {
  _$AssessmentPublishedEvent? _$v;

  String? _assessmentId;
  String? get assessmentId => _$this._assessmentId;
  set assessmentId(String? assessmentId) => _$this._assessmentId = assessmentId;

  String? _cycleId;
  String? get cycleId => _$this._cycleId;
  set cycleId(String? cycleId) => _$this._cycleId = cycleId;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  AssessmentPublishedEventCadenceEnum? _cadence;
  AssessmentPublishedEventCadenceEnum? get cadence => _$this._cadence;
  set cadence(AssessmentPublishedEventCadenceEnum? cadence) =>
      _$this._cadence = cadence;

  AssessmentPublishedEventStatusEnum? _status;
  AssessmentPublishedEventStatusEnum? get status => _$this._status;
  set status(AssessmentPublishedEventStatusEnum? status) =>
      _$this._status = status;

  DateTime? _periodStart;
  DateTime? get periodStart => _$this._periodStart;
  set periodStart(DateTime? periodStart) => _$this._periodStart = periodStart;

  DateTime? _periodEnd;
  DateTime? get periodEnd => _$this._periodEnd;
  set periodEnd(DateTime? periodEnd) => _$this._periodEnd = periodEnd;

  String? _headline;
  String? get headline => _$this._headline;
  set headline(String? headline) => _$this._headline = headline;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  AssessmentPublishedEventBuilder() {
    AssessmentPublishedEvent._defaults(this);
  }

  AssessmentPublishedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assessmentId = $v.assessmentId;
      _cycleId = $v.cycleId;
      _situationId = $v.situationId;
      _cadence = $v.cadence;
      _status = $v.status;
      _periodStart = $v.periodStart;
      _periodEnd = $v.periodEnd;
      _headline = $v.headline;
      _private = $v.private;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentPublishedEvent other) {
    _$v = other as _$AssessmentPublishedEvent;
  }

  @override
  void update(void Function(AssessmentPublishedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentPublishedEvent build() => _build();

  _$AssessmentPublishedEvent _build() {
    final _$result =
        _$v ??
        _$AssessmentPublishedEvent._(
          assessmentId: BuiltValueNullFieldError.checkNotNull(
            assessmentId,
            r'AssessmentPublishedEvent',
            'assessmentId',
          ),
          cycleId: cycleId,
          situationId: situationId,
          cadence: BuiltValueNullFieldError.checkNotNull(
            cadence,
            r'AssessmentPublishedEvent',
            'cadence',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'AssessmentPublishedEvent',
            'status',
          ),
          periodStart: periodStart,
          periodEnd: periodEnd,
          headline: headline,
          private: private,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'AssessmentPublishedEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
