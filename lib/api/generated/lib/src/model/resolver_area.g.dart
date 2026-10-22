// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolver_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResolverArea extends ResolverArea {
  @override
  final BuiltList<num>? bbox;
  @override
  final Geometry? polygon;
  @override
  final String? placeId;
  @override
  final BuiltList<String>? regionCodes;

  factory _$ResolverArea([void Function(ResolverAreaBuilder)? updates]) =>
      (ResolverAreaBuilder()..update(updates))._build();

  _$ResolverArea._({this.bbox, this.polygon, this.placeId, this.regionCodes})
    : super._();
  @override
  ResolverArea rebuild(void Function(ResolverAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResolverAreaBuilder toBuilder() => ResolverAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResolverArea &&
        bbox == other.bbox &&
        polygon == other.polygon &&
        placeId == other.placeId &&
        regionCodes == other.regionCodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, polygon.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResolverArea')
          ..add('bbox', bbox)
          ..add('polygon', polygon)
          ..add('placeId', placeId)
          ..add('regionCodes', regionCodes))
        .toString();
  }
}

class ResolverAreaBuilder
    implements Builder<ResolverArea, ResolverAreaBuilder> {
  _$ResolverArea? _$v;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  GeometryBuilder? _polygon;
  GeometryBuilder get polygon => _$this._polygon ??= GeometryBuilder();
  set polygon(GeometryBuilder? polygon) => _$this._polygon = polygon;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ResolverAreaBuilder() {
    ResolverArea._defaults(this);
  }

  ResolverAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bbox = $v.bbox?.toBuilder();
      _polygon = $v.polygon?.toBuilder();
      _placeId = $v.placeId;
      _regionCodes = $v.regionCodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResolverArea other) {
    _$v = other as _$ResolverArea;
  }

  @override
  void update(void Function(ResolverAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResolverArea build() => _build();

  _$ResolverArea _build() {
    _$ResolverArea _$result;
    try {
      _$result =
          _$v ??
          _$ResolverArea._(
            bbox: _bbox?.build(),
            polygon: _polygon?.build(),
            placeId: placeId,
            regionCodes: _regionCodes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'polygon';
        _polygon?.build();

        _$failedField = 'regionCodes';
        _regionCodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ResolverArea',
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
