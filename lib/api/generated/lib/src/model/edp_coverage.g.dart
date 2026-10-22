// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_coverage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpCoverage extends EdpCoverage {
  @override
  final EdpGeometry? area;
  @override
  final String? family;
  @override
  final num? pDetect;

  factory _$EdpCoverage([void Function(EdpCoverageBuilder)? updates]) =>
      (EdpCoverageBuilder()..update(updates))._build();

  _$EdpCoverage._({this.area, this.family, this.pDetect}) : super._();
  @override
  EdpCoverage rebuild(void Function(EdpCoverageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpCoverageBuilder toBuilder() => EdpCoverageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpCoverage &&
        area == other.area &&
        family == other.family &&
        pDetect == other.pDetect;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, pDetect.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpCoverage')
          ..add('area', area)
          ..add('family', family)
          ..add('pDetect', pDetect))
        .toString();
  }
}

class EdpCoverageBuilder implements Builder<EdpCoverage, EdpCoverageBuilder> {
  _$EdpCoverage? _$v;

  EdpGeometryBuilder? _area;
  EdpGeometryBuilder get area => _$this._area ??= EdpGeometryBuilder();
  set area(EdpGeometryBuilder? area) => _$this._area = area;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  num? _pDetect;
  num? get pDetect => _$this._pDetect;
  set pDetect(num? pDetect) => _$this._pDetect = pDetect;

  EdpCoverageBuilder() {
    EdpCoverage._defaults(this);
  }

  EdpCoverageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _area = $v.area?.toBuilder();
      _family = $v.family;
      _pDetect = $v.pDetect;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpCoverage other) {
    _$v = other as _$EdpCoverage;
  }

  @override
  void update(void Function(EdpCoverageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpCoverage build() => _build();

  _$EdpCoverage _build() {
    _$EdpCoverage _$result;
    try {
      _$result =
          _$v ??
          _$EdpCoverage._(
            area: _area?.build(),
            family: family,
            pDetect: pDetect,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpCoverage',
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
