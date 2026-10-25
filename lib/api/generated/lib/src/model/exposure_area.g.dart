// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExposureAreaSource_Enum _$exposureAreaSourceEnum_geometry =
    const ExposureAreaSource_Enum._('geometry');
const ExposureAreaSource_Enum _$exposureAreaSourceEnum_place =
    const ExposureAreaSource_Enum._('place');
const ExposureAreaSource_Enum _$exposureAreaSourceEnum_event =
    const ExposureAreaSource_Enum._('event');
const ExposureAreaSource_Enum _$exposureAreaSourceEnum_unknownDefaultOpenApi =
    const ExposureAreaSource_Enum._('unknownDefaultOpenApi');

ExposureAreaSource_Enum _$exposureAreaSourceEnumValueOf(String name) {
  switch (name) {
    case 'geometry':
      return _$exposureAreaSourceEnum_geometry;
    case 'place':
      return _$exposureAreaSourceEnum_place;
    case 'event':
      return _$exposureAreaSourceEnum_event;
    case 'unknownDefaultOpenApi':
      return _$exposureAreaSourceEnum_unknownDefaultOpenApi;
    default:
      return _$exposureAreaSourceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExposureAreaSource_Enum> _$exposureAreaSourceEnumValues =
    BuiltSet<ExposureAreaSource_Enum>(const <ExposureAreaSource_Enum>[
      _$exposureAreaSourceEnum_geometry,
      _$exposureAreaSourceEnum_place,
      _$exposureAreaSourceEnum_event,
      _$exposureAreaSourceEnum_unknownDefaultOpenApi,
    ]);

Serializer<ExposureAreaSource_Enum> _$exposureAreaSourceEnumSerializer =
    _$ExposureAreaSource_EnumSerializer();

class _$ExposureAreaSource_EnumSerializer
    implements PrimitiveSerializer<ExposureAreaSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'geometry': 'geometry',
    'place': 'place',
    'event': 'event',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'geometry': 'geometry',
    'place': 'place',
    'event': 'event',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExposureAreaSource_Enum];
  @override
  final String wireName = 'ExposureAreaSource_Enum';

  @override
  Object serialize(
    Serializers serializers,
    ExposureAreaSource_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExposureAreaSource_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExposureAreaSource_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExposureArea extends ExposureArea {
  @override
  final ExposureAreaSource_Enum source_;
  @override
  final String? placeId;
  @override
  final String? eventId;
  @override
  final Geometry? geometry;
  @override
  final num? areaKm2;

  factory _$ExposureArea([void Function(ExposureAreaBuilder)? updates]) =>
      (ExposureAreaBuilder()..update(updates))._build();

  _$ExposureArea._({
    required this.source_,
    this.placeId,
    this.eventId,
    this.geometry,
    this.areaKm2,
  }) : super._();
  @override
  ExposureArea rebuild(void Function(ExposureAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposureAreaBuilder toBuilder() => ExposureAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposureArea &&
        source_ == other.source_ &&
        placeId == other.placeId &&
        eventId == other.eventId &&
        geometry == other.geometry &&
        areaKm2 == other.areaKm2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, areaKm2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposureArea')
          ..add('source_', source_)
          ..add('placeId', placeId)
          ..add('eventId', eventId)
          ..add('geometry', geometry)
          ..add('areaKm2', areaKm2))
        .toString();
  }
}

class ExposureAreaBuilder
    implements Builder<ExposureArea, ExposureAreaBuilder> {
  _$ExposureArea? _$v;

  ExposureAreaSource_Enum? _source_;
  ExposureAreaSource_Enum? get source_ => _$this._source_;
  set source_(ExposureAreaSource_Enum? source_) => _$this._source_ = source_;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  num? _areaKm2;
  num? get areaKm2 => _$this._areaKm2;
  set areaKm2(num? areaKm2) => _$this._areaKm2 = areaKm2;

  ExposureAreaBuilder() {
    ExposureArea._defaults(this);
  }

  ExposureAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _placeId = $v.placeId;
      _eventId = $v.eventId;
      _geometry = $v.geometry?.toBuilder();
      _areaKm2 = $v.areaKm2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposureArea other) {
    _$v = other as _$ExposureArea;
  }

  @override
  void update(void Function(ExposureAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposureArea build() => _build();

  _$ExposureArea _build() {
    _$ExposureArea _$result;
    try {
      _$result =
          _$v ??
          _$ExposureArea._(
            source_: BuiltValueNullFieldError.checkNotNull(
              source_,
              r'ExposureArea',
              'source_',
            ),
            placeId: placeId,
            eventId: eventId,
            geometry: _geometry?.build(),
            areaKm2: areaKm2,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExposureArea',
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
