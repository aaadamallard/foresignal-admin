// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CloudEventSpecversionEnum _$cloudEventSpecversionEnum_n1period0 =
    const CloudEventSpecversionEnum._('n1period0');
const CloudEventSpecversionEnum
_$cloudEventSpecversionEnum_unknownDefaultOpenApi =
    const CloudEventSpecversionEnum._('unknownDefaultOpenApi');

CloudEventSpecversionEnum _$cloudEventSpecversionEnumValueOf(String name) {
  switch (name) {
    case 'n1period0':
      return _$cloudEventSpecversionEnum_n1period0;
    case 'unknownDefaultOpenApi':
      return _$cloudEventSpecversionEnum_unknownDefaultOpenApi;
    default:
      return _$cloudEventSpecversionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CloudEventSpecversionEnum> _$cloudEventSpecversionEnumValues =
    BuiltSet<CloudEventSpecversionEnum>(const <CloudEventSpecversionEnum>[
      _$cloudEventSpecversionEnum_n1period0,
      _$cloudEventSpecversionEnum_unknownDefaultOpenApi,
    ]);

Serializer<CloudEventSpecversionEnum> _$cloudEventSpecversionEnumSerializer =
    _$CloudEventSpecversionEnumSerializer();

class _$CloudEventSpecversionEnumSerializer
    implements PrimitiveSerializer<CloudEventSpecversionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n1period0': '1.0',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '1.0': 'n1period0',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CloudEventSpecversionEnum];
  @override
  final String wireName = 'CloudEventSpecversionEnum';

  @override
  Object serialize(
    Serializers serializers,
    CloudEventSpecversionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CloudEventSpecversionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CloudEventSpecversionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CloudEvent extends CloudEvent {
  @override
  final CloudEventSpecversionEnum specversion;
  @override
  final String id;
  @override
  final String source_;
  @override
  final String type;
  @override
  final String? subject;
  @override
  final DateTime? time;
  @override
  final String? datacontenttype;
  @override
  final String? dataschema;
  @override
  final JsonObject? data;

  factory _$CloudEvent([void Function(CloudEventBuilder)? updates]) =>
      (CloudEventBuilder()..update(updates))._build();

  _$CloudEvent._({
    required this.specversion,
    required this.id,
    required this.source_,
    required this.type,
    this.subject,
    this.time,
    this.datacontenttype,
    this.dataschema,
    this.data,
  }) : super._();
  @override
  CloudEvent rebuild(void Function(CloudEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudEventBuilder toBuilder() => CloudEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloudEvent &&
        specversion == other.specversion &&
        id == other.id &&
        source_ == other.source_ &&
        type == other.type &&
        subject == other.subject &&
        time == other.time &&
        datacontenttype == other.datacontenttype &&
        dataschema == other.dataschema &&
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
    _$hash = $jc(_$hash, dataschema.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CloudEvent')
          ..add('specversion', specversion)
          ..add('id', id)
          ..add('source_', source_)
          ..add('type', type)
          ..add('subject', subject)
          ..add('time', time)
          ..add('datacontenttype', datacontenttype)
          ..add('dataschema', dataschema)
          ..add('data', data))
        .toString();
  }
}

class CloudEventBuilder implements Builder<CloudEvent, CloudEventBuilder> {
  _$CloudEvent? _$v;

  CloudEventSpecversionEnum? _specversion;
  CloudEventSpecversionEnum? get specversion => _$this._specversion;
  set specversion(CloudEventSpecversionEnum? specversion) =>
      _$this._specversion = specversion;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

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

  String? _dataschema;
  String? get dataschema => _$this._dataschema;
  set dataschema(String? dataschema) => _$this._dataschema = dataschema;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  CloudEventBuilder() {
    CloudEvent._defaults(this);
  }

  CloudEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _specversion = $v.specversion;
      _id = $v.id;
      _source_ = $v.source_;
      _type = $v.type;
      _subject = $v.subject;
      _time = $v.time;
      _datacontenttype = $v.datacontenttype;
      _dataschema = $v.dataschema;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CloudEvent other) {
    _$v = other as _$CloudEvent;
  }

  @override
  void update(void Function(CloudEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CloudEvent build() => _build();

  _$CloudEvent _build() {
    final _$result =
        _$v ??
        _$CloudEvent._(
          specversion: BuiltValueNullFieldError.checkNotNull(
            specversion,
            r'CloudEvent',
            'specversion',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'CloudEvent', 'id'),
          source_: BuiltValueNullFieldError.checkNotNull(
            source_,
            r'CloudEvent',
            'source_',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'CloudEvent',
            'type',
          ),
          subject: subject,
          time: time,
          datacontenttype: datacontenttype,
          dataschema: dataschema,
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
