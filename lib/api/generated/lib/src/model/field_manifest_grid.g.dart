// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_manifest_grid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldManifestGrid extends FieldManifestGrid {
  @override
  final int nx;
  @override
  final int ny;
  @override
  final num lo1;
  @override
  final num la1;
  @override
  final num dx;
  @override
  final num dy;

  factory _$FieldManifestGrid([
    void Function(FieldManifestGridBuilder)? updates,
  ]) => (FieldManifestGridBuilder()..update(updates))._build();

  _$FieldManifestGrid._({
    required this.nx,
    required this.ny,
    required this.lo1,
    required this.la1,
    required this.dx,
    required this.dy,
  }) : super._();
  @override
  FieldManifestGrid rebuild(void Function(FieldManifestGridBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldManifestGridBuilder toBuilder() =>
      FieldManifestGridBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldManifestGrid &&
        nx == other.nx &&
        ny == other.ny &&
        lo1 == other.lo1 &&
        la1 == other.la1 &&
        dx == other.dx &&
        dy == other.dy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nx.hashCode);
    _$hash = $jc(_$hash, ny.hashCode);
    _$hash = $jc(_$hash, lo1.hashCode);
    _$hash = $jc(_$hash, la1.hashCode);
    _$hash = $jc(_$hash, dx.hashCode);
    _$hash = $jc(_$hash, dy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldManifestGrid')
          ..add('nx', nx)
          ..add('ny', ny)
          ..add('lo1', lo1)
          ..add('la1', la1)
          ..add('dx', dx)
          ..add('dy', dy))
        .toString();
  }
}

class FieldManifestGridBuilder
    implements Builder<FieldManifestGrid, FieldManifestGridBuilder> {
  _$FieldManifestGrid? _$v;

  int? _nx;
  int? get nx => _$this._nx;
  set nx(int? nx) => _$this._nx = nx;

  int? _ny;
  int? get ny => _$this._ny;
  set ny(int? ny) => _$this._ny = ny;

  num? _lo1;
  num? get lo1 => _$this._lo1;
  set lo1(num? lo1) => _$this._lo1 = lo1;

  num? _la1;
  num? get la1 => _$this._la1;
  set la1(num? la1) => _$this._la1 = la1;

  num? _dx;
  num? get dx => _$this._dx;
  set dx(num? dx) => _$this._dx = dx;

  num? _dy;
  num? get dy => _$this._dy;
  set dy(num? dy) => _$this._dy = dy;

  FieldManifestGridBuilder() {
    FieldManifestGrid._defaults(this);
  }

  FieldManifestGridBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nx = $v.nx;
      _ny = $v.ny;
      _lo1 = $v.lo1;
      _la1 = $v.la1;
      _dx = $v.dx;
      _dy = $v.dy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldManifestGrid other) {
    _$v = other as _$FieldManifestGrid;
  }

  @override
  void update(void Function(FieldManifestGridBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldManifestGrid build() => _build();

  _$FieldManifestGrid _build() {
    final _$result =
        _$v ??
        _$FieldManifestGrid._(
          nx: BuiltValueNullFieldError.checkNotNull(
            nx,
            r'FieldManifestGrid',
            'nx',
          ),
          ny: BuiltValueNullFieldError.checkNotNull(
            ny,
            r'FieldManifestGrid',
            'ny',
          ),
          lo1: BuiltValueNullFieldError.checkNotNull(
            lo1,
            r'FieldManifestGrid',
            'lo1',
          ),
          la1: BuiltValueNullFieldError.checkNotNull(
            la1,
            r'FieldManifestGrid',
            'la1',
          ),
          dx: BuiltValueNullFieldError.checkNotNull(
            dx,
            r'FieldManifestGrid',
            'dx',
          ),
          dy: BuiltValueNullFieldError.checkNotNull(
            dy,
            r'FieldManifestGrid',
            'dy',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
