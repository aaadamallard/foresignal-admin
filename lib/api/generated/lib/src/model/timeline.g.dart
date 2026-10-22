// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimelineTimeFieldEnum _$timelineTimeFieldEnum_effective =
    const TimelineTimeFieldEnum._('effective');
const TimelineTimeFieldEnum _$timelineTimeFieldEnum_observed =
    const TimelineTimeFieldEnum._('observed');
const TimelineTimeFieldEnum _$timelineTimeFieldEnum_event =
    const TimelineTimeFieldEnum._('event');
const TimelineTimeFieldEnum _$timelineTimeFieldEnum_ingested =
    const TimelineTimeFieldEnum._('ingested');

TimelineTimeFieldEnum _$timelineTimeFieldEnumValueOf(String name) {
  switch (name) {
    case 'effective':
      return _$timelineTimeFieldEnum_effective;
    case 'observed':
      return _$timelineTimeFieldEnum_observed;
    case 'event':
      return _$timelineTimeFieldEnum_event;
    case 'ingested':
      return _$timelineTimeFieldEnum_ingested;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TimelineTimeFieldEnum> _$timelineTimeFieldEnumValues =
    BuiltSet<TimelineTimeFieldEnum>(const <TimelineTimeFieldEnum>[
  _$timelineTimeFieldEnum_effective,
  _$timelineTimeFieldEnum_observed,
  _$timelineTimeFieldEnum_event,
  _$timelineTimeFieldEnum_ingested,
]);

const TimelineMeasureEnum _$timelineMeasureEnum_versions =
    const TimelineMeasureEnum._('versions');
const TimelineMeasureEnum _$timelineMeasureEnum_entities =
    const TimelineMeasureEnum._('entities');

TimelineMeasureEnum _$timelineMeasureEnumValueOf(String name) {
  switch (name) {
    case 'versions':
      return _$timelineMeasureEnum_versions;
    case 'entities':
      return _$timelineMeasureEnum_entities;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TimelineMeasureEnum> _$timelineMeasureEnumValues =
    BuiltSet<TimelineMeasureEnum>(const <TimelineMeasureEnum>[
  _$timelineMeasureEnum_versions,
  _$timelineMeasureEnum_entities,
]);

const TimelineGroupByEnum _$timelineGroupByEnum_none =
    const TimelineGroupByEnum._('none');
const TimelineGroupByEnum _$timelineGroupByEnum_kind =
    const TimelineGroupByEnum._('kind');
const TimelineGroupByEnum _$timelineGroupByEnum_source_ =
    const TimelineGroupByEnum._('source_');

TimelineGroupByEnum _$timelineGroupByEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$timelineGroupByEnum_none;
    case 'kind':
      return _$timelineGroupByEnum_kind;
    case 'source_':
      return _$timelineGroupByEnum_source_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TimelineGroupByEnum> _$timelineGroupByEnumValues =
    BuiltSet<TimelineGroupByEnum>(const <TimelineGroupByEnum>[
  _$timelineGroupByEnum_none,
  _$timelineGroupByEnum_kind,
  _$timelineGroupByEnum_source_,
]);

const TimelineBackendEnum _$timelineBackendEnum_raw =
    const TimelineBackendEnum._('raw');
const TimelineBackendEnum _$timelineBackendEnum_rollup =
    const TimelineBackendEnum._('rollup');
const TimelineBackendEnum _$timelineBackendEnum_mixed =
    const TimelineBackendEnum._('mixed');

TimelineBackendEnum _$timelineBackendEnumValueOf(String name) {
  switch (name) {
    case 'raw':
      return _$timelineBackendEnum_raw;
    case 'rollup':
      return _$timelineBackendEnum_rollup;
    case 'mixed':
      return _$timelineBackendEnum_mixed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TimelineBackendEnum> _$timelineBackendEnumValues =
    BuiltSet<TimelineBackendEnum>(const <TimelineBackendEnum>[
  _$timelineBackendEnum_raw,
  _$timelineBackendEnum_rollup,
  _$timelineBackendEnum_mixed,
]);

Serializer<TimelineTimeFieldEnum> _$timelineTimeFieldEnumSerializer =
    _$TimelineTimeFieldEnumSerializer();
Serializer<TimelineMeasureEnum> _$timelineMeasureEnumSerializer =
    _$TimelineMeasureEnumSerializer();
Serializer<TimelineGroupByEnum> _$timelineGroupByEnumSerializer =
    _$TimelineGroupByEnumSerializer();
Serializer<TimelineBackendEnum> _$timelineBackendEnumSerializer =
    _$TimelineBackendEnumSerializer();

class _$TimelineTimeFieldEnumSerializer
    implements PrimitiveSerializer<TimelineTimeFieldEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'effective': 'effective',
    'observed': 'observed',
    'event': 'event',
    'ingested': 'ingested',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'effective': 'effective',
    'observed': 'observed',
    'event': 'event',
    'ingested': 'ingested',
  };

  @override
  final Iterable<Type> types = const <Type>[TimelineTimeFieldEnum];
  @override
  final String wireName = 'TimelineTimeFieldEnum';

  @override
  Object serialize(Serializers serializers, TimelineTimeFieldEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TimelineTimeFieldEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TimelineTimeFieldEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TimelineMeasureEnumSerializer
    implements PrimitiveSerializer<TimelineMeasureEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'versions': 'versions',
    'entities': 'entities',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'versions': 'versions',
    'entities': 'entities',
  };

  @override
  final Iterable<Type> types = const <Type>[TimelineMeasureEnum];
  @override
  final String wireName = 'TimelineMeasureEnum';

  @override
  Object serialize(Serializers serializers, TimelineMeasureEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TimelineMeasureEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TimelineMeasureEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TimelineGroupByEnumSerializer
    implements PrimitiveSerializer<TimelineGroupByEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'kind': 'kind',
    'source_': 'source',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'kind': 'kind',
    'source': 'source_',
  };

  @override
  final Iterable<Type> types = const <Type>[TimelineGroupByEnum];
  @override
  final String wireName = 'TimelineGroupByEnum';

  @override
  Object serialize(Serializers serializers, TimelineGroupByEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TimelineGroupByEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TimelineGroupByEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TimelineBackendEnumSerializer
    implements PrimitiveSerializer<TimelineBackendEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'raw': 'raw',
    'rollup': 'rollup',
    'mixed': 'mixed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'raw': 'raw',
    'rollup': 'rollup',
    'mixed': 'mixed',
  };

  @override
  final Iterable<Type> types = const <Type>[TimelineBackendEnum];
  @override
  final String wireName = 'TimelineBackendEnum';

  @override
  Object serialize(Serializers serializers, TimelineBackendEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TimelineBackendEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TimelineBackendEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Timeline extends Timeline {
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final String bucket;
  @override
  final TimelineTimeFieldEnum timeField;
  @override
  final TimelineMeasureEnum? measure;
  @override
  final TimelineGroupByEnum? groupBy;
  @override
  final BuiltList<TimelineBucket> buckets;
  @override
  final BuiltList<TimelineAlertsInner>? alerts;
  @override
  final int? maxBucket;
  @override
  final bool? approximate;
  @override
  final DateTime? retainedFrom;
  @override
  final TimelineBackendEnum? backend;

  factory _$Timeline([void Function(TimelineBuilder)? updates]) =>
      (TimelineBuilder()..update(updates))._build();

  _$Timeline._(
      {required this.from,
      required this.to,
      required this.bucket,
      required this.timeField,
      this.measure,
      this.groupBy,
      required this.buckets,
      this.alerts,
      this.maxBucket,
      this.approximate,
      this.retainedFrom,
      this.backend})
      : super._();
  @override
  Timeline rebuild(void Function(TimelineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimelineBuilder toBuilder() => TimelineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Timeline &&
        from == other.from &&
        to == other.to &&
        bucket == other.bucket &&
        timeField == other.timeField &&
        measure == other.measure &&
        groupBy == other.groupBy &&
        buckets == other.buckets &&
        alerts == other.alerts &&
        maxBucket == other.maxBucket &&
        approximate == other.approximate &&
        retainedFrom == other.retainedFrom &&
        backend == other.backend;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, timeField.hashCode);
    _$hash = $jc(_$hash, measure.hashCode);
    _$hash = $jc(_$hash, groupBy.hashCode);
    _$hash = $jc(_$hash, buckets.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, maxBucket.hashCode);
    _$hash = $jc(_$hash, approximate.hashCode);
    _$hash = $jc(_$hash, retainedFrom.hashCode);
    _$hash = $jc(_$hash, backend.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Timeline')
          ..add('from', from)
          ..add('to', to)
          ..add('bucket', bucket)
          ..add('timeField', timeField)
          ..add('measure', measure)
          ..add('groupBy', groupBy)
          ..add('buckets', buckets)
          ..add('alerts', alerts)
          ..add('maxBucket', maxBucket)
          ..add('approximate', approximate)
          ..add('retainedFrom', retainedFrom)
          ..add('backend', backend))
        .toString();
  }
}

class TimelineBuilder implements Builder<Timeline, TimelineBuilder> {
  _$Timeline? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  TimelineTimeFieldEnum? _timeField;
  TimelineTimeFieldEnum? get timeField => _$this._timeField;
  set timeField(TimelineTimeFieldEnum? timeField) =>
      _$this._timeField = timeField;

  TimelineMeasureEnum? _measure;
  TimelineMeasureEnum? get measure => _$this._measure;
  set measure(TimelineMeasureEnum? measure) => _$this._measure = measure;

  TimelineGroupByEnum? _groupBy;
  TimelineGroupByEnum? get groupBy => _$this._groupBy;
  set groupBy(TimelineGroupByEnum? groupBy) => _$this._groupBy = groupBy;

  ListBuilder<TimelineBucket>? _buckets;
  ListBuilder<TimelineBucket> get buckets =>
      _$this._buckets ??= ListBuilder<TimelineBucket>();
  set buckets(ListBuilder<TimelineBucket>? buckets) =>
      _$this._buckets = buckets;

  ListBuilder<TimelineAlertsInner>? _alerts;
  ListBuilder<TimelineAlertsInner> get alerts =>
      _$this._alerts ??= ListBuilder<TimelineAlertsInner>();
  set alerts(ListBuilder<TimelineAlertsInner>? alerts) =>
      _$this._alerts = alerts;

  int? _maxBucket;
  int? get maxBucket => _$this._maxBucket;
  set maxBucket(int? maxBucket) => _$this._maxBucket = maxBucket;

  bool? _approximate;
  bool? get approximate => _$this._approximate;
  set approximate(bool? approximate) => _$this._approximate = approximate;

  DateTime? _retainedFrom;
  DateTime? get retainedFrom => _$this._retainedFrom;
  set retainedFrom(DateTime? retainedFrom) =>
      _$this._retainedFrom = retainedFrom;

  TimelineBackendEnum? _backend;
  TimelineBackendEnum? get backend => _$this._backend;
  set backend(TimelineBackendEnum? backend) => _$this._backend = backend;

  TimelineBuilder() {
    Timeline._defaults(this);
  }

  TimelineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _bucket = $v.bucket;
      _timeField = $v.timeField;
      _measure = $v.measure;
      _groupBy = $v.groupBy;
      _buckets = $v.buckets.toBuilder();
      _alerts = $v.alerts?.toBuilder();
      _maxBucket = $v.maxBucket;
      _approximate = $v.approximate;
      _retainedFrom = $v.retainedFrom;
      _backend = $v.backend;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Timeline other) {
    _$v = other as _$Timeline;
  }

  @override
  void update(void Function(TimelineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Timeline build() => _build();

  _$Timeline _build() {
    _$Timeline _$result;
    try {
      _$result = _$v ??
          _$Timeline._(
            from: BuiltValueNullFieldError.checkNotNull(
                from, r'Timeline', 'from'),
            to: BuiltValueNullFieldError.checkNotNull(to, r'Timeline', 'to'),
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'Timeline', 'bucket'),
            timeField: BuiltValueNullFieldError.checkNotNull(
                timeField, r'Timeline', 'timeField'),
            measure: measure,
            groupBy: groupBy,
            buckets: buckets.build(),
            alerts: _alerts?.build(),
            maxBucket: maxBucket,
            approximate: approximate,
            retainedFrom: retainedFrom,
            backend: backend,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buckets';
        buckets.build();
        _$failedField = 'alerts';
        _alerts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Timeline', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
