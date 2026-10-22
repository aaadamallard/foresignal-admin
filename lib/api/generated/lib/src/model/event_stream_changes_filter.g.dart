// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_stream_changes_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStreamChangesFilter extends EventStreamChangesFilter {
  @override
  final BuiltList<String>? source_;
  @override
  final BuiltList<String>? kind;
  @override
  final BuiltList<String>? externalId;
  @override
  final String? bbox;
  @override
  final String? near;
  @override
  final num? radiusKm;
  @override
  final bool? live;
  @override
  final bool? touches;
  @override
  final bool? payload;
  @override
  final BuiltList<String>? place;
  @override
  final String? view;
  @override
  final String? inWatchlist;

  factory _$EventStreamChangesFilter(
          [void Function(EventStreamChangesFilterBuilder)? updates]) =>
      (EventStreamChangesFilterBuilder()..update(updates))._build();

  _$EventStreamChangesFilter._(
      {this.source_,
      this.kind,
      this.externalId,
      this.bbox,
      this.near,
      this.radiusKm,
      this.live,
      this.touches,
      this.payload,
      this.place,
      this.view,
      this.inWatchlist})
      : super._();
  @override
  EventStreamChangesFilter rebuild(
          void Function(EventStreamChangesFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStreamChangesFilterBuilder toBuilder() =>
      EventStreamChangesFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStreamChangesFilter &&
        source_ == other.source_ &&
        kind == other.kind &&
        externalId == other.externalId &&
        bbox == other.bbox &&
        near == other.near &&
        radiusKm == other.radiusKm &&
        live == other.live &&
        touches == other.touches &&
        payload == other.payload &&
        place == other.place &&
        view == other.view &&
        inWatchlist == other.inWatchlist;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, near.hashCode);
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jc(_$hash, live.hashCode);
    _$hash = $jc(_$hash, touches.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, view.hashCode);
    _$hash = $jc(_$hash, inWatchlist.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStreamChangesFilter')
          ..add('source_', source_)
          ..add('kind', kind)
          ..add('externalId', externalId)
          ..add('bbox', bbox)
          ..add('near', near)
          ..add('radiusKm', radiusKm)
          ..add('live', live)
          ..add('touches', touches)
          ..add('payload', payload)
          ..add('place', place)
          ..add('view', view)
          ..add('inWatchlist', inWatchlist))
        .toString();
  }
}

class EventStreamChangesFilterBuilder
    implements
        Builder<EventStreamChangesFilter, EventStreamChangesFilterBuilder> {
  _$EventStreamChangesFilter? _$v;

  ListBuilder<String>? _source_;
  ListBuilder<String> get source_ => _$this._source_ ??= ListBuilder<String>();
  set source_(ListBuilder<String>? source_) => _$this._source_ = source_;

  ListBuilder<String>? _kind;
  ListBuilder<String> get kind => _$this._kind ??= ListBuilder<String>();
  set kind(ListBuilder<String>? kind) => _$this._kind = kind;

  ListBuilder<String>? _externalId;
  ListBuilder<String> get externalId =>
      _$this._externalId ??= ListBuilder<String>();
  set externalId(ListBuilder<String>? externalId) =>
      _$this._externalId = externalId;

  String? _bbox;
  String? get bbox => _$this._bbox;
  set bbox(String? bbox) => _$this._bbox = bbox;

  String? _near;
  String? get near => _$this._near;
  set near(String? near) => _$this._near = near;

  num? _radiusKm;
  num? get radiusKm => _$this._radiusKm;
  set radiusKm(num? radiusKm) => _$this._radiusKm = radiusKm;

  bool? _live;
  bool? get live => _$this._live;
  set live(bool? live) => _$this._live = live;

  bool? _touches;
  bool? get touches => _$this._touches;
  set touches(bool? touches) => _$this._touches = touches;

  bool? _payload;
  bool? get payload => _$this._payload;
  set payload(bool? payload) => _$this._payload = payload;

  ListBuilder<String>? _place;
  ListBuilder<String> get place => _$this._place ??= ListBuilder<String>();
  set place(ListBuilder<String>? place) => _$this._place = place;

  String? _view;
  String? get view => _$this._view;
  set view(String? view) => _$this._view = view;

  String? _inWatchlist;
  String? get inWatchlist => _$this._inWatchlist;
  set inWatchlist(String? inWatchlist) => _$this._inWatchlist = inWatchlist;

  EventStreamChangesFilterBuilder() {
    EventStreamChangesFilter._defaults(this);
  }

  EventStreamChangesFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_?.toBuilder();
      _kind = $v.kind?.toBuilder();
      _externalId = $v.externalId?.toBuilder();
      _bbox = $v.bbox;
      _near = $v.near;
      _radiusKm = $v.radiusKm;
      _live = $v.live;
      _touches = $v.touches;
      _payload = $v.payload;
      _place = $v.place?.toBuilder();
      _view = $v.view;
      _inWatchlist = $v.inWatchlist;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStreamChangesFilter other) {
    _$v = other as _$EventStreamChangesFilter;
  }

  @override
  void update(void Function(EventStreamChangesFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStreamChangesFilter build() => _build();

  _$EventStreamChangesFilter _build() {
    _$EventStreamChangesFilter _$result;
    try {
      _$result = _$v ??
          _$EventStreamChangesFilter._(
            source_: _source_?.build(),
            kind: _kind?.build(),
            externalId: _externalId?.build(),
            bbox: bbox,
            near: near,
            radiusKm: radiusKm,
            live: live,
            touches: touches,
            payload: payload,
            place: _place?.build(),
            view: view,
            inWatchlist: inWatchlist,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source_';
        _source_?.build();
        _$failedField = 'kind';
        _kind?.build();
        _$failedField = 'externalId';
        _externalId?.build();

        _$failedField = 'place';
        _place?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EventStreamChangesFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
