// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BriefingScope extends BriefingScope {
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final String? bbox;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final bool? includeHealth;
  @override
  final BuiltList<String>? placeIds;
  @override
  final String? viewId;
  @override
  final BuiltList<String>? country;
  @override
  final BuiltList<String>? admin1;
  @override
  final BuiltList<String>? county;
  @override
  final BuiltList<String>? places;
  @override
  final BuiltList<String>? weatherProducts;
  @override
  final bool? includeAlertQuality;

  factory _$BriefingScope([void Function(BriefingScopeBuilder)? updates]) =>
      (BriefingScopeBuilder()..update(updates))._build();

  _$BriefingScope._({
    this.sources,
    this.kinds,
    this.bbox,
    this.ruleIds,
    this.includeHealth,
    this.placeIds,
    this.viewId,
    this.country,
    this.admin1,
    this.county,
    this.places,
    this.weatherProducts,
    this.includeAlertQuality,
  }) : super._();
  @override
  BriefingScope rebuild(void Function(BriefingScopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BriefingScopeBuilder toBuilder() => BriefingScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BriefingScope &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        ruleIds == other.ruleIds &&
        includeHealth == other.includeHealth &&
        placeIds == other.placeIds &&
        viewId == other.viewId &&
        country == other.country &&
        admin1 == other.admin1 &&
        county == other.county &&
        places == other.places &&
        weatherProducts == other.weatherProducts &&
        includeAlertQuality == other.includeAlertQuality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, includeHealth.hashCode);
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jc(_$hash, viewId.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, admin1.hashCode);
    _$hash = $jc(_$hash, county.hashCode);
    _$hash = $jc(_$hash, places.hashCode);
    _$hash = $jc(_$hash, weatherProducts.hashCode);
    _$hash = $jc(_$hash, includeAlertQuality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BriefingScope')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('ruleIds', ruleIds)
          ..add('includeHealth', includeHealth)
          ..add('placeIds', placeIds)
          ..add('viewId', viewId)
          ..add('country', country)
          ..add('admin1', admin1)
          ..add('county', county)
          ..add('places', places)
          ..add('weatherProducts', weatherProducts)
          ..add('includeAlertQuality', includeAlertQuality))
        .toString();
  }
}

class BriefingScopeBuilder
    implements Builder<BriefingScope, BriefingScopeBuilder> {
  _$BriefingScope? _$v;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  String? _bbox;
  String? get bbox => _$this._bbox;
  set bbox(String? bbox) => _$this._bbox = bbox;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  bool? _includeHealth;
  bool? get includeHealth => _$this._includeHealth;
  set includeHealth(bool? includeHealth) =>
      _$this._includeHealth = includeHealth;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  String? _viewId;
  String? get viewId => _$this._viewId;
  set viewId(String? viewId) => _$this._viewId = viewId;

  ListBuilder<String>? _country;
  ListBuilder<String> get country => _$this._country ??= ListBuilder<String>();
  set country(ListBuilder<String>? country) => _$this._country = country;

  ListBuilder<String>? _admin1;
  ListBuilder<String> get admin1 => _$this._admin1 ??= ListBuilder<String>();
  set admin1(ListBuilder<String>? admin1) => _$this._admin1 = admin1;

  ListBuilder<String>? _county;
  ListBuilder<String> get county => _$this._county ??= ListBuilder<String>();
  set county(ListBuilder<String>? county) => _$this._county = county;

  ListBuilder<String>? _places;
  ListBuilder<String> get places => _$this._places ??= ListBuilder<String>();
  set places(ListBuilder<String>? places) => _$this._places = places;

  ListBuilder<String>? _weatherProducts;
  ListBuilder<String> get weatherProducts =>
      _$this._weatherProducts ??= ListBuilder<String>();
  set weatherProducts(ListBuilder<String>? weatherProducts) =>
      _$this._weatherProducts = weatherProducts;

  bool? _includeAlertQuality;
  bool? get includeAlertQuality => _$this._includeAlertQuality;
  set includeAlertQuality(bool? includeAlertQuality) =>
      _$this._includeAlertQuality = includeAlertQuality;

  BriefingScopeBuilder() {
    BriefingScope._defaults(this);
  }

  BriefingScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox;
      _ruleIds = $v.ruleIds?.toBuilder();
      _includeHealth = $v.includeHealth;
      _placeIds = $v.placeIds?.toBuilder();
      _viewId = $v.viewId;
      _country = $v.country?.toBuilder();
      _admin1 = $v.admin1?.toBuilder();
      _county = $v.county?.toBuilder();
      _places = $v.places?.toBuilder();
      _weatherProducts = $v.weatherProducts?.toBuilder();
      _includeAlertQuality = $v.includeAlertQuality;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BriefingScope other) {
    _$v = other as _$BriefingScope;
  }

  @override
  void update(void Function(BriefingScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BriefingScope build() => _build();

  _$BriefingScope _build() {
    _$BriefingScope _$result;
    try {
      _$result =
          _$v ??
          _$BriefingScope._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: bbox,
            ruleIds: _ruleIds?.build(),
            includeHealth: includeHealth,
            placeIds: _placeIds?.build(),
            viewId: viewId,
            country: _country?.build(),
            admin1: _admin1?.build(),
            county: _county?.build(),
            places: _places?.build(),
            weatherProducts: _weatherProducts?.build(),
            includeAlertQuality: includeAlertQuality,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();

        _$failedField = 'ruleIds';
        _ruleIds?.build();

        _$failedField = 'placeIds';
        _placeIds?.build();

        _$failedField = 'country';
        _country?.build();
        _$failedField = 'admin1';
        _admin1?.build();
        _$failedField = 'county';
        _county?.build();
        _$failedField = 'places';
        _places?.build();
        _$failedField = 'weatherProducts';
        _weatherProducts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BriefingScope',
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
