// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleArea extends ChronicleArea {
  @override
  final Geometry? geometry;
  @override
  final BuiltList<String>? placeIds;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final num? bufferKm;

  factory _$ChronicleArea([void Function(ChronicleAreaBuilder)? updates]) =>
      (ChronicleAreaBuilder()..update(updates))._build();

  _$ChronicleArea._({
    this.geometry,
    this.placeIds,
    this.regionCodes,
    this.bufferKm,
  }) : super._();
  @override
  ChronicleArea rebuild(void Function(ChronicleAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleAreaBuilder toBuilder() => ChronicleAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleArea &&
        geometry == other.geometry &&
        placeIds == other.placeIds &&
        regionCodes == other.regionCodes &&
        bufferKm == other.bufferKm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, bufferKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleArea')
          ..add('geometry', geometry)
          ..add('placeIds', placeIds)
          ..add('regionCodes', regionCodes)
          ..add('bufferKm', bufferKm))
        .toString();
  }
}

class ChronicleAreaBuilder
    implements Builder<ChronicleArea, ChronicleAreaBuilder> {
  _$ChronicleArea? _$v;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  num? _bufferKm;
  num? get bufferKm => _$this._bufferKm;
  set bufferKm(num? bufferKm) => _$this._bufferKm = bufferKm;

  ChronicleAreaBuilder() {
    ChronicleArea._defaults(this);
  }

  ChronicleAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geometry = $v.geometry?.toBuilder();
      _placeIds = $v.placeIds?.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _bufferKm = $v.bufferKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleArea other) {
    _$v = other as _$ChronicleArea;
  }

  @override
  void update(void Function(ChronicleAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleArea build() => _build();

  _$ChronicleArea _build() {
    _$ChronicleArea _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleArea._(
            geometry: _geometry?.build(),
            placeIds: _placeIds?.build(),
            regionCodes: _regionCodes?.build(),
            bufferKm: bufferKm,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'placeIds';
        _placeIds?.build();
        _$failedField = 'regionCodes';
        _regionCodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleArea',
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
