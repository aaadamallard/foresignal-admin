// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_report_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StormReportPayloadTypeEnum _$stormReportPayloadTypeEnum_tornado =
    const StormReportPayloadTypeEnum._('tornado');
const StormReportPayloadTypeEnum _$stormReportPayloadTypeEnum_wind =
    const StormReportPayloadTypeEnum._('wind');
const StormReportPayloadTypeEnum _$stormReportPayloadTypeEnum_hail =
    const StormReportPayloadTypeEnum._('hail');

StormReportPayloadTypeEnum _$stormReportPayloadTypeEnumValueOf(String name) {
  switch (name) {
    case 'tornado':
      return _$stormReportPayloadTypeEnum_tornado;
    case 'wind':
      return _$stormReportPayloadTypeEnum_wind;
    case 'hail':
      return _$stormReportPayloadTypeEnum_hail;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StormReportPayloadTypeEnum> _$stormReportPayloadTypeEnumValues =
    BuiltSet<StormReportPayloadTypeEnum>(const <StormReportPayloadTypeEnum>[
      _$stormReportPayloadTypeEnum_tornado,
      _$stormReportPayloadTypeEnum_wind,
      _$stormReportPayloadTypeEnum_hail,
    ]);

const StormReportPayloadMagnitudeUnitsEnum
_$stormReportPayloadMagnitudeUnitsEnum_EF =
    const StormReportPayloadMagnitudeUnitsEnum._('EF');
const StormReportPayloadMagnitudeUnitsEnum
_$stormReportPayloadMagnitudeUnitsEnum_mph =
    const StormReportPayloadMagnitudeUnitsEnum._('mph');
const StormReportPayloadMagnitudeUnitsEnum
_$stormReportPayloadMagnitudeUnitsEnum_in_ =
    const StormReportPayloadMagnitudeUnitsEnum._('in_');

StormReportPayloadMagnitudeUnitsEnum
_$stormReportPayloadMagnitudeUnitsEnumValueOf(String name) {
  switch (name) {
    case 'EF':
      return _$stormReportPayloadMagnitudeUnitsEnum_EF;
    case 'mph':
      return _$stormReportPayloadMagnitudeUnitsEnum_mph;
    case 'in_':
      return _$stormReportPayloadMagnitudeUnitsEnum_in_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StormReportPayloadMagnitudeUnitsEnum>
_$stormReportPayloadMagnitudeUnitsEnumValues =
    BuiltSet<StormReportPayloadMagnitudeUnitsEnum>(
      const <StormReportPayloadMagnitudeUnitsEnum>[
        _$stormReportPayloadMagnitudeUnitsEnum_EF,
        _$stormReportPayloadMagnitudeUnitsEnum_mph,
        _$stormReportPayloadMagnitudeUnitsEnum_in_,
      ],
    );

Serializer<StormReportPayloadTypeEnum> _$stormReportPayloadTypeEnumSerializer =
    _$StormReportPayloadTypeEnumSerializer();
Serializer<StormReportPayloadMagnitudeUnitsEnum>
_$stormReportPayloadMagnitudeUnitsEnumSerializer =
    _$StormReportPayloadMagnitudeUnitsEnumSerializer();

class _$StormReportPayloadTypeEnumSerializer
    implements PrimitiveSerializer<StormReportPayloadTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tornado': 'tornado',
    'wind': 'wind',
    'hail': 'hail',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tornado': 'tornado',
    'wind': 'wind',
    'hail': 'hail',
  };

  @override
  final Iterable<Type> types = const <Type>[StormReportPayloadTypeEnum];
  @override
  final String wireName = 'StormReportPayloadTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormReportPayloadTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormReportPayloadTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormReportPayloadTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormReportPayloadMagnitudeUnitsEnumSerializer
    implements PrimitiveSerializer<StormReportPayloadMagnitudeUnitsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EF': 'EF',
    'mph': 'mph',
    'in_': 'in',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EF': 'EF',
    'mph': 'mph',
    'in': 'in_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StormReportPayloadMagnitudeUnitsEnum,
  ];
  @override
  final String wireName = 'StormReportPayloadMagnitudeUnitsEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormReportPayloadMagnitudeUnitsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormReportPayloadMagnitudeUnitsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormReportPayloadMagnitudeUnitsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormReportPayload extends StormReportPayload {
  @override
  final StormReportPayloadTypeEnum type;
  @override
  final JsonObject? magnitude;
  @override
  final StormReportPayloadMagnitudeUnitsEnum? magnitudeUnits;
  @override
  final String location;
  @override
  final String? county;
  @override
  final String? state;
  @override
  final String? wfo;
  @override
  final String? comments;
  @override
  final String title;

  factory _$StormReportPayload([
    void Function(StormReportPayloadBuilder)? updates,
  ]) => (StormReportPayloadBuilder()..update(updates))._build();

  _$StormReportPayload._({
    required this.type,
    this.magnitude,
    this.magnitudeUnits,
    required this.location,
    this.county,
    this.state,
    this.wfo,
    this.comments,
    required this.title,
  }) : super._();
  @override
  StormReportPayload rebuild(
    void Function(StormReportPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StormReportPayloadBuilder toBuilder() =>
      StormReportPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormReportPayload &&
        type == other.type &&
        magnitude == other.magnitude &&
        magnitudeUnits == other.magnitudeUnits &&
        location == other.location &&
        county == other.county &&
        state == other.state &&
        wfo == other.wfo &&
        comments == other.comments &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, magnitude.hashCode);
    _$hash = $jc(_$hash, magnitudeUnits.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, county.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, wfo.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StormReportPayload')
          ..add('type', type)
          ..add('magnitude', magnitude)
          ..add('magnitudeUnits', magnitudeUnits)
          ..add('location', location)
          ..add('county', county)
          ..add('state', state)
          ..add('wfo', wfo)
          ..add('comments', comments)
          ..add('title', title))
        .toString();
  }
}

class StormReportPayloadBuilder
    implements Builder<StormReportPayload, StormReportPayloadBuilder> {
  _$StormReportPayload? _$v;

  StormReportPayloadTypeEnum? _type;
  StormReportPayloadTypeEnum? get type => _$this._type;
  set type(StormReportPayloadTypeEnum? type) => _$this._type = type;

  JsonObject? _magnitude;
  JsonObject? get magnitude => _$this._magnitude;
  set magnitude(JsonObject? magnitude) => _$this._magnitude = magnitude;

  StormReportPayloadMagnitudeUnitsEnum? _magnitudeUnits;
  StormReportPayloadMagnitudeUnitsEnum? get magnitudeUnits =>
      _$this._magnitudeUnits;
  set magnitudeUnits(StormReportPayloadMagnitudeUnitsEnum? magnitudeUnits) =>
      _$this._magnitudeUnits = magnitudeUnits;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _county;
  String? get county => _$this._county;
  set county(String? county) => _$this._county = county;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _wfo;
  String? get wfo => _$this._wfo;
  set wfo(String? wfo) => _$this._wfo = wfo;

  String? _comments;
  String? get comments => _$this._comments;
  set comments(String? comments) => _$this._comments = comments;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  StormReportPayloadBuilder() {
    StormReportPayload._defaults(this);
  }

  StormReportPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _magnitude = $v.magnitude;
      _magnitudeUnits = $v.magnitudeUnits;
      _location = $v.location;
      _county = $v.county;
      _state = $v.state;
      _wfo = $v.wfo;
      _comments = $v.comments;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StormReportPayload other) {
    _$v = other as _$StormReportPayload;
  }

  @override
  void update(void Function(StormReportPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormReportPayload build() => _build();

  _$StormReportPayload _build() {
    final _$result =
        _$v ??
        _$StormReportPayload._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'StormReportPayload',
            'type',
          ),
          magnitude: magnitude,
          magnitudeUnits: magnitudeUnits,
          location: BuiltValueNullFieldError.checkNotNull(
            location,
            r'StormReportPayload',
            'location',
          ),
          county: county,
          state: state,
          wfo: wfo,
          comments: comments,
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'StormReportPayload',
            'title',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
