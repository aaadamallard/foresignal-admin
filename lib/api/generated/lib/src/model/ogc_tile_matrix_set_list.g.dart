// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_tile_matrix_set_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcTileMatrixSetList extends OgcTileMatrixSetList {
  @override
  final BuiltList<OgcTileMatrixSetListTileMatrixSetsInner> tileMatrixSets;

  factory _$OgcTileMatrixSetList([
    void Function(OgcTileMatrixSetListBuilder)? updates,
  ]) => (OgcTileMatrixSetListBuilder()..update(updates))._build();

  _$OgcTileMatrixSetList._({required this.tileMatrixSets}) : super._();
  @override
  OgcTileMatrixSetList rebuild(
    void Function(OgcTileMatrixSetListBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcTileMatrixSetListBuilder toBuilder() =>
      OgcTileMatrixSetListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcTileMatrixSetList &&
        tileMatrixSets == other.tileMatrixSets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tileMatrixSets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'OgcTileMatrixSetList',
    )..add('tileMatrixSets', tileMatrixSets)).toString();
  }
}

class OgcTileMatrixSetListBuilder
    implements Builder<OgcTileMatrixSetList, OgcTileMatrixSetListBuilder> {
  _$OgcTileMatrixSetList? _$v;

  ListBuilder<OgcTileMatrixSetListTileMatrixSetsInner>? _tileMatrixSets;
  ListBuilder<OgcTileMatrixSetListTileMatrixSetsInner> get tileMatrixSets =>
      _$this._tileMatrixSets ??=
          ListBuilder<OgcTileMatrixSetListTileMatrixSetsInner>();
  set tileMatrixSets(
    ListBuilder<OgcTileMatrixSetListTileMatrixSetsInner>? tileMatrixSets,
  ) => _$this._tileMatrixSets = tileMatrixSets;

  OgcTileMatrixSetListBuilder() {
    OgcTileMatrixSetList._defaults(this);
  }

  OgcTileMatrixSetListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tileMatrixSets = $v.tileMatrixSets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcTileMatrixSetList other) {
    _$v = other as _$OgcTileMatrixSetList;
  }

  @override
  void update(void Function(OgcTileMatrixSetListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcTileMatrixSetList build() => _build();

  _$OgcTileMatrixSetList _build() {
    _$OgcTileMatrixSetList _$result;
    try {
      _$result =
          _$v ??
          _$OgcTileMatrixSetList._(tileMatrixSets: tileMatrixSets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tileMatrixSets';
        tileMatrixSets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcTileMatrixSetList',
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
