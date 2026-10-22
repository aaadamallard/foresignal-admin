// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projected_impact_exposed_assets_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectedImpactExposedAssetsInner
    extends ProjectedImpactExposedAssetsInner {
  @override
  final String ref;
  @override
  final String? title;
  @override
  final String? kind;
  @override
  final num pHazard;
  @override
  final num? distanceKm;
  @override
  final int? population;
  @override
  final String? band;

  factory _$ProjectedImpactExposedAssetsInner([
    void Function(ProjectedImpactExposedAssetsInnerBuilder)? updates,
  ]) => (ProjectedImpactExposedAssetsInnerBuilder()..update(updates))._build();

  _$ProjectedImpactExposedAssetsInner._({
    required this.ref,
    this.title,
    this.kind,
    required this.pHazard,
    this.distanceKm,
    this.population,
    this.band,
  }) : super._();
  @override
  ProjectedImpactExposedAssetsInner rebuild(
    void Function(ProjectedImpactExposedAssetsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProjectedImpactExposedAssetsInnerBuilder toBuilder() =>
      ProjectedImpactExposedAssetsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectedImpactExposedAssetsInner &&
        ref == other.ref &&
        title == other.title &&
        kind == other.kind &&
        pHazard == other.pHazard &&
        distanceKm == other.distanceKm &&
        population == other.population &&
        band == other.band;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, pHazard.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, population.hashCode);
    _$hash = $jc(_$hash, band.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectedImpactExposedAssetsInner')
          ..add('ref', ref)
          ..add('title', title)
          ..add('kind', kind)
          ..add('pHazard', pHazard)
          ..add('distanceKm', distanceKm)
          ..add('population', population)
          ..add('band', band))
        .toString();
  }
}

class ProjectedImpactExposedAssetsInnerBuilder
    implements
        Builder<
          ProjectedImpactExposedAssetsInner,
          ProjectedImpactExposedAssetsInnerBuilder
        > {
  _$ProjectedImpactExposedAssetsInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  num? _pHazard;
  num? get pHazard => _$this._pHazard;
  set pHazard(num? pHazard) => _$this._pHazard = pHazard;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  int? _population;
  int? get population => _$this._population;
  set population(int? population) => _$this._population = population;

  String? _band;
  String? get band => _$this._band;
  set band(String? band) => _$this._band = band;

  ProjectedImpactExposedAssetsInnerBuilder() {
    ProjectedImpactExposedAssetsInner._defaults(this);
  }

  ProjectedImpactExposedAssetsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _title = $v.title;
      _kind = $v.kind;
      _pHazard = $v.pHazard;
      _distanceKm = $v.distanceKm;
      _population = $v.population;
      _band = $v.band;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectedImpactExposedAssetsInner other) {
    _$v = other as _$ProjectedImpactExposedAssetsInner;
  }

  @override
  void update(
    void Function(ProjectedImpactExposedAssetsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ProjectedImpactExposedAssetsInner build() => _build();

  _$ProjectedImpactExposedAssetsInner _build() {
    final _$result =
        _$v ??
        _$ProjectedImpactExposedAssetsInner._(
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'ProjectedImpactExposedAssetsInner',
            'ref',
          ),
          title: title,
          kind: kind,
          pHazard: BuiltValueNullFieldError.checkNotNull(
            pHazard,
            r'ProjectedImpactExposedAssetsInner',
            'pHazard',
          ),
          distanceKm: distanceKm,
          population: population,
          band: band,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
