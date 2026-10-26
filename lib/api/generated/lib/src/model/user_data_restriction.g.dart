// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_restriction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDataRestriction extends UserDataRestriction {
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<num>? bbox;
  @override
  final Geometry? area;
  @override
  final BuiltList<String>? placeIds;

  factory _$UserDataRestriction([
    void Function(UserDataRestrictionBuilder)? updates,
  ]) => (UserDataRestrictionBuilder()..update(updates))._build();

  _$UserDataRestriction._({
    this.sources,
    this.kinds,
    this.bbox,
    this.area,
    this.placeIds,
  }) : super._();
  @override
  UserDataRestriction rebuild(
    void Function(UserDataRestrictionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserDataRestrictionBuilder toBuilder() =>
      UserDataRestrictionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataRestriction &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        area == other.area &&
        placeIds == other.placeIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDataRestriction')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('area', area)
          ..add('placeIds', placeIds))
        .toString();
  }
}

class UserDataRestrictionBuilder
    implements Builder<UserDataRestriction, UserDataRestrictionBuilder> {
  _$UserDataRestriction? _$v;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  GeometryBuilder? _area;
  GeometryBuilder get area => _$this._area ??= GeometryBuilder();
  set area(GeometryBuilder? area) => _$this._area = area;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  UserDataRestrictionBuilder() {
    UserDataRestriction._defaults(this);
  }

  UserDataRestrictionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _area = $v.area?.toBuilder();
      _placeIds = $v.placeIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDataRestriction other) {
    _$v = other as _$UserDataRestriction;
  }

  @override
  void update(void Function(UserDataRestrictionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDataRestriction build() => _build();

  _$UserDataRestriction _build() {
    _$UserDataRestriction _$result;
    try {
      _$result =
          _$v ??
          _$UserDataRestriction._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: _bbox?.build(),
            area: _area?.build(),
            placeIds: _placeIds?.build(),
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
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'placeIds';
        _placeIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserDataRestriction',
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
