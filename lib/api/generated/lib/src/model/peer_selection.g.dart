// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_selection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeerSelection extends PeerSelection {
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<num>? bbox;
  @override
  final String? placeId;
  @override
  final String? maxAge;
  @override
  final String? backfill;
  @override
  final bool? live;
  @override
  final int? maxHops;
  @override
  final String? trackTtl;

  factory _$PeerSelection([void Function(PeerSelectionBuilder)? updates]) =>
      (PeerSelectionBuilder()..update(updates))._build();

  _$PeerSelection._({
    this.sources,
    this.kinds,
    this.bbox,
    this.placeId,
    this.maxAge,
    this.backfill,
    this.live,
    this.maxHops,
    this.trackTtl,
  }) : super._();
  @override
  PeerSelection rebuild(void Function(PeerSelectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeerSelectionBuilder toBuilder() => PeerSelectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeerSelection &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        placeId == other.placeId &&
        maxAge == other.maxAge &&
        backfill == other.backfill &&
        live == other.live &&
        maxHops == other.maxHops &&
        trackTtl == other.trackTtl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, maxAge.hashCode);
    _$hash = $jc(_$hash, backfill.hashCode);
    _$hash = $jc(_$hash, live.hashCode);
    _$hash = $jc(_$hash, maxHops.hashCode);
    _$hash = $jc(_$hash, trackTtl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeerSelection')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('placeId', placeId)
          ..add('maxAge', maxAge)
          ..add('backfill', backfill)
          ..add('live', live)
          ..add('maxHops', maxHops)
          ..add('trackTtl', trackTtl))
        .toString();
  }
}

class PeerSelectionBuilder
    implements Builder<PeerSelection, PeerSelectionBuilder> {
  _$PeerSelection? _$v;

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

  String? _maxAge;
  String? get maxAge => _$this._maxAge;
  set maxAge(String? maxAge) => _$this._maxAge = maxAge;

  String? _backfill;
  String? get backfill => _$this._backfill;
  set backfill(String? backfill) => _$this._backfill = backfill;

  bool? _live;
  bool? get live => _$this._live;
  set live(bool? live) => _$this._live = live;

  int? _maxHops;
  int? get maxHops => _$this._maxHops;
  set maxHops(int? maxHops) => _$this._maxHops = maxHops;

  String? _trackTtl;
  String? get trackTtl => _$this._trackTtl;
  set trackTtl(String? trackTtl) => _$this._trackTtl = trackTtl;

  PeerSelectionBuilder() {
    PeerSelection._defaults(this);
  }

  PeerSelectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _placeId = $v.placeId;
      _maxAge = $v.maxAge;
      _backfill = $v.backfill;
      _live = $v.live;
      _maxHops = $v.maxHops;
      _trackTtl = $v.trackTtl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeerSelection other) {
    _$v = other as _$PeerSelection;
  }

  @override
  void update(void Function(PeerSelectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeerSelection build() => _build();

  _$PeerSelection _build() {
    _$PeerSelection _$result;
    try {
      _$result =
          _$v ??
          _$PeerSelection._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: _bbox?.build(),
            placeId: placeId,
            maxAge: maxAge,
            backfill: backfill,
            live: live,
            maxHops: maxHops,
            trackTtl: trackTtl,
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
          r'PeerSelection',
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
