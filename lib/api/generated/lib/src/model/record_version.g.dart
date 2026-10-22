// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordVersion extends RecordVersion {
  @override
  final String id;
  @override
  final String source_;
  @override
  final String externalId;
  @override
  final String kind;
  @override
  final int version;
  @override
  final int seq;
  @override
  final DateTime observedAt;
  @override
  final DateTime ingestedAt;
  @override
  final DateTime? validUntil;
  @override
  final bool? tombstone;
  @override
  final Geometry? geometry;
  @override
  final BuiltMap<String, JsonObject?> payload;
  @override
  final String? attribution;
  @override
  final String? title;
  @override
  final DateTime? persistedObservedAt;
  @override
  final DateTime? eventTime;
  @override
  final DateTime? validFrom;
  @override
  final Quality? quality;
  @override
  final bool? live;
  @override
  final int? qaFlags;
  @override
  final num? distanceKm;
  @override
  final BuiltList<Observer>? observer;
  @override
  final RegionTags? region;
  @override
  final String? entityId;
  @override
  final Provenance? provenance;
  @override
  final String? globalRef;
  @override
  final PersistReason persistReason;
  @override
  final int? prevSeq;
  @override
  final HistoryTier? historyTier;
  @override
  final DateTime receivedAt;
  @override
  final int? batchId;
  @override
  final bool? downsampled;

  factory _$RecordVersion([void Function(RecordVersionBuilder)? updates]) =>
      (RecordVersionBuilder()..update(updates))._build();

  _$RecordVersion._(
      {required this.id,
      required this.source_,
      required this.externalId,
      required this.kind,
      required this.version,
      required this.seq,
      required this.observedAt,
      required this.ingestedAt,
      this.validUntil,
      this.tombstone,
      this.geometry,
      required this.payload,
      this.attribution,
      this.title,
      this.persistedObservedAt,
      this.eventTime,
      this.validFrom,
      this.quality,
      this.live,
      this.qaFlags,
      this.distanceKm,
      this.observer,
      this.region,
      this.entityId,
      this.provenance,
      this.globalRef,
      required this.persistReason,
      this.prevSeq,
      this.historyTier,
      required this.receivedAt,
      this.batchId,
      this.downsampled})
      : super._();
  @override
  RecordVersion rebuild(void Function(RecordVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordVersionBuilder toBuilder() => RecordVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordVersion &&
        id == other.id &&
        source_ == other.source_ &&
        externalId == other.externalId &&
        kind == other.kind &&
        version == other.version &&
        seq == other.seq &&
        observedAt == other.observedAt &&
        ingestedAt == other.ingestedAt &&
        validUntil == other.validUntil &&
        tombstone == other.tombstone &&
        geometry == other.geometry &&
        payload == other.payload &&
        attribution == other.attribution &&
        title == other.title &&
        persistedObservedAt == other.persistedObservedAt &&
        eventTime == other.eventTime &&
        validFrom == other.validFrom &&
        quality == other.quality &&
        live == other.live &&
        qaFlags == other.qaFlags &&
        distanceKm == other.distanceKm &&
        observer == other.observer &&
        region == other.region &&
        entityId == other.entityId &&
        provenance == other.provenance &&
        globalRef == other.globalRef &&
        persistReason == other.persistReason &&
        prevSeq == other.prevSeq &&
        historyTier == other.historyTier &&
        receivedAt == other.receivedAt &&
        batchId == other.batchId &&
        downsampled == other.downsampled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, ingestedAt.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, tombstone.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, persistedObservedAt.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, live.hashCode);
    _$hash = $jc(_$hash, qaFlags.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, observer.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, provenance.hashCode);
    _$hash = $jc(_$hash, globalRef.hashCode);
    _$hash = $jc(_$hash, persistReason.hashCode);
    _$hash = $jc(_$hash, prevSeq.hashCode);
    _$hash = $jc(_$hash, historyTier.hashCode);
    _$hash = $jc(_$hash, receivedAt.hashCode);
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, downsampled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordVersion')
          ..add('id', id)
          ..add('source_', source_)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('version', version)
          ..add('seq', seq)
          ..add('observedAt', observedAt)
          ..add('ingestedAt', ingestedAt)
          ..add('validUntil', validUntil)
          ..add('tombstone', tombstone)
          ..add('geometry', geometry)
          ..add('payload', payload)
          ..add('attribution', attribution)
          ..add('title', title)
          ..add('persistedObservedAt', persistedObservedAt)
          ..add('eventTime', eventTime)
          ..add('validFrom', validFrom)
          ..add('quality', quality)
          ..add('live', live)
          ..add('qaFlags', qaFlags)
          ..add('distanceKm', distanceKm)
          ..add('observer', observer)
          ..add('region', region)
          ..add('entityId', entityId)
          ..add('provenance', provenance)
          ..add('globalRef', globalRef)
          ..add('persistReason', persistReason)
          ..add('prevSeq', prevSeq)
          ..add('historyTier', historyTier)
          ..add('receivedAt', receivedAt)
          ..add('batchId', batchId)
          ..add('downsampled', downsampled))
        .toString();
  }
}

