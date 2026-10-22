// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_place.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClaimPlacePrecisionEnum _$claimPlacePrecisionEnum_point =
    const ClaimPlacePrecisionEnum._('point');
const ClaimPlacePrecisionEnum _$claimPlacePrecisionEnum_locality =
    const ClaimPlacePrecisionEnum._('locality');
const ClaimPlacePrecisionEnum _$claimPlacePrecisionEnum_admin1 =
    const ClaimPlacePrecisionEnum._('admin1');
const ClaimPlacePrecisionEnum _$claimPlacePrecisionEnum_country =
    const ClaimPlacePrecisionEnum._('country');

ClaimPlacePrecisionEnum _$claimPlacePrecisionEnumValueOf(String name) {
  switch (name) {
    case 'point':
      return _$claimPlacePrecisionEnum_point;
    case 'locality':
      return _$claimPlacePrecisionEnum_locality;
    case 'admin1':
      return _$claimPlacePrecisionEnum_admin1;
    case 'country':
      return _$claimPlacePrecisionEnum_country;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimPlacePrecisionEnum> _$claimPlacePrecisionEnumValues =
    BuiltSet<ClaimPlacePrecisionEnum>(const <ClaimPlacePrecisionEnum>[
  _$claimPlacePrecisionEnum_point,
  _$claimPlacePrecisionEnum_locality,
  _$claimPlacePrecisionEnum_admin1,
  _$claimPlacePrecisionEnum_country,
]);

Serializer<ClaimPlacePrecisionEnum> _$claimPlacePrecisionEnumSerializer =
    _$ClaimPlacePrecisionEnumSerializer();

class _$ClaimPlacePrecisionEnumSerializer
    implements PrimitiveSerializer<ClaimPlacePrecisionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'point': 'point',
    'locality': 'locality',
    'admin1': 'admin1',
    'country': 'country',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'point': 'point',
    'locality': 'locality',
    'admin1': 'admin1',
    'country': 'country',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimPlacePrecisionEnum];
  @override
  final String wireName = 'ClaimPlacePrecisionEnum';

  @override
  Object serialize(Serializers serializers, ClaimPlacePrecisionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimPlacePrecisionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimPlacePrecisionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimPlace extends ClaimPlace {
  @override
  final String? ref;
  @override
  final String name;
  @override
  final Geometry? geom;
  @override
  final ClaimPlacePrecisionEnum precision;
  @override
  final num confidence;
  @override
  final String? regionCode;

  factory _$ClaimPlace([void Function(ClaimPlaceBuilder)? updates]) =>
      (ClaimPlaceBuilder()..update(updates))._build();

  _$ClaimPlace._(
      {this.ref,
      required this.name,
      this.geom,
      required this.precision,
      required this.confidence,
      this.regionCode})
      : super._();
  @override
  ClaimPlace rebuild(void Function(ClaimPlaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimPlaceBuilder toBuilder() => ClaimPlaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimPlace &&
        ref == other.ref &&
        name == other.name &&
        geom == other.geom &&
        precision == other.precision &&
        confidence == other.confidence &&
        regionCode == other.regionCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, geom.hashCode);
    _$hash = $jc(_$hash, precision.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimPlace')
          ..add('ref', ref)
          ..add('name', name)
          ..add('geom', geom)
          ..add('precision', precision)
          ..add('confidence', confidence)
          ..add('regionCode', regionCode))
        .toString();
  }
}

class ClaimPlaceBuilder implements Builder<ClaimPlace, ClaimPlaceBuilder> {
  _$ClaimPlace? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GeometryBuilder? _geom;
  GeometryBuilder get geom => _$this._geom ??= GeometryBuilder();
  set geom(GeometryBuilder? geom) => _$this._geom = geom;

  ClaimPlacePrecisionEnum? _precision;
  ClaimPlacePrecisionEnum? get precision => _$this._precision;
  set precision(ClaimPlacePrecisionEnum? precision) =>
      _$this._precision = precision;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  ClaimPlaceBuilder() {
    ClaimPlace._defaults(this);
  }

  ClaimPlaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _name = $v.name;
      _geom = $v.geom?.toBuilder();
      _precision = $v.precision;
      _confidence = $v.confidence;
      _regionCode = $v.regionCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimPlace other) {
    _$v = other as _$ClaimPlace;
  }

  @override
  void update(void Function(ClaimPlaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimPlace build() => _build();

  _$ClaimPlace _build() {
    _$ClaimPlace _$result;
    try {
      _$result = _$v ??
          _$ClaimPlace._(
            ref: ref,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ClaimPlace', 'name'),
            geom: _geom?.build(),
            precision: BuiltValueNullFieldError.checkNotNull(
                precision, r'ClaimPlace', 'precision'),
            confidence: BuiltValueNullFieldError.checkNotNull(
                confidence, r'ClaimPlace', 'confidence'),
            regionCode: regionCode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geom';
        _geom?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ClaimPlace', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
