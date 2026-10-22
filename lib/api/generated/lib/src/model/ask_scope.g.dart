// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskScope extends AskScope {
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final String? bbox;
  @override
  final DateTime? since;
  @override
  final DateTime? until;
  @override
  final BuiltList<String>? placeIds;
  @override
  final String? viewId;

  factory _$AskScope([void Function(AskScopeBuilder)? updates]) =>
      (AskScopeBuilder()..update(updates))._build();

  _$AskScope._({
    this.sources,
    this.kinds,
    this.bbox,
    this.since,
    this.until,
    this.placeIds,
    this.viewId,
  }) : super._();
  @override
  AskScope rebuild(void Function(AskScopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskScopeBuilder toBuilder() => AskScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskScope &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        since == other.since &&
        until == other.until &&
        placeIds == other.placeIds &&
        viewId == other.viewId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, until.hashCode);
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jc(_$hash, viewId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskScope')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('since', since)
          ..add('until', until)
          ..add('placeIds', placeIds)
          ..add('viewId', viewId))
        .toString();
  }
}

class AskScopeBuilder implements Builder<AskScope, AskScopeBuilder> {
  _$AskScope? _$v;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  String? _bbox;
  String? get bbox => _$this._bbox;
  set bbox(String? bbox) => _$this._bbox = bbox;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  DateTime? _until;
  DateTime? get until => _$this._until;
  set until(DateTime? until) => _$this._until = until;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  String? _viewId;
  String? get viewId => _$this._viewId;
  set viewId(String? viewId) => _$this._viewId = viewId;

  AskScopeBuilder() {
    AskScope._defaults(this);
  }

  AskScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox;
      _since = $v.since;
      _until = $v.until;
      _placeIds = $v.placeIds?.toBuilder();
      _viewId = $v.viewId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskScope other) {
    _$v = other as _$AskScope;
  }

  @override
  void update(void Function(AskScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskScope build() => _build();

  _$AskScope _build() {
    _$AskScope _$result;
    try {
      _$result =
          _$v ??
          _$AskScope._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: bbox,
            since: since,
            until: until,
            placeIds: _placeIds?.build(),
            viewId: viewId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();

        _$failedField = 'placeIds';
        _placeIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AskScope',
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
