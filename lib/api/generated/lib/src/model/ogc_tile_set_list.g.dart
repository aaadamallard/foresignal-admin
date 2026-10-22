// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_tile_set_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcTileSetList extends OgcTileSetList {
  @override
  final BuiltList<OgcTileSetListTilesetsInner> tilesets;

  factory _$OgcTileSetList([void Function(OgcTileSetListBuilder)? updates]) =>
      (OgcTileSetListBuilder()..update(updates))._build();

  _$OgcTileSetList._({required this.tilesets}) : super._();
  @override
  OgcTileSetList rebuild(void Function(OgcTileSetListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcTileSetListBuilder toBuilder() => OgcTileSetListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcTileSetList && tilesets == other.tilesets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tilesets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcTileSetList')
          ..add('tilesets', tilesets))
        .toString();
  }
}

class OgcTileSetListBuilder
    implements Builder<OgcTileSetList, OgcTileSetListBuilder> {
  _$OgcTileSetList? _$v;

  ListBuilder<OgcTileSetListTilesetsInner>? _tilesets;
  ListBuilder<OgcTileSetListTilesetsInner> get tilesets =>
      _$this._tilesets ??= ListBuilder<OgcTileSetListTilesetsInner>();
  set tilesets(ListBuilder<OgcTileSetListTilesetsInner>? tilesets) =>
      _$this._tilesets = tilesets;

  OgcTileSetListBuilder() {
    OgcTileSetList._defaults(this);
  }

  OgcTileSetListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tilesets = $v.tilesets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcTileSetList other) {
    _$v = other as _$OgcTileSetList;
  }

  @override
  void update(void Function(OgcTileSetListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcTileSetList build() => _build();

  _$OgcTileSetList _build() {
    _$OgcTileSetList _$result;
    try {
      _$result = _$v ??
          _$OgcTileSetList._(
            tilesets: tilesets.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tilesets';
        tilesets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcTileSetList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
