// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FederationItemPersistReasonEnum _$federationItemPersistReasonEnum_FIRST =
    const FederationItemPersistReasonEnum._('FIRST');
const FederationItemPersistReasonEnum
    _$federationItemPersistReasonEnum_REAPPEAR =
    const FederationItemPersistReasonEnum._('REAPPEAR');
const FederationItemPersistReasonEnum
    _$federationItemPersistReasonEnum_SIGNIFICANT =
    const FederationItemPersistReasonEnum._('SIGNIFICANT');
const FederationItemPersistReasonEnum
    _$federationItemPersistReasonEnum_TOMBSTONE =
    const FederationItemPersistReasonEnum._('TOMBSTONE');
const FederationItemPersistReasonEnum _$federationItemPersistReasonEnum_CHANGE =
    const FederationItemPersistReasonEnum._('CHANGE');
const FederationItemPersistReasonEnum _$federationItemPersistReasonEnum_SAMPLE =
    const FederationItemPersistReasonEnum._('SAMPLE');
const FederationItemPersistReasonEnum
    _$federationItemPersistReasonEnum_KEYFRAME =
    const FederationItemPersistReasonEnum._('KEYFRAME');
const FederationItemPersistReasonEnum
    _$federationItemPersistReasonEnum_HEARTBEAT =
    const FederationItemPersistReasonEnum._('HEARTBEAT');
const FederationItemPersistReasonEnum
    _$federationItemPersistReasonEnum_TRIGGER_EDGE =
    const FederationItemPersistReasonEnum._('TRIGGER_EDGE');
const FederationItemPersistReasonEnum
    _$federationItemPersistReasonEnum_SNAPSHOT =
    const FederationItemPersistReasonEnum._('SNAPSHOT');

