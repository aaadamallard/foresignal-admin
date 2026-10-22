// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Exposure extends Exposure {
  @override
  final ExposureArea area;
  @override
  final DateTime computedAt;
  @override
  final ExposureFacilities facilities;
  @override
  final ExposurePlaces places;
  @override
  final ExposureWatchlistEntities watchlistEntities;
  @override
  final ExposureTraffic traffic;
  @override
  final ExposurePopulation population;
  @override
  final ExposureDependents? dependents;

  factory _$Exposure([void Function(ExposureBuilder)? updates]) =>
      (ExposureBuilder()..update(updates))._build();

  _$Exposure._({
    required this.area,
    required this.computedAt,
    required this.facilities,
    required this.places,
    required this.watchlistEntities,
    required this.traffic,
    required this.population,
    this.dependents,
  }) : super._();
  @override
  Exposure rebuild(void Function(ExposureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposureBuilder toBuilder() => ExposureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Exposure &&
        area == other.area &&
        computedAt == other.computedAt &&
        facilities == other.facilities &&
        places == other.places &&
        watchlistEntities == other.watchlistEntities &&
        traffic == other.traffic &&
        population == other.population &&
        dependents == other.dependents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jc(_$hash, facilities.hashCode);
    _$hash = $jc(_$hash, places.hashCode);
    _$hash = $jc(_$hash, watchlistEntities.hashCode);
    _$hash = $jc(_$hash, traffic.hashCode);
    _$hash = $jc(_$hash, population.hashCode);
    _$hash = $jc(_$hash, dependents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Exposure')
          ..add('area', area)
          ..add('computedAt', computedAt)
          ..add('facilities', facilities)
          ..add('places', places)
          ..add('watchlistEntities', watchlistEntities)
          ..add('traffic', traffic)
          ..add('population', population)
          ..add('dependents', dependents))
        .toString();
  }
}

class ExposureBuilder implements Builder<Exposure, ExposureBuilder> {
  _$Exposure? _$v;

  ExposureAreaBuilder? _area;
  ExposureAreaBuilder get area => _$this._area ??= ExposureAreaBuilder();
  set area(ExposureAreaBuilder? area) => _$this._area = area;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ExposureFacilitiesBuilder? _facilities;
  ExposureFacilitiesBuilder get facilities =>
      _$this._facilities ??= ExposureFacilitiesBuilder();
  set facilities(ExposureFacilitiesBuilder? facilities) =>
      _$this._facilities = facilities;

  ExposurePlacesBuilder? _places;
  ExposurePlacesBuilder get places =>
      _$this._places ??= ExposurePlacesBuilder();
  set places(ExposurePlacesBuilder? places) => _$this._places = places;

  ExposureWatchlistEntitiesBuilder? _watchlistEntities;
  ExposureWatchlistEntitiesBuilder get watchlistEntities =>
      _$this._watchlistEntities ??= ExposureWatchlistEntitiesBuilder();
  set watchlistEntities(ExposureWatchlistEntitiesBuilder? watchlistEntities) =>
      _$this._watchlistEntities = watchlistEntities;

  ExposureTrafficBuilder? _traffic;
  ExposureTrafficBuilder get traffic =>
      _$this._traffic ??= ExposureTrafficBuilder();
  set traffic(ExposureTrafficBuilder? traffic) => _$this._traffic = traffic;

  ExposurePopulationBuilder? _population;
  ExposurePopulationBuilder get population =>
      _$this._population ??= ExposurePopulationBuilder();
  set population(ExposurePopulationBuilder? population) =>
      _$this._population = population;

  ExposureDependentsBuilder? _dependents;
  ExposureDependentsBuilder get dependents =>
      _$this._dependents ??= ExposureDependentsBuilder();
  set dependents(ExposureDependentsBuilder? dependents) =>
      _$this._dependents = dependents;

  ExposureBuilder() {
    Exposure._defaults(this);
  }

  ExposureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _area = $v.area.toBuilder();
      _computedAt = $v.computedAt;
      _facilities = $v.facilities.toBuilder();
      _places = $v.places.toBuilder();
      _watchlistEntities = $v.watchlistEntities.toBuilder();
      _traffic = $v.traffic.toBuilder();
      _population = $v.population.toBuilder();
      _dependents = $v.dependents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Exposure other) {
    _$v = other as _$Exposure;
  }

  @override
  void update(void Function(ExposureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Exposure build() => _build();

  _$Exposure _build() {
    _$Exposure _$result;
    try {
      _$result =
          _$v ??
          _$Exposure._(
            area: area.build(),
            computedAt: BuiltValueNullFieldError.checkNotNull(
              computedAt,
              r'Exposure',
              'computedAt',
            ),
            facilities: facilities.build(),
            places: places.build(),
            watchlistEntities: watchlistEntities.build(),
            traffic: traffic.build(),
            population: population.build(),
            dependents: _dependents?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        area.build();

        _$failedField = 'facilities';
        facilities.build();
        _$failedField = 'places';
        places.build();
        _$failedField = 'watchlistEntities';
        watchlistEntities.build();
        _$failedField = 'traffic';
        traffic.build();
        _$failedField = 'population';
        population.build();
        _$failedField = 'dependents';
        _dependents?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Exposure',
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
