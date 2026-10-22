// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_record_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleRecordVersion extends ChronicleRecordVersion {
  @override
  final String ref;
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final String kind;
  @override
  final int seq;
  @override
  final DateTime observedAt;
  @override
  final DateTime? eventTime;
  @override
  final DateTime? ingestedAt;
  @override
  final Geometry? geometry;
  @override
  final BuiltMap<String, JsonObject?>? payload;
  @override
  final String? persistReason;
  @override
  final String layerId;
  @override
  final bool? backfilled;

  factory _$ChronicleRecordVersion([
    void Function(ChronicleRecordVersionBuilder)? updates,
  ]) => (ChronicleRecordVersionBuilder()..update(updates))._build();

  _$ChronicleRecordVersion._({
    required this.ref,
    required this.sourceId,
    required this.externalId,
    required this.kind,
    required this.seq,
    required this.observedAt,
    this.eventTime,
    this.ingestedAt,
    this.geometry,
    this.payload,
    this.persistReason,
    required this.layerId,
    this.backfilled,
  }) : super._();
  @override
  ChronicleRecordVersion rebuild(
    void Function(ChronicleRecordVersionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleRecordVersionBuilder toBuilder() =>
      ChronicleRecordVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleRecordVersion &&
        ref == other.ref &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        kind == other.kind &&
        seq == other.seq &&
        observedAt == other.observedAt &&
        eventTime == other.eventTime &&
        ingestedAt == other.ingestedAt &&
        geometry == other.geometry &&
        payload == other.payload &&
        persistReason == other.persistReason &&
        layerId == other.layerId &&
        backfilled == other.backfilled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, ingestedAt.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, persistReason.hashCode);
    _$hash = $jc(_$hash, layerId.hashCode);
    _$hash = $jc(_$hash, backfilled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleRecordVersion')
          ..add('ref', ref)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('seq', seq)
          ..add('observedAt', observedAt)
          ..add('eventTime', eventTime)
          ..add('ingestedAt', ingestedAt)
          ..add('geometry', geometry)
          ..add('payload', payload)
          ..add('persistReason', persistReason)
          ..add('layerId', layerId)
          ..add('backfilled', backfilled))
        .toString();
  }
}

class ChronicleRecordVersionBuilder
    implements Builder<ChronicleRecordVersion, ChronicleRecordVersionBuilder> {
  _$ChronicleRecordVersion? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  DateTime? _ingestedAt;
  DateTime? get ingestedAt => _$this._ingestedAt;
  set ingestedAt(DateTime? ingestedAt) => _$this._ingestedAt = ingestedAt;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  MapBuilder<String, JsonObject?>? _payload;
  MapBuilder<String, JsonObject?> get payload =>
      _$this._payload ??= MapBuilder<String, JsonObject?>();
  set payload(MapBuilder<String, JsonObject?>? payload) =>
      _$this._payload = payload;

  String? _persistReason;
  String? get persistReason => _$this._persistReason;
  set persistReason(String? persistReason) =>
      _$this._persistReason = persistReason;

  String? _layerId;
  String? get layerId => _$this._layerId;
  set layerId(String? layerId) => _$this._layerId = layerId;

  bool? _backfilled;
  bool? get backfilled => _$this._backfilled;
  set backfilled(bool? backfilled) => _$this._backfilled = backfilled;

  ChronicleRecordVersionBuilder() {
    ChronicleRecordVersion._defaults(this);
  }

  ChronicleRecordVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _seq = $v.seq;
      _observedAt = $v.observedAt;
      _eventTime = $v.eventTime;
      _ingestedAt = $v.ingestedAt;
      _geometry = $v.geometry?.toBuilder();
      _payload = $v.payload?.toBuilder();
      _persistReason = $v.persistReason;
      _layerId = $v.layerId;
      _backfilled = $v.backfilled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleRecordVersion other) {
    _$v = other as _$ChronicleRecordVersion;
  }

  @override
  void update(void Function(ChronicleRecordVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleRecordVersion build() => _build();

  _$ChronicleRecordVersion _build() {
    _$ChronicleRecordVersion _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleRecordVersion._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'ChronicleRecordVersion',
              'ref',
            ),
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'ChronicleRecordVersion',
              'sourceId',
            ),
            externalId: BuiltValueNullFieldError.checkNotNull(
              externalId,
              r'ChronicleRecordVersion',
              'externalId',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'ChronicleRecordVersion',
              'kind',
            ),
            seq: BuiltValueNullFieldError.checkNotNull(
              seq,
              r'ChronicleRecordVersion',
              'seq',
            ),
            observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt,
              r'ChronicleRecordVersion',
              'observedAt',
            ),
            eventTime: eventTime,
            ingestedAt: ingestedAt,
            geometry: _geometry?.build(),
            payload: _payload?.build(),
            persistReason: persistReason,
            layerId: BuiltValueNullFieldError.checkNotNull(
              layerId,
              r'ChronicleRecordVersion',
              'layerId',
            ),
            backfilled: backfilled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'payload';
        _payload?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleRecordVersion',
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
