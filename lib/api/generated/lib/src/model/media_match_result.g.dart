// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_match_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaMatchResult extends MediaMatchResult {
  @override
  final MediaMatchResultQuery query;
  @override
  final int maxDistance;
  @override
  final BuiltList<MediaMatch> matches;
  @override
  final DateTime? referenceWindowStart;
  @override
  final BuiltList<Caveat> caveats;

  factory _$MediaMatchResult(
          [void Function(MediaMatchResultBuilder)? updates]) =>
      (MediaMatchResultBuilder()..update(updates))._build();

  _$MediaMatchResult._(
      {required this.query,
      required this.maxDistance,
      required this.matches,
      this.referenceWindowStart,
      required this.caveats})
      : super._();
  @override
  MediaMatchResult rebuild(void Function(MediaMatchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaMatchResultBuilder toBuilder() =>
      MediaMatchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaMatchResult &&
        query == other.query &&
        maxDistance == other.maxDistance &&
        matches == other.matches &&
        referenceWindowStart == other.referenceWindowStart &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, maxDistance.hashCode);
    _$hash = $jc(_$hash, matches.hashCode);
    _$hash = $jc(_$hash, referenceWindowStart.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaMatchResult')
          ..add('query', query)
          ..add('maxDistance', maxDistance)
          ..add('matches', matches)
          ..add('referenceWindowStart', referenceWindowStart)
          ..add('caveats', caveats))
        .toString();
  }
}

class MediaMatchResultBuilder
    implements Builder<MediaMatchResult, MediaMatchResultBuilder> {
  _$MediaMatchResult? _$v;

  MediaMatchResultQueryBuilder? _query;
  MediaMatchResultQueryBuilder get query =>
      _$this._query ??= MediaMatchResultQueryBuilder();
  set query(MediaMatchResultQueryBuilder? query) => _$this._query = query;

  int? _maxDistance;
  int? get maxDistance => _$this._maxDistance;
  set maxDistance(int? maxDistance) => _$this._maxDistance = maxDistance;

  ListBuilder<MediaMatch>? _matches;
  ListBuilder<MediaMatch> get matches =>
      _$this._matches ??= ListBuilder<MediaMatch>();
  set matches(ListBuilder<MediaMatch>? matches) => _$this._matches = matches;

  DateTime? _referenceWindowStart;
  DateTime? get referenceWindowStart => _$this._referenceWindowStart;
  set referenceWindowStart(DateTime? referenceWindowStart) =>
      _$this._referenceWindowStart = referenceWindowStart;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  MediaMatchResultBuilder() {
    MediaMatchResult._defaults(this);
  }

  MediaMatchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query.toBuilder();
      _maxDistance = $v.maxDistance;
      _matches = $v.matches.toBuilder();
      _referenceWindowStart = $v.referenceWindowStart;
      _caveats = $v.caveats.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaMatchResult other) {
    _$v = other as _$MediaMatchResult;
  }

  @override
  void update(void Function(MediaMatchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaMatchResult build() => _build();

  _$MediaMatchResult _build() {
    _$MediaMatchResult _$result;
    try {
      _$result = _$v ??
          _$MediaMatchResult._(
            query: query.build(),
            maxDistance: BuiltValueNullFieldError.checkNotNull(
                maxDistance, r'MediaMatchResult', 'maxDistance'),
            matches: matches.build(),
            referenceWindowStart: referenceWindowStart,
            caveats: caveats.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'query';
        query.build();

        _$failedField = 'matches';
        matches.build();

        _$failedField = 'caveats';
        caveats.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MediaMatchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
