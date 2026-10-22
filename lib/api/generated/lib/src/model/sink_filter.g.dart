// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SinkFilter extends SinkFilter {
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<num>? bbox;
  @override
  final String? placeId;
  @override
  final String? watchlistId;
  @override
  final bool? includePrivate;

  factory _$SinkFilter([void Function(SinkFilterBuilder)? updates]) =>
      (SinkFilterBuilder()..update(updates))._build();

  _$SinkFilter._(
      {this.sources,
      this.kinds,
      this.bbox,
      this.placeId,
      this.watchlistId,
      this.includePrivate})
      : super._();
  @override
  SinkFilter rebuild(void Function(SinkFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkFilterBuilder toBuilder() => SinkFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkFilter &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        placeId == other.placeId &&
        watchlistId == other.watchlistId &&
        includePrivate == other.includePrivate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, watchlistId.hashCode);
    _$hash = $jc(_$hash, includePrivate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkFilter')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('placeId', placeId)
          ..add('watchlistId', watchlistId)
          ..add('includePrivate', includePrivate))
        .toString();
  }
}

class SinkFilterBuilder implements Builder<SinkFilter, SinkFilterBuilder> {
  _$SinkFilter? _$v;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _watchlistId;
  String? get watchlistId => _$this._watchlistId;
  set watchlistId(String? watchlistId) => _$this._watchlistId = watchlistId;

  bool? _includePrivate;
  bool? get includePrivate => _$this._includePrivate;
  set includePrivate(bool? includePrivate) =>
      _$this._includePrivate = includePrivate;

  SinkFilterBuilder() {
    SinkFilter._defaults(this);
  }

  SinkFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _placeId = $v.placeId;
      _watchlistId = $v.watchlistId;
      _includePrivate = $v.includePrivate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkFilter other) {
    _$v = other as _$SinkFilter;
  }

  @override
  void update(void Function(SinkFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkFilter build() => _build();

  _$SinkFilter _build() {
    _$SinkFilter _$result;
    try {
      _$result = _$v ??
          _$SinkFilter._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: _bbox?.build(),
            placeId: placeId,
            watchlistId: watchlistId,
            includePrivate: includePrivate,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SinkFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
