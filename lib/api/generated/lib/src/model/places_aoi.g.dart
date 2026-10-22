// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_aoi.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlacesAoi extends PlacesAoi {
  @override
  final int version;
  @override
  final Geometry? geometry;
  @override
  final BuiltList<num> envelope;
  @override
  final int placeCount;
  @override
  final num? bufferKm;
  @override
  final bool isDefault;

  factory _$PlacesAoi([void Function(PlacesAoiBuilder)? updates]) =>
      (PlacesAoiBuilder()..update(updates))._build();

  _$PlacesAoi._(
      {required this.version,
      this.geometry,
      required this.envelope,
      required this.placeCount,
      this.bufferKm,
      required this.isDefault})
      : super._();
  @override
  PlacesAoi rebuild(void Function(PlacesAoiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacesAoiBuilder toBuilder() => PlacesAoiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacesAoi &&
        version == other.version &&
        geometry == other.geometry &&
        envelope == other.envelope &&
        placeCount == other.placeCount &&
        bufferKm == other.bufferKm &&
        isDefault == other.isDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, placeCount.hashCode);
    _$hash = $jc(_$hash, bufferKm.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlacesAoi')
          ..add('version', version)
          ..add('geometry', geometry)
          ..add('envelope', envelope)
          ..add('placeCount', placeCount)
          ..add('bufferKm', bufferKm)
          ..add('isDefault', isDefault))
        .toString();
  }
}

class PlacesAoiBuilder implements Builder<PlacesAoi, PlacesAoiBuilder> {
  _$PlacesAoi? _$v;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  ListBuilder<num>? _envelope;
  ListBuilder<num> get envelope => _$this._envelope ??= ListBuilder<num>();
  set envelope(ListBuilder<num>? envelope) => _$this._envelope = envelope;

  int? _placeCount;
  int? get placeCount => _$this._placeCount;
  set placeCount(int? placeCount) => _$this._placeCount = placeCount;

  num? _bufferKm;
  num? get bufferKm => _$this._bufferKm;
  set bufferKm(num? bufferKm) => _$this._bufferKm = bufferKm;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  PlacesAoiBuilder() {
    PlacesAoi._defaults(this);
  }

  PlacesAoiBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _geometry = $v.geometry?.toBuilder();
      _envelope = $v.envelope.toBuilder();
      _placeCount = $v.placeCount;
      _bufferKm = $v.bufferKm;
      _isDefault = $v.isDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlacesAoi other) {
    _$v = other as _$PlacesAoi;
  }

  @override
  void update(void Function(PlacesAoiBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlacesAoi build() => _build();

  _$PlacesAoi _build() {
    _$PlacesAoi _$result;
    try {
      _$result = _$v ??
          _$PlacesAoi._(
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'PlacesAoi', 'version'),
            geometry: _geometry?.build(),
            envelope: envelope.build(),
            placeCount: BuiltValueNullFieldError.checkNotNull(
                placeCount, r'PlacesAoi', 'placeCount'),
            bufferKm: bufferKm,
            isDefault: BuiltValueNullFieldError.checkNotNull(
                isDefault, r'PlacesAoi', 'isDefault'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'envelope';
        envelope.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlacesAoi', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
