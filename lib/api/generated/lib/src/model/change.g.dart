// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ChangeBuilder {
  void replace(Change other);
  void update(void Function(ChangeBuilder) updates);
  int? get seq;
  set seq(int? seq);

  String? get source_;
  set source_(String? source_);

  String? get externalId;
  set externalId(String? externalId);

  String? get kind;
  set kind(String? kind);

  int? get version;
  set version(int? version);

  DateTime? get observedAt;
  set observedAt(DateTime? observedAt);

  bool? get tombstone;
  set tombstone(bool? tombstone);

  GeometryBuilder get geometry;
  set geometry(GeometryBuilder? geometry);

  MapBuilder<String, JsonObject?> get payload;
  set payload(MapBuilder<String, JsonObject?>? payload);

  int? get prevSeq;
  set prevSeq(int? prevSeq);

  HistoryTier? get historyTier;
  set historyTier(HistoryTier? historyTier);

  PersistReason? get persistReason;
  set persistReason(PersistReason? persistReason);

  DateTime? get eventTime;
  set eventTime(DateTime? eventTime);

  DateTime? get validUntil;
  set validUntil(DateTime? validUntil);

  int? get qaFlags;
  set qaFlags(int? qaFlags);

  ListBuilder<num> get bbox;
  set bbox(ListBuilder<num>? bbox);

  ListBuilder<num> get prevPersistedBbox;
  set prevPersistedBbox(ListBuilder<num>? prevPersistedBbox);

  ListBuilder<num> get prevLiveBbox;
  set prevLiveBbox(ListBuilder<num>? prevLiveBbox);

  bool? get leftFilter;
  set leftFilter(bool? leftFilter);

  bool? get purged;
  set purged(bool? purged);

  DateTime? get validFrom;
  set validFrom(DateTime? validFrom);

  String? get globalRef;
  set globalRef(String? globalRef);
}

class _$$Change extends $Change {
  @override
  final int seq;
  @override
  final String source_;
  @override
  final String externalId;
  @override
  final String kind;
  @override
  final int version;
  @override
  final DateTime observedAt;
  @override
  final bool tombstone;
  @override
  final Geometry? geometry;
  @override
  final BuiltMap<String, JsonObject?>? payload;
  @override
  final int? prevSeq;
  @override
  final HistoryTier? historyTier;
  @override
  final PersistReason? persistReason;
  @override
  final DateTime? eventTime;
  @override
  final DateTime? validUntil;
  @override
  final int? qaFlags;
  @override
  final BuiltList<num>? bbox;
  @override
  final BuiltList<num>? prevPersistedBbox;
  @override
  final BuiltList<num>? prevLiveBbox;
  @override
  final bool? leftFilter;
  @override
  final bool? purged;
  @override
  final DateTime? validFrom;
  @override
  final String? globalRef;

  factory _$$Change([void Function($ChangeBuilder)? updates]) =>
      ($ChangeBuilder()..update(updates))._build();

  _$$Change._(
      {required this.seq,
      required this.source_,
      required this.externalId,
      required this.kind,
      required this.version,
      required this.observedAt,
      required this.tombstone,
      this.geometry,
      this.payload,
      this.prevSeq,
      this.historyTier,
      this.persistReason,
      this.eventTime,
      this.validUntil,
      this.qaFlags,
      this.bbox,
      this.prevPersistedBbox,
      this.prevLiveBbox,
      this.leftFilter,
      this.purged,
      this.validFrom,
      this.globalRef})
      : super._();
  @override
  $Change rebuild(void Function($ChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ChangeBuilder toBuilder() => $ChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Change &&
        seq == other.seq &&
        source_ == other.source_ &&
        externalId == other.externalId &&
        kind == other.kind &&
        version == other.version &&
        observedAt == other.observedAt &&
        tombstone == other.tombstone &&
        geometry == other.geometry &&
        payload == other.payload &&
        prevSeq == other.prevSeq &&
        historyTier == other.historyTier &&
        persistReason == other.persistReason &&
        eventTime == other.eventTime &&
        validUntil == other.validUntil &&
        qaFlags == other.qaFlags &&
        bbox == other.bbox &&
        prevPersistedBbox == other.prevPersistedBbox &&
        prevLiveBbox == other.prevLiveBbox &&
        leftFilter == other.leftFilter &&
        purged == other.purged &&
        validFrom == other.validFrom &&
        globalRef == other.globalRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, tombstone.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, prevSeq.hashCode);
    _$hash = $jc(_$hash, historyTier.hashCode);
    _$hash = $jc(_$hash, persistReason.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, qaFlags.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, prevPersistedBbox.hashCode);
    _$hash = $jc(_$hash, prevLiveBbox.hashCode);
    _$hash = $jc(_$hash, leftFilter.hashCode);
    _$hash = $jc(_$hash, purged.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, globalRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Change')
          ..add('seq', seq)
          ..add('source_', source_)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('version', version)
          ..add('observedAt', observedAt)
          ..add('tombstone', tombstone)
          ..add('geometry', geometry)
          ..add('payload', payload)
          ..add('prevSeq', prevSeq)
          ..add('historyTier', historyTier)
          ..add('persistReason', persistReason)
          ..add('eventTime', eventTime)
          ..add('validUntil', validUntil)
          ..add('qaFlags', qaFlags)
          ..add('bbox', bbox)
          ..add('prevPersistedBbox', prevPersistedBbox)
          ..add('prevLiveBbox', prevLiveBbox)
          ..add('leftFilter', leftFilter)
          ..add('purged', purged)
          ..add('validFrom', validFrom)
          ..add('globalRef', globalRef))
        .toString();
  }
}

