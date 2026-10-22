// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'population_pack_import_cells.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PopulationPackImportCells extends PopulationPackImportCells {
  @override
  final int? res5;
  @override
  final int? res7;

  factory _$PopulationPackImportCells([
    void Function(PopulationPackImportCellsBuilder)? updates,
  ]) => (PopulationPackImportCellsBuilder()..update(updates))._build();

  _$PopulationPackImportCells._({this.res5, this.res7}) : super._();
  @override
  PopulationPackImportCells rebuild(
    void Function(PopulationPackImportCellsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PopulationPackImportCellsBuilder toBuilder() =>
      PopulationPackImportCellsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PopulationPackImportCells &&
        res5 == other.res5 &&
        res7 == other.res7;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, res5.hashCode);
    _$hash = $jc(_$hash, res7.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PopulationPackImportCells')
          ..add('res5', res5)
          ..add('res7', res7))
        .toString();
  }
}

class PopulationPackImportCellsBuilder
    implements
        Builder<PopulationPackImportCells, PopulationPackImportCellsBuilder> {
  _$PopulationPackImportCells? _$v;

  int? _res5;
  int? get res5 => _$this._res5;
  set res5(int? res5) => _$this._res5 = res5;

  int? _res7;
  int? get res7 => _$this._res7;
  set res7(int? res7) => _$this._res7 = res7;

  PopulationPackImportCellsBuilder() {
    PopulationPackImportCells._defaults(this);
  }

  PopulationPackImportCellsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _res5 = $v.res5;
      _res7 = $v.res7;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PopulationPackImportCells other) {
    _$v = other as _$PopulationPackImportCells;
  }

  @override
  void update(void Function(PopulationPackImportCellsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PopulationPackImportCells build() => _build();

  _$PopulationPackImportCells _build() {
    final _$result =
        _$v ?? _$PopulationPackImportCells._(res5: res5, res7: res7);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