FederationItemPersistReasonEnum _$federationItemPersistReasonEnumValueOf(
    String name) {
  switch (name) {
    case 'FIRST':
      return _$federationItemPersistReasonEnum_FIRST;
    case 'REAPPEAR':
      return _$federationItemPersistReasonEnum_REAPPEAR;
    case 'SIGNIFICANT':
      return _$federationItemPersistReasonEnum_SIGNIFICANT;
    case 'TOMBSTONE':
      return _$federationItemPersistReasonEnum_TOMBSTONE;
    case 'CHANGE':
      return _$federationItemPersistReasonEnum_CHANGE;
    case 'SAMPLE':
      return _$federationItemPersistReasonEnum_SAMPLE;
    case 'KEYFRAME':
      return _$federationItemPersistReasonEnum_KEYFRAME;
    case 'HEARTBEAT':
      return _$federationItemPersistReasonEnum_HEARTBEAT;
    case 'TRIGGER_EDGE':
      return _$federationItemPersistReasonEnum_TRIGGER_EDGE;
    case 'SNAPSHOT':
      return _$federationItemPersistReasonEnum_SNAPSHOT;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FederationItemPersistReasonEnum>
    _$federationItemPersistReasonEnumValues = BuiltSet<
        FederationItemPersistReasonEnum>(const <FederationItemPersistReasonEnum>[
  _$federationItemPersistReasonEnum_FIRST,
  _$federationItemPersistReasonEnum_REAPPEAR,
  _$federationItemPersistReasonEnum_SIGNIFICANT,
  _$federationItemPersistReasonEnum_TOMBSTONE,
  _$federationItemPersistReasonEnum_CHANGE,
  _$federationItemPersistReasonEnum_SAMPLE,
  _$federationItemPersistReasonEnum_KEYFRAME,
  _$federationItemPersistReasonEnum_HEARTBEAT,
  _$federationItemPersistReasonEnum_TRIGGER_EDGE,
  _$federationItemPersistReasonEnum_SNAPSHOT,
]);

const FederationItemHistoryTierEnum _$federationItemHistoryTierEnum_STANDARD =
    const FederationItemHistoryTierEnum._('STANDARD');
const FederationItemHistoryTierEnum _$federationItemHistoryTierEnum_TRACK =
    const FederationItemHistoryTierEnum._('TRACK');

FederationItemHistoryTierEnum _$federationItemHistoryTierEnumValueOf(
    String name) {
  switch (name) {
    case 'STANDARD':
      return _$federationItemHistoryTierEnum_STANDARD;
    case 'TRACK':
      return _$federationItemHistoryTierEnum_TRACK;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FederationItemHistoryTierEnum>
    _$federationItemHistoryTierEnumValues = BuiltSet<
        FederationItemHistoryTierEnum>(const <FederationItemHistoryTierEnum>[
  _$federationItemHistoryTierEnum_STANDARD,
  _$federationItemHistoryTierEnum_TRACK,
]);

Serializer<FederationItemPersistReasonEnum>
    _$federationItemPersistReasonEnumSerializer =
    _$FederationItemPersistReasonEnumSerializer();
Serializer<FederationItemHistoryTierEnum>
    _$federationItemHistoryTierEnumSerializer =
    _$FederationItemHistoryTierEnumSerializer();

class _$FederationItemPersistReasonEnumSerializer
    implements PrimitiveSerializer<FederationItemPersistReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FIRST': 'FIRST',
    'REAPPEAR': 'REAPPEAR',
    'SIGNIFICANT': 'SIGNIFICANT',
    'TOMBSTONE': 'TOMBSTONE',
    'CHANGE': 'CHANGE',
    'SAMPLE': 'SAMPLE',
    'KEYFRAME': 'KEYFRAME',
    'HEARTBEAT': 'HEARTBEAT',
    'TRIGGER_EDGE': 'TRIGGER_EDGE',
    'SNAPSHOT': 'SNAPSHOT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FIRST': 'FIRST',
    'REAPPEAR': 'REAPPEAR',
    'SIGNIFICANT': 'SIGNIFICANT',
    'TOMBSTONE': 'TOMBSTONE',
    'CHANGE': 'CHANGE',
    'SAMPLE': 'SAMPLE',
    'KEYFRAME': 'KEYFRAME',
    'HEARTBEAT': 'HEARTBEAT',
    'TRIGGER_EDGE': 'TRIGGER_EDGE',
    'SNAPSHOT': 'SNAPSHOT',
  };

  @override
  final Iterable<Type> types = const <Type>[FederationItemPersistReasonEnum];
  @override
  final String wireName = 'FederationItemPersistReasonEnum';

  @override
  Object serialize(
          Serializers serializers, FederationItemPersistReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FederationItemPersistReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FederationItemPersistReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FederationItemHistoryTierEnumSerializer
    implements PrimitiveSerializer<FederationItemHistoryTierEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'STANDARD': 'STANDARD',
    'TRACK': 'TRACK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'STANDARD': 'STANDARD',
    'TRACK': 'TRACK',
  };

  @override
  final Iterable<Type> types = const <Type>[FederationItemHistoryTierEnum];
  @override
  final String wireName = 'FederationItemHistoryTierEnum';

  @override
  Object serialize(
          Serializers serializers, FederationItemHistoryTierEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FederationItemHistoryTierEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FederationItemHistoryTierEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FederationItem extends FederationItem {
  @override
  final int seq;
  @override
  final String ref;
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final String kind;
  @override
  final int version;
  @override
  final FederationItemPersistReasonEnum? persistReason;
  @override
  final FederationItemHistoryTierEnum? historyTier;
  @override
  final DateTime observedAt;
  @override
  final DateTime? eventTime;
  @override
  final DateTime? validUntil;
  @override
  final bool tombstone;
  @override
  final Geometry? geometry;
  @override
  final BuiltMap<String, JsonObject?> payload;
  @override
  final Quality? quality;
  @override
  final String licence;
  @override
  final Provenance provenance;

  factory _$FederationItem([void Function(FederationItemBuilder)? updates]) =>
      (FederationItemBuilder()..update(updates))._build();

  _$FederationItem._(
      {required this.seq,
      required this.ref,
      required this.sourceId,
      required this.externalId,
      required this.kind,
      required this.version,
      this.persistReason,
      this.historyTier,
      required this.observedAt,
      this.eventTime,
      this.validUntil,
      required this.tombstone,
      this.geometry,
      required this.payload,
      this.quality,
      required this.licence,
      required this.provenance})
      : super._();
  @override
  FederationItem rebuild(void Function(FederationItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FederationItemBuilder toBuilder() => FederationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederationItem &&
        seq == other.seq &&
        ref == other.ref &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        kind == other.kind &&
        version == other.version &&
        persistReason == other.persistReason &&
        historyTier == other.historyTier &&
        observedAt == other.observedAt &&
        eventTime == other.eventTime &&
        validUntil == other.validUntil &&
        tombstone == other.tombstone &&
        geometry == other.geometry &&
        payload == other.payload &&
        quality == other.quality &&
        licence == other.licence &&
        provenance == other.provenance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, persistReason.hashCode);
    _$hash = $jc(_$hash, historyTier.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, tombstone.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, provenance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FederationItem')
          ..add('seq', seq)
          ..add('ref', ref)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('version', version)
          ..add('persistReason', persistReason)
          ..add('historyTier', historyTier)
          ..add('observedAt', observedAt)
          ..add('eventTime', eventTime)
          ..add('validUntil', validUntil)
          ..add('tombstone', tombstone)
          ..add('geometry', geometry)
          ..add('payload', payload)
          ..add('quality', quality)
          ..add('licence', licence)
          ..add('provenance', provenance))
        .toString();
  }
}

class FederationItemBuilder
    implements Builder<FederationItem, FederationItemBuilder> {
  _$FederationItem? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

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

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  FederationItemPersistReasonEnum? _persistReason;
  FederationItemPersistReasonEnum? get persistReason => _$this._persistReason;
  set persistReason(FederationItemPersistReasonEnum? persistReason) =>
      _$this._persistReason = persistReason;

  FederationItemHistoryTierEnum? _historyTier;
  FederationItemHistoryTierEnum? get historyTier => _$this._historyTier;
  set historyTier(FederationItemHistoryTierEnum? historyTier) =>
      _$this._historyTier = historyTier;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

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

  QualityBuilder? _quality;
  QualityBuilder get quality => _$this._quality ??= QualityBuilder();
  set quality(QualityBuilder? quality) => _$this._quality = quality;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  ProvenanceBuilder? _provenance;
  ProvenanceBuilder get provenance =>
      _$this._provenance ??= ProvenanceBuilder();
  set provenance(ProvenanceBuilder? provenance) =>
      _$this._provenance = provenance;

  FederationItemBuilder() {
    FederationItem._defaults(this);
  }

  FederationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _ref = $v.ref;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _version = $v.version;
      _persistReason = $v.persistReason;
      _historyTier = $v.historyTier;
      _observedAt = $v.observedAt;
      _eventTime = $v.eventTime;
      _validUntil = $v.validUntil;
      _tombstone = $v.tombstone;
      _geometry = $v.geometry?.toBuilder();
      _payload = $v.payload.toBuilder();
      _quality = $v.quality?.toBuilder();
      _licence = $v.licence;
      _provenance = $v.provenance.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederationItem other) {
    _$v = other as _$FederationItem;
  }

  @override
  void update(void Function(FederationItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederationItem build() => _build();

  _$FederationItem _build() {
    _$FederationItem _$result;
    try {
      _$result = _$v ??
          _$FederationItem._(
            seq: BuiltValueNullFieldError.checkNotNull(
                seq, r'FederationItem', 'seq'),
            ref: BuiltValueNullFieldError.checkNotNull(
                ref, r'FederationItem', 'ref'),
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'FederationItem', 'sourceId'),
            externalId: BuiltValueNullFieldError.checkNotNull(
                externalId, r'FederationItem', 'externalId'),
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'FederationItem', 'kind'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'FederationItem', 'version'),
            persistReason: persistReason,
            historyTier: historyTier,
            observedAt: BuiltValueNullFieldError.checkNotNull(
                observedAt, r'FederationItem', 'observedAt'),
            eventTime: eventTime,
            validUntil: validUntil,
            tombstone: BuiltValueNullFieldError.checkNotNull(
                tombstone, r'FederationItem', 'tombstone'),
            geometry: _geometry?.build(),
            payload: payload.build(),
            quality: _quality?.build(),
            licence: BuiltValueNullFieldError.checkNotNull(
                licence, r'FederationItem', 'licence'),
            provenance: provenance.build(),
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

        _$failedField = 'provenance';
        provenance.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FederationItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
