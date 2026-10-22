// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_content_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SharedContentLinks extends SharedContentLinks {
  @override
  final String? geojson;
  @override
  final String? tiles;
  @override
  final String? download;

  factory _$SharedContentLinks(
          [void Function(SharedContentLinksBuilder)? updates]) =>
      (SharedContentLinksBuilder()..update(updates))._build();

  _$SharedContentLinks._({this.geojson, this.tiles, this.download}) : super._();
  @override
  SharedContentLinks rebuild(
          void Function(SharedContentLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SharedContentLinksBuilder toBuilder() =>
      SharedContentLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SharedContentLinks &&
        geojson == other.geojson &&
        tiles == other.tiles &&
        download == other.download;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, geojson.hashCode);
    _$hash = $jc(_$hash, tiles.hashCode);
    _$hash = $jc(_$hash, download.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SharedContentLinks')
          ..add('geojson', geojson)
          ..add('tiles', tiles)
          ..add('download', download))
        .toString();
  }
}

class SharedContentLinksBuilder
    implements Builder<SharedContentLinks, SharedContentLinksBuilder> {
  _$SharedContentLinks? _$v;

  String? _geojson;
  String? get geojson => _$this._geojson;
  set geojson(String? geojson) => _$this._geojson = geojson;

  String? _tiles;
  String? get tiles => _$this._tiles;
  set tiles(String? tiles) => _$this._tiles = tiles;

  String? _download;
  String? get download => _$this._download;
  set download(String? download) => _$this._download = download;

  SharedContentLinksBuilder() {
    SharedContentLinks._defaults(this);
  }

  SharedContentLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geojson = $v.geojson;
      _tiles = $v.tiles;
      _download = $v.download;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SharedContentLinks other) {
    _$v = other as _$SharedContentLinks;
  }

  @override
  void update(void Function(SharedContentLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SharedContentLinks build() => _build();

  _$SharedContentLinks _build() {
    final _$result = _$v ??
        _$SharedContentLinks._(
          geojson: geojson,
          tiles: tiles,
          download: download,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
