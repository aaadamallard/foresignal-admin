// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_restriction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadRestriction extends ReadRestriction {
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<num>? bbox;
  @override
  final BuiltList<String>? endpoints;
  @override
  final bool? federation;
  @override
  final bool? includeExercise;
  @override
  final Geometry? area;
  @override
  final BuiltList<String>? placeIds;
  @override
  final bool? excludePrivate;
  @override
  final int? maxRequestsPerMinute;

  factory _$ReadRestriction([void Function(ReadRestrictionBuilder)? updates]) =>
      (ReadRestrictionBuilder()..update(updates))._build();

  _$ReadRestriction._({
    this.sources,
    this.kinds,
    this.bbox,
    this.endpoints,
    this.federation,
    this.includeExercise,
    this.area,
    this.placeIds,
    this.excludePrivate,
    this.maxRequestsPerMinute,
  }) : super._();
  @override
  ReadRestriction rebuild(void Function(ReadRestrictionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadRestrictionBuilder toBuilder() => ReadRestrictionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadRestriction &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        endpoints == other.endpoints &&
        federation == other.federation &&
        includeExercise == other.includeExercise &&
        area == other.area &&
        placeIds == other.placeIds &&
        excludePrivate == other.excludePrivate &&
        maxRequestsPerMinute == other.maxRequestsPerMinute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, endpoints.hashCode);
    _$hash = $jc(_$hash, federation.hashCode);
    _$hash = $jc(_$hash, includeExercise.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jc(_$hash, excludePrivate.hashCode);
    _$hash = $jc(_$hash, maxRequestsPerMinute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReadRestriction')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('endpoints', endpoints)
          ..add('federation', federation)
          ..add('includeExercise', includeExercise)
          ..add('area', area)
          ..add('placeIds', placeIds)
          ..add('excludePrivate', excludePrivate)
          ..add('maxRequestsPerMinute', maxRequestsPerMinute))
        .toString();
  }
}

class ReadRestrictionBuilder
    implements Builder<ReadRestriction, ReadRestrictionBuilder> {
  _$ReadRestriction? _$v;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  ListBuilder<String>? _endpoints;
  ListBuilder<String> get endpoints =>
      _$this._endpoints ??= ListBuilder<String>();
  set endpoints(ListBuilder<String>? endpoints) =>
      _$this._endpoints = endpoints;

  bool? _federation;
  bool? get federation => _$this._federation;
  set federation(bool? federation) => _$this._federation = federation;

  bool? _includeExercise;
  bool? get includeExercise => _$this._includeExercise;
  set includeExercise(bool? includeExercise) =>
      _$this._includeExercise = includeExercise;

  GeometryBuilder? _area;
  GeometryBuilder get area => _$this._area ??= GeometryBuilder();
  set area(GeometryBuilder? area) => _$this._area = area;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  bool? _excludePrivate;
  bool? get excludePrivate => _$this._excludePrivate;
  set excludePrivate(bool? excludePrivate) =>
      _$this._excludePrivate = excludePrivate;

  int? _maxRequestsPerMinute;
  int? get maxRequestsPerMinute => _$this._maxRequestsPerMinute;
  set maxRequestsPerMinute(int? maxRequestsPerMinute) =>
      _$this._maxRequestsPerMinute = maxRequestsPerMinute;

  ReadRestrictionBuilder() {
    ReadRestriction._defaults(this);
  }

  ReadRestrictionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _endpoints = $v.endpoints?.toBuilder();
      _federation = $v.federation;
      _includeExercise = $v.includeExercise;
      _area = $v.area?.toBuilder();
      _placeIds = $v.placeIds?.toBuilder();
      _excludePrivate = $v.excludePrivate;
      _maxRequestsPerMinute = $v.maxRequestsPerMinute;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadRestriction other) {
    _$v = other as _$ReadRestriction;
  }

  @override
  void update(void Function(ReadRestrictionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadRestriction build() => _build();

  _$ReadRestriction _build() {
    _$ReadRestriction _$result;
    try {
      _$result =
          _$v ??
          _$ReadRestriction._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: _bbox?.build(),
            endpoints: _endpoints?.build(),
            federation: federation,
            includeExercise: includeExercise,
            area: _area?.build(),
            placeIds: _placeIds?.build(),
            excludePrivate: excludePrivate,
            maxRequestsPerMinute: maxRequestsPerMinute,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'endpoints';
        _endpoints?.build();

        _$failedField = 'area';
        _area?.build();
        _$failedField = 'placeIds';
        _placeIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReadRestriction',
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