class $ChangeBuilder
    implements Builder<$Change, $ChangeBuilder>, ChangeBuilder {
  _$$Change? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(covariant int? seq) => _$this._seq = seq;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(covariant String? source_) => _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(covariant String? externalId) =>
      _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(covariant String? kind) => _$this._kind = kind;

  int? _version;
  int? get version => _$this._version;
  set version(covariant int? version) => _$this._version = version;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(covariant DateTime? observedAt) =>
      _$this._observedAt = observedAt;

  bool? _tombstone;
  bool? get tombstone => _$this._tombstone;
  set tombstone(covariant bool? tombstone) => _$this._tombstone = tombstone;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(covariant GeometryBuilder? geometry) =>
      _$this._geometry = geometry;

  MapBuilder<String, JsonObject?>? _payload;
  MapBuilder<String, JsonObject?> get payload =>
      _$this._payload ??= MapBuilder<String, JsonObject?>();
  set payload(covariant MapBuilder<String, JsonObject?>? payload) =>
      _$this._payload = payload;

  int? _prevSeq;
  int? get prevSeq => _$this._prevSeq;
  set prevSeq(covariant int? prevSeq) => _$this._prevSeq = prevSeq;

  HistoryTier? _historyTier;
  HistoryTier? get historyTier => _$this._historyTier;
  set historyTier(covariant HistoryTier? historyTier) =>
      _$this._historyTier = historyTier;

  PersistReason? _persistReason;
  PersistReason? get persistReason => _$this._persistReason;
  set persistReason(covariant PersistReason? persistReason) =>
      _$this._persistReason = persistReason;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(covariant DateTime? eventTime) => _$this._eventTime = eventTime;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(covariant DateTime? validUntil) =>
      _$this._validUntil = validUntil;

  int? _qaFlags;
  int? get qaFlags => _$this._qaFlags;
  set qaFlags(covariant int? qaFlags) => _$this._qaFlags = qaFlags;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(covariant ListBuilder<num>? bbox) => _$this._bbox = bbox;

  ListBuilder<num>? _prevPersistedBbox;
  ListBuilder<num> get prevPersistedBbox =>
      _$this._prevPersistedBbox ??= ListBuilder<num>();
  set prevPersistedBbox(covariant ListBuilder<num>? prevPersistedBbox) =>
      _$this._prevPersistedBbox = prevPersistedBbox;

  ListBuilder<num>? _prevLiveBbox;
  ListBuilder<num> get prevLiveBbox =>
      _$this._prevLiveBbox ??= ListBuilder<num>();
  set prevLiveBbox(covariant ListBuilder<num>? prevLiveBbox) =>
      _$this._prevLiveBbox = prevLiveBbox;

  bool? _leftFilter;
  bool? get leftFilter => _$this._leftFilter;
  set leftFilter(covariant bool? leftFilter) => _$this._leftFilter = leftFilter;

  bool? _purged;
  bool? get purged => _$this._purged;
  set purged(covariant bool? purged) => _$this._purged = purged;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(covariant DateTime? validFrom) => _$this._validFrom = validFrom;

  String? _globalRef;
  String? get globalRef => _$this._globalRef;
  set globalRef(covariant String? globalRef) => _$this._globalRef = globalRef;

  $ChangeBuilder() {
    $Change._defaults(this);
  }

  $ChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _version = $v.version;
      _observedAt = $v.observedAt;
      _tombstone = $v.tombstone;
      _geometry = $v.geometry?.toBuilder();
      _payload = $v.payload?.toBuilder();
      _prevSeq = $v.prevSeq;
      _historyTier = $v.historyTier;
      _persistReason = $v.persistReason;
      _eventTime = $v.eventTime;
      _validUntil = $v.validUntil;
      _qaFlags = $v.qaFlags;
      _bbox = $v.bbox?.toBuilder();
      _prevPersistedBbox = $v.prevPersistedBbox?.toBuilder();
      _prevLiveBbox = $v.prevLiveBbox?.toBuilder();
      _leftFilter = $v.leftFilter;
      _purged = $v.purged;
      _validFrom = $v.validFrom;
      _globalRef = $v.globalRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Change other) {
    _$v = other as _$$Change;
  }

  @override
  void update(void Function($ChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Change build() => _build();

  _$$Change _build() {
    _$$Change _$result;
    try {
      _$result = _$v ??
          _$$Change._(
            seq: BuiltValueNullFieldError.checkNotNull(seq, r'$Change', 'seq'),
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, r'$Change', 'source_'),
            externalId: BuiltValueNullFieldError.checkNotNull(
                externalId, r'$Change', 'externalId'),
            kind:
                BuiltValueNullFieldError.checkNotNull(kind, r'$Change', 'kind'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'$Change', 'version'),
            observedAt: BuiltValueNullFieldError.checkNotNull(
                observedAt, r'$Change', 'observedAt'),
            tombstone: BuiltValueNullFieldError.checkNotNull(
                tombstone, r'$Change', 'tombstone'),
            geometry: _geometry?.build(),
            payload: _payload?.build(),
            prevSeq: prevSeq,
            historyTier: historyTier,
            persistReason: persistReason,
            eventTime: eventTime,
            validUntil: validUntil,
            qaFlags: qaFlags,
            bbox: _bbox?.build(),
            prevPersistedBbox: _prevPersistedBbox?.build(),
            prevLiveBbox: _prevLiveBbox?.build(),
            leftFilter: leftFilter,
            purged: purged,
            validFrom: validFrom,
            globalRef: globalRef,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'payload';
        _payload?.build();

        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'prevPersistedBbox';
        _prevPersistedBbox?.build();
        _$failedField = 'prevLiveBbox';
        _prevLiveBbox?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'$Change', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