class RecordVersionBuilder
    implements Builder<RecordVersion, RecordVersionBuilder> {
  _$RecordVersion? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _ingestedAt;
  DateTime? get ingestedAt => _$this._ingestedAt;
  set ingestedAt(DateTime? ingestedAt) => _$this._ingestedAt = ingestedAt;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  bool? _tombstone;
  bool? get tombstone => _$this._tombstone;
  set tombstone(bool? tombstone) => _$this._tombstone = tombstone;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  MapBuilder<String, JsonObject?>? _payload;
  MapBuilder<String, JsonObject?> get payload =>
      _$this._payload ??= MapBuilder<String, JsonObject?>();
  set payload(MapBuilder<String, JsonObject?>? payload) =>
      _$this._payload = payload;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _persistedObservedAt;
  DateTime? get persistedObservedAt => _$this._persistedObservedAt;
  set persistedObservedAt(DateTime? persistedObservedAt) =>
      _$this._persistedObservedAt = persistedObservedAt;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  QualityBuilder? _quality;
  QualityBuilder get quality => _$this._quality ??= QualityBuilder();
  set quality(QualityBuilder? quality) => _$this._quality = quality;

  bool? _live;
  bool? get live => _$this._live;
  set live(bool? live) => _$this._live = live;

  int? _qaFlags;
  int? get qaFlags => _$this._qaFlags;
  set qaFlags(int? qaFlags) => _$this._qaFlags = qaFlags;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  ListBuilder<Observer>? _observer;
  ListBuilder<Observer> get observer =>
      _$this._observer ??= ListBuilder<Observer>();
  set observer(ListBuilder<Observer>? observer) => _$this._observer = observer;

  RegionTagsBuilder? _region;
  RegionTagsBuilder get region => _$this._region ??= RegionTagsBuilder();
  set region(RegionTagsBuilder? region) => _$this._region = region;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(String? entityId) => _$this._entityId = entityId;

  ProvenanceBuilder? _provenance;
  ProvenanceBuilder get provenance =>
      _$this._provenance ??= ProvenanceBuilder();
  set provenance(ProvenanceBuilder? provenance) =>
      _$this._provenance = provenance;

  String? _globalRef;
  String? get globalRef => _$this._globalRef;
  set globalRef(String? globalRef) => _$this._globalRef = globalRef;

  PersistReason? _persistReason;
  PersistReason? get persistReason => _$this._persistReason;
  set persistReason(PersistReason? persistReason) =>
      _$this._persistReason = persistReason;

  int? _prevSeq;
  int? get prevSeq => _$this._prevSeq;
  set prevSeq(int? prevSeq) => _$this._prevSeq = prevSeq;

  HistoryTier? _historyTier;
  HistoryTier? get historyTier => _$this._historyTier;
  set historyTier(HistoryTier? historyTier) =>
      _$this._historyTier = historyTier;

  DateTime? _receivedAt;
  DateTime? get receivedAt => _$this._receivedAt;
  set receivedAt(DateTime? receivedAt) => _$this._receivedAt = receivedAt;

  int? _batchId;
  int? get batchId => _$this._batchId;
  set batchId(int? batchId) => _$this._batchId = batchId;

  bool? _downsampled;
  bool? get downsampled => _$this._downsampled;
  set downsampled(bool? downsampled) => _$this._downsampled = downsampled;

  RecordVersionBuilder() {
    RecordVersion._defaults(this);
  }

  RecordVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _version = $v.version;
      _seq = $v.seq;
      _observedAt = $v.observedAt;
      _ingestedAt = $v.ingestedAt;
      _validUntil = $v.validUntil;
      _tombstone = $v.tombstone;
      _geometry = $v.geometry?.toBuilder();
      _payload = $v.payload.toBuilder();
      _attribution = $v.attribution;
      _title = $v.title;
      _persistedObservedAt = $v.persistedObservedAt;
      _eventTime = $v.eventTime;
      _validFrom = $v.validFrom;
      _quality = $v.quality?.toBuilder();
      _live = $v.live;
      _qaFlags = $v.qaFlags;
      _distanceKm = $v.distanceKm;
      _observer = $v.observer?.toBuilder();
      _region = $v.region?.toBuilder();
      _entityId = $v.entityId;
      _provenance = $v.provenance?.toBuilder();
      _globalRef = $v.globalRef;
      _persistReason = $v.persistReason;
      _prevSeq = $v.prevSeq;
      _historyTier = $v.historyTier;
      _receivedAt = $v.receivedAt;
      _batchId = $v.batchId;
      _downsampled = $v.downsampled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordVersion other) {
    _$v = other as _$RecordVersion;
  }

  @override
  void update(void Function(RecordVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordVersion build() => _build();

  _$RecordVersion _build() {
    _$RecordVersion _$result;
    try {
      _$result = _$v ??
          _$RecordVersion._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'RecordVersion', 'id'),
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, r'RecordVersion', 'source_'),
            externalId: BuiltValueNullFieldError.checkNotNull(
                externalId, r'RecordVersion', 'externalId'),
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'RecordVersion', 'kind'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'RecordVersion', 'version'),
            seq: BuiltValueNullFieldError.checkNotNull(
                seq, r'RecordVersion', 'seq'),
            observedAt: BuiltValueNullFieldError.checkNotNull(
                observedAt, r'RecordVersion', 'observedAt'),
            ingestedAt: BuiltValueNullFieldError.checkNotNull(
                ingestedAt, r'RecordVersion', 'ingestedAt'),
            validUntil: validUntil,
            tombstone: tombstone,
            geometry: _geometry?.build(),
            payload: payload.build(),
            attribution: attribution,
            title: title,
            persistedObservedAt: persistedObservedAt,
            eventTime: eventTime,
            validFrom: validFrom,
            quality: _quality?.build(),
            live: live,
            qaFlags: qaFlags,
            distanceKm: distanceKm,
            observer: _observer?.build(),
            region: _region?.build(),
            entityId: entityId,
            provenance: _provenance?.build(),
            globalRef: globalRef,
            persistReason: BuiltValueNullFieldError.checkNotNull(
                persistReason, r'RecordVersion', 'persistReason'),
            prevSeq: prevSeq,
            historyTier: historyTier,
            receivedAt: BuiltValueNullFieldError.checkNotNull(
                receivedAt, r'RecordVersion', 'receivedAt'),
            batchId: batchId,
            downsampled: downsampled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'payload';
        payload.build();

        _$failedField = 'quality';
        _quality?.build();

        _$failedField = 'observer';
        _observer?.build();
        _$failedField = 'region';
        _region?.build();

        _$failedField = 'provenance';
        _provenance?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecordVersion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
