// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_restrictions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenRestrictions extends TokenRestrictions {
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

  factory _$TokenRestrictions([
    void Function(TokenRestrictionsBuilder)? updates,
  ]) => (TokenRestrictionsBuilder()..update(updates))._build();

  _$TokenRestrictions._({
    this.sources,
    this.kinds,
    this.bbox,
    this.endpoints,
    this.federation,
    this.includeExercise,
  }) : super._();
  @override
  TokenRestrictions rebuild(void Function(TokenRestrictionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenRestrictionsBuilder toBuilder() =>
      TokenRestrictionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenRestrictions &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        endpoints == other.endpoints &&
        federation == other.federation &&
        includeExercise == other.includeExercise;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenRestrictions')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('endpoints', endpoints)
          ..add('federation', federation)
          ..add('includeExercise', includeExercise))
        .toString();
  }
}

class TokenRestrictionsBuilder
    implements Builder<TokenRestrictions, TokenRestrictionsBuilder> {
  _$TokenRestrictions? _$v;

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

  TokenRestrictionsBuilder() {
    TokenRestrictions._defaults(this);
  }

  TokenRestrictionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _endpoints = $v.endpoints?.toBuilder();
      _federation = $v.federation;
      _includeExercise = $v.includeExercise;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenRestrictions other) {
    _$v = other as _$TokenRestrictions;
  }

  @override
  void update(void Function(TokenRestrictionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenRestrictions build() => _build();

  _$TokenRestrictions _build() {
    _$TokenRestrictions _$result;
    try {
      _$result =
          _$v ??
          _$TokenRestrictions._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: _bbox?.build(),
            endpoints: _endpoints?.build(),
            federation: federation,
            includeExercise: includeExercise,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TokenRestrictions',
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
