// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_cloud_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SinkCloudEventSpecversionEnum _$sinkCloudEventSpecversionEnum_n1period0 =
    const SinkCloudEventSpecversionEnum._('n1period0');

SinkCloudEventSpecversionEnum _$sinkCloudEventSpecversionEnumValueOf(
    String name) {
  switch (name) {
    case 'n1period0':
      return _$sinkCloudEventSpecversionEnum_n1period0;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkCloudEventSpecversionEnum>
    _$sinkCloudEventSpecversionEnumValues = BuiltSet<
        SinkCloudEventSpecversionEnum>(const <SinkCloudEventSpecversionEnum>[
  _$sinkCloudEventSpecversionEnum_n1period0,
]);

const SinkCloudEventTypeEnum
    _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodCreated =
    const SinkCloudEventTypeEnum._(
        'aiPeriodForesignalPeriodRecordPeriodCreated');
const SinkCloudEventTypeEnum
    _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodUpdated =
    const SinkCloudEventTypeEnum._(
        'aiPeriodForesignalPeriodRecordPeriodUpdated');
const SinkCloudEventTypeEnum
    _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodTombstoned =
    const SinkCloudEventTypeEnum._(
        'aiPeriodForesignalPeriodRecordPeriodTombstoned');
const SinkCloudEventTypeEnum
    _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodSnapshot =
    const SinkCloudEventTypeEnum._(
        'aiPeriodForesignalPeriodRecordPeriodSnapshot');

SinkCloudEventTypeEnum _$sinkCloudEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'aiPeriodForesignalPeriodRecordPeriodCreated':
      return _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodCreated;
    case 'aiPeriodForesignalPeriodRecordPeriodUpdated':
      return _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodUpdated;
    case 'aiPeriodForesignalPeriodRecordPeriodTombstoned':
      return _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodTombstoned;
    case 'aiPeriodForesignalPeriodRecordPeriodSnapshot':
      return _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodSnapshot;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkCloudEventTypeEnum> _$sinkCloudEventTypeEnumValues =
    BuiltSet<SinkCloudEventTypeEnum>(const <SinkCloudEventTypeEnum>[
  _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodCreated,
  _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodUpdated,
  _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodTombstoned,
  _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodSnapshot,
]);

Serializer<SinkCloudEventSpecversionEnum>
    _$sinkCloudEventSpecversionEnumSerializer =
    _$SinkCloudEventSpecversionEnumSerializer();
Serializer<SinkCloudEventTypeEnum> _$sinkCloudEventTypeEnumSerializer =
    _$SinkCloudEventTypeEnumSerializer();

class _$SinkCloudEventSpecversionEnumSerializer
    implements PrimitiveSerializer<SinkCloudEventSpecversionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n1period0': '1.0',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '1.0': 'n1period0',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkCloudEventSpecversionEnum];
  @override
  final String wireName = 'SinkCloudEventSpecversionEnum';

  @override
  Object serialize(
          Serializers serializers, SinkCloudEventSpecversionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SinkCloudEventSpecversionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SinkCloudEventSpecversionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SinkCloudEventTypeEnumSerializer
    implements PrimitiveSerializer<SinkCloudEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'aiPeriodForesignalPeriodRecordPeriodCreated':
        'ai.foresignal.record.created',
    'aiPeriodForesignalPeriodRecordPeriodUpdated':
        'ai.foresignal.record.updated',
    'aiPeriodForesignalPeriodRecordPeriodTombstoned':
        'ai.foresignal.record.tombstoned',
    'aiPeriodForesignalPeriodRecordPeriodSnapshot':
        'ai.foresignal.record.snapshot',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ai.foresignal.record.created':
        'aiPeriodForesignalPeriodRecordPeriodCreated',
    'ai.foresignal.record.updated':
        'aiPeriodForesignalPeriodRecordPeriodUpdated',
    'ai.foresignal.record.tombstoned':
        'aiPeriodForesignalPeriodRecordPeriodTombstoned',
    'ai.foresignal.record.snapshot':
        'aiPeriodForesignalPeriodRecordPeriodSnapshot',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkCloudEventTypeEnum];
  @override
  final String wireName = 'SinkCloudEventTypeEnum';

  @override
  Object serialize(Serializers serializers, SinkCloudEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SinkCloudEventTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SinkCloudEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SinkCloudEvent extends SinkCloudEvent {
  @override
  final SinkCloudEventSpecversionEnum specversion;
  @override
  final String id;
  @override
  final String source_;
  @override
  final SinkCloudEventTypeEnum type;
  @override
  final String subject;
  @override
  final DateTime time;
  @override
  final String? datacontenttype;
  @override
  final int? foresignalseq;
  @override
  final String? foresignalkind;
  @override
  final String? foresignalreason;
  @override
  final SinkCloudEventData data;

  factory _$SinkCloudEvent([void Function(SinkCloudEventBuilder)? updates]) =>
      (SinkCloudEventBuilder()..update(updates))._build();

  _$SinkCloudEvent._(
      {required this.specversion,
      required this.id,
      required this.source_,
      required this.type,
      required this.subject,
      required this.time,
      this.datacontenttype,
      this.foresignalseq,
      this.foresignalkind,
      this.foresignalreason,
      required this.data})
      : super._();
  @override
  SinkCloudEvent rebuild(void Function(SinkCloudEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkCloudEventBuilder toBuilder() => SinkCloudEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkCloudEvent &&
        specversion == other.specversion &&
        id == other.id &&
        source_ == other.source_ &&
        type == other.type &&
        subject == other.subject &&
        time == other.time &&
        datacontenttype == other.datacontenttype &&
        foresignalseq == other.foresignalseq &&
        foresignalkind == other.foresignalkind &&
        foresignalreason == other.foresignalreason &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, specversion.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, datacontenttype.hashCode);
    _$hash = $jc(_$hash, foresignalseq.hashCode);
    _$hash = $jc(_$hash, foresignalkind.hashCode);
    _$hash = $jc(_$hash, foresignalreason.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkCloudEvent')
          ..add('specversion', specversion)
          ..add('id', id)
          ..add('source_', source_)
          ..add('type', type)
          ..add('subject', subject)
          ..add('time', time)
          ..add('datacontenttype', datacontenttype)
          ..add('foresignalseq', foresignalseq)
          ..add('foresignalkind', foresignalkind)
          ..add('foresignalreason', foresignalreason)
          ..add('data', data))
        .toString();
  }
}

class SinkCloudEventBuilder
    implements Builder<SinkCloudEvent, SinkCloudEventBuilder> {
  _$SinkCloudEvent? _$v;

  SinkCloudEventSpecversionEnum? _specversion;
  SinkCloudEventSpecversionEnum? get specversion => _$this._specversion;
  set specversion(SinkCloudEventSpecversionEnum? specversion) =>
      _$this._specversion = specversion;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  SinkCloudEventTypeEnum? _type;
  SinkCloudEventTypeEnum? get type => _$this._type;
  set type(SinkCloudEventTypeEnum? type) => _$this._type = type;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _datacontenttype;
  String? get datacontenttype => _$this._datacontenttype;
  set datacontenttype(String? datacontenttype) =>
      _$this._datacontenttype = datacontenttype;

  int? _foresignalseq;
  int? get foresignalseq => _$this._foresignalseq;
  set foresignalseq(int? foresignalseq) =>
      _$this._foresignalseq = foresignalseq;

  String? _foresignalkind;
  String? get foresignalkind => _$this._foresignalkind;
  set foresignalkind(String? foresignalkind) =>
      _$this._foresignalkind = foresignalkind;

  String? _foresignalreason;
  String? get foresignalreason => _$this._foresignalreason;
  set foresignalreason(String? foresignalreason) =>
      _$this._foresignalreason = foresignalreason;

  SinkCloudEventDataBuilder? _data;
  SinkCloudEventDataBuilder get data =>
      _$this._data ??= SinkCloudEventDataBuilder();
  set data(SinkCloudEventDataBuilder? data) => _$this._data = data;

  SinkCloudEventBuilder() {
    SinkCloudEvent._defaults(this);
  }

  SinkCloudEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _specversion = $v.specversion;
      _id = $v.id;
      _source_ = $v.source_;
      _type = $v.type;
      _subject = $v.subject;
      _time = $v.time;
      _datacontenttype = $v.datacontenttype;
      _foresignalseq = $v.foresignalseq;
      _foresignalkind = $v.foresignalkind;
      _foresignalreason = $v.foresignalreason;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkCloudEvent other) {
    _$v = other as _$SinkCloudEvent;
  }

  @override
  void update(void Function(SinkCloudEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkCloudEvent build() => _build();

  _$SinkCloudEvent _build() {
    _$SinkCloudEvent _$result;
    try {
      _$result = _$v ??
          _$SinkCloudEvent._(
            specversion: BuiltValueNullFieldError.checkNotNull(
                specversion, r'SinkCloudEvent', 'specversion'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SinkCloudEvent', 'id'),
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, r'SinkCloudEvent', 'source_'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'SinkCloudEvent', 'type'),
            subject: BuiltValueNullFieldError.checkNotNull(
                subject, r'SinkCloudEvent', 'subject'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'SinkCloudEvent', 'time'),
            datacontenttype: datacontenttype,
            foresignalseq: foresignalseq,
            foresignalkind: foresignalkind,
            foresignalreason: foresignalreason,
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SinkCloudEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
