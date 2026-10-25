// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EventStudyResultFrequencyEnum _$eventStudyResultFrequencyEnum_day =
    const EventStudyResultFrequencyEnum._('day');
const EventStudyResultFrequencyEnum _$eventStudyResultFrequencyEnum_week =
    const EventStudyResultFrequencyEnum._('week');
const EventStudyResultFrequencyEnum
_$eventStudyResultFrequencyEnum_unknownDefaultOpenApi =
    const EventStudyResultFrequencyEnum._('unknownDefaultOpenApi');

EventStudyResultFrequencyEnum _$eventStudyResultFrequencyEnumValueOf(
  String name,
) {
  switch (name) {
    case 'day':
      return _$eventStudyResultFrequencyEnum_day;
    case 'week':
      return _$eventStudyResultFrequencyEnum_week;
    case 'unknownDefaultOpenApi':
      return _$eventStudyResultFrequencyEnum_unknownDefaultOpenApi;
    default:
      return _$eventStudyResultFrequencyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EventStudyResultFrequencyEnum>
_$eventStudyResultFrequencyEnumValues = BuiltSet<EventStudyResultFrequencyEnum>(
  const <EventStudyResultFrequencyEnum>[
    _$eventStudyResultFrequencyEnum_day,
    _$eventStudyResultFrequencyEnum_week,
    _$eventStudyResultFrequencyEnum_unknownDefaultOpenApi,
  ],
);

const EventStudyResultTransformEnum _$eventStudyResultTransformEnum_logReturn =
    const EventStudyResultTransformEnum._('logReturn');
const EventStudyResultTransformEnum
_$eventStudyResultTransformEnum_logLevelStandardised =
    const EventStudyResultTransformEnum._('logLevelStandardised');
const EventStudyResultTransformEnum
_$eventStudyResultTransformEnum_weeklyDifferenceStandardised =
    const EventStudyResultTransformEnum._('weeklyDifferenceStandardised');
const EventStudyResultTransformEnum
_$eventStudyResultTransformEnum_anscombeResidual =
    const EventStudyResultTransformEnum._('anscombeResidual');
const EventStudyResultTransformEnum
_$eventStudyResultTransformEnum_unknownDefaultOpenApi =
    const EventStudyResultTransformEnum._('unknownDefaultOpenApi');

EventStudyResultTransformEnum _$eventStudyResultTransformEnumValueOf(
  String name,
) {
  switch (name) {
    case 'logReturn':
      return _$eventStudyResultTransformEnum_logReturn;
    case 'logLevelStandardised':
      return _$eventStudyResultTransformEnum_logLevelStandardised;
    case 'weeklyDifferenceStandardised':
      return _$eventStudyResultTransformEnum_weeklyDifferenceStandardised;
    case 'anscombeResidual':
      return _$eventStudyResultTransformEnum_anscombeResidual;
    case 'unknownDefaultOpenApi':
      return _$eventStudyResultTransformEnum_unknownDefaultOpenApi;
    default:
      return _$eventStudyResultTransformEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EventStudyResultTransformEnum>
_$eventStudyResultTransformEnumValues = BuiltSet<EventStudyResultTransformEnum>(
  const <EventStudyResultTransformEnum>[
    _$eventStudyResultTransformEnum_logReturn,
    _$eventStudyResultTransformEnum_logLevelStandardised,
    _$eventStudyResultTransformEnum_weeklyDifferenceStandardised,
    _$eventStudyResultTransformEnum_anscombeResidual,
    _$eventStudyResultTransformEnum_unknownDefaultOpenApi,
  ],
);

Serializer<EventStudyResultFrequencyEnum>
_$eventStudyResultFrequencyEnumSerializer =
    _$EventStudyResultFrequencyEnumSerializer();
Serializer<EventStudyResultTransformEnum>
_$eventStudyResultTransformEnumSerializer =
    _$EventStudyResultTransformEnumSerializer();

class _$EventStudyResultFrequencyEnumSerializer
    implements PrimitiveSerializer<EventStudyResultFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'day': 'day',
    'week': 'week',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'day': 'day',
    'week': 'week',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EventStudyResultFrequencyEnum];
  @override
  final String wireName = 'EventStudyResultFrequencyEnum';

  @override
  Object serialize(
    Serializers serializers,
    EventStudyResultFrequencyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EventStudyResultFrequencyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EventStudyResultFrequencyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EventStudyResultTransformEnumSerializer
    implements PrimitiveSerializer<EventStudyResultTransformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'logReturn': 'log-return',
    'logLevelStandardised': 'log-level-standardised',
    'weeklyDifferenceStandardised': 'weekly-difference-standardised',
    'anscombeResidual': 'anscombe-residual',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'log-return': 'logReturn',
    'log-level-standardised': 'logLevelStandardised',
    'weekly-difference-standardised': 'weeklyDifferenceStandardised',
    'anscombe-residual': 'anscombeResidual',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EventStudyResultTransformEnum];
  @override
  final String wireName = 'EventStudyResultTransformEnum';

  @override
  Object serialize(
    Serializers serializers,
    EventStudyResultTransformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EventStudyResultTransformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EventStudyResultTransformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EventStudyResult extends EventStudyResult {
  @override
  final DetectorRef detector;
  @override
  final String? definitionHash;
  @override
  final String target;
  @override
  final EventStudyResultFrequencyEnum frequency;
  @override
  final EventStudyResultTransformEnum? transform;
  @override
  final EventStudyResultWindows windows;
  @override
  final TimeRange? range;
  @override
  final int? asOfSeq;
  @override
  final String? placeboSeed;
  @override
  final int nEvents;
  @override
  final int? nClusters;
  @override
  final int? nExcluded;
  @override
  final BuiltList<EventStudyResultEventsInner> events;
  @override
  final EventStudyResultCaar caar;
  @override
  final BuiltList<Caveat> caveats;
  @override
  final bool? valuesWithheld;
  @override
  final bool? truncated;
  @override
  final String manifestId;

  factory _$EventStudyResult([
    void Function(EventStudyResultBuilder)? updates,
  ]) => (EventStudyResultBuilder()..update(updates))._build();

  _$EventStudyResult._({
    required this.detector,
    this.definitionHash,
    required this.target,
    required this.frequency,
    this.transform,
    required this.windows,
    this.range,
    this.asOfSeq,
    this.placeboSeed,
    required this.nEvents,
    this.nClusters,
    this.nExcluded,
    required this.events,
    required this.caar,
    required this.caveats,
    this.valuesWithheld,
    this.truncated,
    required this.manifestId,
  }) : super._();
  @override
  EventStudyResult rebuild(void Function(EventStudyResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStudyResultBuilder toBuilder() =>
      EventStudyResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyResult &&
        detector == other.detector &&
        definitionHash == other.definitionHash &&
        target == other.target &&
        frequency == other.frequency &&
        transform == other.transform &&
        windows == other.windows &&
        range == other.range &&
        asOfSeq == other.asOfSeq &&
        placeboSeed == other.placeboSeed &&
        nEvents == other.nEvents &&
        nClusters == other.nClusters &&
        nExcluded == other.nExcluded &&
        events == other.events &&
        caar == other.caar &&
        caveats == other.caveats &&
        valuesWithheld == other.valuesWithheld &&
        truncated == other.truncated &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, definitionHash.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, transform.hashCode);
    _$hash = $jc(_$hash, windows.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, placeboSeed.hashCode);
    _$hash = $jc(_$hash, nEvents.hashCode);
    _$hash = $jc(_$hash, nClusters.hashCode);
    _$hash = $jc(_$hash, nExcluded.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, caar.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, valuesWithheld.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStudyResult')
          ..add('detector', detector)
          ..add('definitionHash', definitionHash)
          ..add('target', target)
          ..add('frequency', frequency)
          ..add('transform', transform)
          ..add('windows', windows)
          ..add('range', range)
          ..add('asOfSeq', asOfSeq)
          ..add('placeboSeed', placeboSeed)
          ..add('nEvents', nEvents)
          ..add('nClusters', nClusters)
          ..add('nExcluded', nExcluded)
          ..add('events', events)
          ..add('caar', caar)
          ..add('caveats', caveats)
          ..add('valuesWithheld', valuesWithheld)
          ..add('truncated', truncated)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class EventStudyResultBuilder
    implements Builder<EventStudyResult, EventStudyResultBuilder> {
  _$EventStudyResult? _$v;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  String? _definitionHash;
  String? get definitionHash => _$this._definitionHash;
  set definitionHash(String? definitionHash) =>
      _$this._definitionHash = definitionHash;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  EventStudyResultFrequencyEnum? _frequency;
  EventStudyResultFrequencyEnum? get frequency => _$this._frequency;
  set frequency(EventStudyResultFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  EventStudyResultTransformEnum? _transform;
  EventStudyResultTransformEnum? get transform => _$this._transform;
  set transform(EventStudyResultTransformEnum? transform) =>
      _$this._transform = transform;

  EventStudyResultWindowsBuilder? _windows;
  EventStudyResultWindowsBuilder get windows =>
      _$this._windows ??= EventStudyResultWindowsBuilder();
  set windows(EventStudyResultWindowsBuilder? windows) =>
      _$this._windows = windows;

  TimeRangeBuilder? _range;
  TimeRangeBuilder get range => _$this._range ??= TimeRangeBuilder();
  set range(TimeRangeBuilder? range) => _$this._range = range;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  String? _placeboSeed;
  String? get placeboSeed => _$this._placeboSeed;
  set placeboSeed(String? placeboSeed) => _$this._placeboSeed = placeboSeed;

  int? _nEvents;
  int? get nEvents => _$this._nEvents;
  set nEvents(int? nEvents) => _$this._nEvents = nEvents;

  int? _nClusters;
  int? get nClusters => _$this._nClusters;
  set nClusters(int? nClusters) => _$this._nClusters = nClusters;

  int? _nExcluded;
  int? get nExcluded => _$this._nExcluded;
  set nExcluded(int? nExcluded) => _$this._nExcluded = nExcluded;

  ListBuilder<EventStudyResultEventsInner>? _events;
  ListBuilder<EventStudyResultEventsInner> get events =>
      _$this._events ??= ListBuilder<EventStudyResultEventsInner>();
  set events(ListBuilder<EventStudyResultEventsInner>? events) =>
      _$this._events = events;

  EventStudyResultCaarBuilder? _caar;
  EventStudyResultCaarBuilder get caar =>
      _$this._caar ??= EventStudyResultCaarBuilder();
  set caar(EventStudyResultCaarBuilder? caar) => _$this._caar = caar;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  bool? _valuesWithheld;
  bool? get valuesWithheld => _$this._valuesWithheld;
  set valuesWithheld(bool? valuesWithheld) =>
      _$this._valuesWithheld = valuesWithheld;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  EventStudyResultBuilder() {
    EventStudyResult._defaults(this);
  }

  EventStudyResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _detector = $v.detector.toBuilder();
      _definitionHash = $v.definitionHash;
      _target = $v.target;
      _frequency = $v.frequency;
      _transform = $v.transform;
      _windows = $v.windows.toBuilder();
      _range = $v.range?.toBuilder();
      _asOfSeq = $v.asOfSeq;
      _placeboSeed = $v.placeboSeed;
      _nEvents = $v.nEvents;
      _nClusters = $v.nClusters;
      _nExcluded = $v.nExcluded;
      _events = $v.events.toBuilder();
      _caar = $v.caar.toBuilder();
      _caveats = $v.caveats.toBuilder();
      _valuesWithheld = $v.valuesWithheld;
      _truncated = $v.truncated;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyResult other) {
    _$v = other as _$EventStudyResult;
  }

  @override
  void update(void Function(EventStudyResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyResult build() => _build();

  _$EventStudyResult _build() {
    _$EventStudyResult _$result;
    try {
      _$result =
          _$v ??
          _$EventStudyResult._(
            detector: detector.build(),
            definitionHash: definitionHash,
            target: BuiltValueNullFieldError.checkNotNull(
              target,
              r'EventStudyResult',
              'target',
            ),
            frequency: BuiltValueNullFieldError.checkNotNull(
              frequency,
              r'EventStudyResult',
              'frequency',
            ),
            transform: transform,
            windows: windows.build(),
            range: _range?.build(),
            asOfSeq: asOfSeq,
            placeboSeed: placeboSeed,
            nEvents: BuiltValueNullFieldError.checkNotNull(
              nEvents,
              r'EventStudyResult',
              'nEvents',
            ),
            nClusters: nClusters,
            nExcluded: nExcluded,
            events: events.build(),
            caar: caar.build(),
            caveats: caveats.build(),
            valuesWithheld: valuesWithheld,
            truncated: truncated,
            manifestId: BuiltValueNullFieldError.checkNotNull(
              manifestId,
              r'EventStudyResult',
              'manifestId',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'windows';
        windows.build();
        _$failedField = 'range';
        _range?.build();

        _$failedField = 'events';
        events.build();
        _$failedField = 'caar';
        caar.build();
        _$failedField = 'caveats';
        caveats.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EventStudyResult',
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
