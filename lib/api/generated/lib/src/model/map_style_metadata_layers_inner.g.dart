// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_style_metadata_layers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MapStyleMetadataLayersInner extends MapStyleMetadataLayersInner {
  @override
  final String id;
  @override
  final BuiltList<String> kinds;
  @override
  final String? attribution;
  @override
  final num? minzoom;
  @override
  final num? aggBelowZoom;

  factory _$MapStyleMetadataLayersInner([
    void Function(MapStyleMetadataLayersInnerBuilder)? updates,
  ]) => (MapStyleMetadataLayersInnerBuilder()..update(updates))._build();

  _$MapStyleMetadataLayersInner._({
    required this.id,
    required this.kinds,
    this.attribution,
    this.minzoom,
    this.aggBelowZoom,
  }) : super._();
  @override
  MapStyleMetadataLayersInner rebuild(
    void Function(MapStyleMetadataLayersInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MapStyleMetadataLayersInnerBuilder toBuilder() =>
      MapStyleMetadataLayersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapStyleMetadataLayersInner &&
        id == other.id &&
        kinds == other.kinds &&
        attribution == other.attribution &&
        minzoom == other.minzoom &&
        aggBelowZoom == other.aggBelowZoom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, minzoom.hashCode);
    _$hash = $jc(_$hash, aggBelowZoom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapStyleMetadataLayersInner')
          ..add('id', id)
          ..add('kinds', kinds)
          ..add('attribution', attribution)
          ..add('minzoom', minzoom)
          ..add('aggBelowZoom', aggBelowZoom))
        .toString();
  }
}

class MapStyleMetadataLayersInnerBuilder
    implements
        Builder<
          MapStyleMetadataLayersInner,
          MapStyleMetadataLayersInnerBuilder
        > {
  _$MapStyleMetadataLayersInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  num? _minzoom;
  num? get minzoom => _$this._minzoom;
  set minzoom(num? minzoom) => _$this._minzoom = minzoom;

  num? _aggBelowZoom;
  num? get aggBelowZoom => _$this._aggBelowZoom;
  set aggBelowZoom(num? aggBelowZoom) => _$this._aggBelowZoom = aggBelowZoom;

  MapStyleMetadataLayersInnerBuilder() {
    MapStyleMetadataLayersInner._defaults(this);
  }

  MapStyleMetadataLayersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _kinds = $v.kinds.toBuilder();
      _attribution = $v.attribution;
      _minzoom = $v.minzoom;
      _aggBelowZoom = $v.aggBelowZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapStyleMetadataLayersInner other) {
    _$v = other as _$MapStyleMetadataLayersInner;
  }

  @override
  void update(void Function(MapStyleMetadataLayersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapStyleMetadataLayersInner build() => _build();

  _$MapStyleMetadataLayersInner _build() {
    _$MapStyleMetadataLayersInner _$result;
    try {
      _$result =
          _$v ??
          _$MapStyleMetadataLayersInner._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'MapStyleMetadataLayersInner',
              'id',
            ),
            kinds: kinds.build(),
            attribution: attribution,
            minzoom: minzoom,
            aggBelowZoom: aggBelowZoom,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        kinds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MapStyleMetadataLayersInner',
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
