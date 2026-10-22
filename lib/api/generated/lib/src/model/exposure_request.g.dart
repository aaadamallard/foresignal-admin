// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExposureRequestPopulationEnum _$exposureRequestPopulationEnum_auto =
    const ExposureRequestPopulationEnum._('auto');
const ExposureRequestPopulationEnum _$exposureRequestPopulationEnum_off =
    const ExposureRequestPopulationEnum._('off');
const ExposureRequestPopulationEnum _$exposureRequestPopulationEnum_required_ =
    const ExposureRequestPopulationEnum._('required_');

ExposureRequestPopulationEnum _$exposureRequestPopulationEnumValueOf(
  String name,
) {
  switch (name) {
    case 'auto':
      return _$exposureRequestPopulationEnum_auto;
    case 'off':
      return _$exposureRequestPopulationEnum_off;
    case 'required_':
      return _$exposureRequestPopulationEnum_required_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExposureRequestPopulationEnum>
_$exposureRequestPopulationEnumValues = BuiltSet<ExposureRequestPopulationEnum>(
  const <ExposureRequestPopulationEnum>[
    _$exposureRequestPopulationEnum_auto,
    _$exposureRequestPopulationEnum_off,
    _$exposureRequestPopulationEnum_required_,
  ],
);

Serializer<ExposureRequestPopulationEnum>
_$exposureRequestPopulationEnumSerializer =
    _$ExposureRequestPopulationEnumSerializer();

class _$ExposureRequestPopulationEnumSerializer
    implements PrimitiveSerializer<ExposureRequestPopulationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'off': 'off',
    'required_': 'required',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'off': 'off',
    'required': 'required_',
  };

  @override
  final Iterable<Type> types = const <Type>[ExposureRequestPopulationEnum];
  @override
  final String wireName = 'ExposureRequestPopulationEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExposureRequestPopulationEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExposureRequestPopulationEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExposureRequestPopulationEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExposureRequest extends ExposureRequest {
  @override
  final Geometry? geometry;
  @override
  final String? placeId;
  @override
  final String? eventId;
  @override
  final ExposureRequestPopulationEnum? population;
  @override
  final bool? dependents;

  factory _$ExposureRequest([void Function(ExposureRequestBuilder)? updates]) =>
      (ExposureRequestBuilder()..update(updates))._build();

  _$ExposureRequest._({
    this.geometry,
    this.placeId,
    this.eventId,
    this.population,
    this.dependents,
  }) : super._();
  @override
  ExposureRequest rebuild(void Function(ExposureRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposureRequestBuilder toBuilder() => ExposureRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposureRequest &&
        geometry == other.geometry &&
        placeId == other.placeId &&
        eventId == other.eventId &&
        population == other.population &&
        dependents == other.dependents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, population.hashCode);
    _$hash = $jc(_$hash, dependents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposureRequest')
          ..add('geometry', geometry)
          ..add('placeId', placeId)
          ..add('eventId', eventId)
          ..add('population', population)
          ..add('dependents', dependents))
        .toString();
  }
}

class ExposureRequestBuilder
    implements Builder<ExposureRequest, ExposureRequestBuilder> {
  _$ExposureRequest? _$v;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  ExposureRequestPopulationEnum? _population;
  ExposureRequestPopulationEnum? get population => _$this._population;
  set population(ExposureRequestPopulationEnum? population) =>
      _$this._population = population;

  bool? _dependents;
  bool? get dependents => _$this._dependents;
  set dependents(bool? dependents) => _$this._dependents = dependents;

  ExposureRequestBuilder() {
    ExposureRequest._defaults(this);
  }

  ExposureRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geometry = $v.geometry?.toBuilder();
      _placeId = $v.placeId;
      _eventId = $v.eventId;
      _population = $v.population;
      _dependents = $v.dependents;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposureRequest other) {
    _$v = other as _$ExposureRequest;
  }

  @override
  void update(void Function(ExposureRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposureRequest build() => _build();

  _$ExposureRequest _build() {
    _$ExposureRequest _$result;
    try {
      _$result =
          _$v ??
          _$ExposureRequest._(
            geometry: _geometry?.build(),
            placeId: placeId,
            eventId: eventId,
            population: population,
            dependents: dependents,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExposureRequest',
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
