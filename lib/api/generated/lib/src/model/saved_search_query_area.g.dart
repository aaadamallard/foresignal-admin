// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_query_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedSearchQueryArea extends SavedSearchQueryArea {
  @override
  final String? bbox;
  @override
  final Geometry? geometry;
  @override
  final String? placeId;

  factory _$SavedSearchQueryArea(
          [void Function(SavedSearchQueryAreaBuilder)? updates]) =>
      (SavedSearchQueryAreaBuilder()..update(updates))._build();

  _$SavedSearchQueryArea._({this.bbox, this.geometry, this.placeId})
      : super._();
  @override
  SavedSearchQueryArea rebuild(
          void Function(SavedSearchQueryAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedSearchQueryAreaBuilder toBuilder() =>
      SavedSearchQueryAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearchQueryArea &&
        bbox == other.bbox &&
        geometry == other.geometry &&
        placeId == other.placeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedSearchQueryArea')
          ..add('bbox', bbox)
          ..add('geometry', geometry)
          ..add('placeId', placeId))
        .toString();
  }
}

class SavedSearchQueryAreaBuilder
    implements Builder<SavedSearchQueryArea, SavedSearchQueryAreaBuilder> {
  _$SavedSearchQueryArea? _$v;

  String? _bbox;
  String? get bbox => _$this._bbox;
  set bbox(String? bbox) => _$this._bbox = bbox;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  SavedSearchQueryAreaBuilder() {
    SavedSearchQueryArea._defaults(this);
  }

  SavedSearchQueryAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bbox = $v.bbox;
      _geometry = $v.geometry?.toBuilder();
      _placeId = $v.placeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearchQueryArea other) {
    _$v = other as _$SavedSearchQueryArea;
  }

  @override
  void update(void Function(SavedSearchQueryAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearchQueryArea build() => _build();

  _$SavedSearchQueryArea _build() {
    _$SavedSearchQueryArea _$result;
    try {
      _$result = _$v ??
          _$SavedSearchQueryArea._(
            bbox: bbox,
            geometry: _geometry?.build(),
            placeId: placeId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SavedSearchQueryArea', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
