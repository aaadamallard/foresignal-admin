// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatsRequestUnitsEnum _$statsRequestUnitsEnum_metric =
    const StatsRequestUnitsEnum._('metric');
const StatsRequestUnitsEnum _$statsRequestUnitsEnum_imperial =
    const StatsRequestUnitsEnum._('imperial');

StatsRequestUnitsEnum _$statsRequestUnitsEnumValueOf(String name) {
  switch (name) {
    case 'metric':
      return _$statsRequestUnitsEnum_metric;
    case 'imperial':
      return _$statsRequestUnitsEnum_imperial;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatsRequestUnitsEnum> _$statsRequestUnitsEnumValues =
    BuiltSet<StatsRequestUnitsEnum>(const <StatsRequestUnitsEnum>[
      _$statsRequestUnitsEnum_metric,
      _$statsRequestUnitsEnum_imperial,
    ]);

Serializer<StatsRequestUnitsEnum> _$statsRequestUnitsEnumSerializer =
    _$StatsRequestUnitsEnumSerializer();

class _$StatsRequestUnitsEnumSerializer
    implements PrimitiveSerializer<StatsRequestUnitsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'metric': 'metric',
    'imperial': 'imperial',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'metric': 'metric',
    'imperial': 'imperial',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsRequestUnitsEnum];
  @override
  final String wireName = 'StatsRequestUnitsEnum';

  @override
  Object serialize(
    Serializers serializers,
    StatsRequestUnitsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StatsRequestUnitsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StatsRequestUnitsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StatsRequest extends StatsRequest {
  @override
  final Geometry? geometry;
  @override
  final String? place;
  @override
  final String? bbox;
  @override
  final String? time;
  @override
  final String? run;
  @override
  final BuiltList<num>? thresholds;
  @override
  final StatsRequestUnitsEnum? units;

  factory _$StatsRequest([void Function(StatsRequestBuilder)? updates]) =>
      (StatsRequestBuilder()..update(updates))._build();

  _$StatsRequest._({
    this.geometry,
    this.place,
    this.bbox,
    this.time,
    this.run,
    this.thresholds,
    this.units,
  }) : super._();
  @override
  StatsRequest rebuild(void Function(StatsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsRequestBuilder toBuilder() => StatsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsRequest &&
        geometry == other.geometry &&
        place == other.place &&
        bbox == other.bbox &&
        time == other.time &&
        run == other.run &&
        thresholds == other.thresholds &&
        units == other.units;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, thresholds.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsRequest')
          ..add('geometry', geometry)
          ..add('place', place)
          ..add('bbox', bbox)
          ..add('time', time)
          ..add('run', run)
          ..add('thresholds', thresholds)
          ..add('units', units))
        .toString();
  }
}

class StatsRequestBuilder
    implements Builder<StatsRequest, StatsRequestBuilder> {
  _$StatsRequest? _$v;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  String? _bbox;
  String? get bbox => _$this._bbox;
  set bbox(String? bbox) => _$this._bbox = bbox;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  ListBuilder<num>? _thresholds;
  ListBuilder<num> get thresholds => _$this._thresholds ??= ListBuilder<num>();
  set thresholds(ListBuilder<num>? thresholds) =>
      _$this._thresholds = thresholds;

  StatsRequestUnitsEnum? _units;
  StatsRequestUnitsEnum? get units => _$this._units;
  set units(StatsRequestUnitsEnum? units) => _$this._units = units;

  StatsRequestBuilder() {
    StatsRequest._defaults(this);
  }

  StatsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geometry = $v.geometry?.toBuilder();
      _place = $v.place;
      _bbox = $v.bbox;
      _time = $v.time;
      _run = $v.run;
      _thresholds = $v.thresholds?.toBuilder();
      _units = $v.units;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsRequest other) {
    _$v = other as _$StatsRequest;
  }

  @override
  void update(void Function(StatsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsRequest build() => _build();

  _$StatsRequest _build() {
    _$StatsRequest _$result;
    try {
      _$result =
          _$v ??
          _$StatsRequest._(
            geometry: _geometry?.build(),
            place: place,
            bbox: bbox,
            time: time,
            run: run,
            thresholds: _thresholds?.build(),
            units: units,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();

        _$failedField = 'thresholds';
        _thresholds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StatsRequest',
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
