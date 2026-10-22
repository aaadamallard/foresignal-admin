// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_properties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeatureProperties extends FeatureProperties {
  @override
  final String? source_;
  @override
  final String? externalId;
  @override
  final String? kind;
  @override
  final String? title;
  @override
  final int? version;
  @override
  final int? seq;
  @override
  final DateTime? observedAt;
  @override
  final DateTime? validUntil;
  @override
  final bool? live;
  @override
  final num? distanceKm;
  @override
  final BuiltMap<String, JsonObject?>? payload;
  @override
  final String? near;
  @override
  final DateTime? ingestedAt;
  @override
  final PersistReason? persistReason;

  factory _$FeatureProperties(
          [void Function(FeaturePropertiesBuilder)? updates]) =>
      (FeaturePropertiesBuilder()..update(updates))._build();

  _$FeatureProperties._(
      {this.source_,
      this.externalId,
      this.kind,
      this.title,
      this.version,
      this.seq,
      this.observedAt,
      this.validUntil,
      this.live,
      this.distanceKm,
      this.payload,
      this.near,
      this.ingestedAt,
      this.persistReason})
      : super._();
  @override
  FeatureProperties rebuild(void Function(FeaturePropertiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeaturePropertiesBuilder toBuilder() =>
      FeaturePropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureProperties &&
        source_ == other.source_ &&
        externalId == other.externalId &&
        kind == other.kind &&
        title == other.title &&
        version == other.version &&
        seq == other.seq &&
        observedAt == other.observedAt &&
        validUntil == other.validUntil &&
        live == other.live &&
        distanceKm == other.distanceKm &&
        payload == other.payload &&
        near == other.near &&
        ingestedAt == other.ingestedAt &&
        persistReason == other.persistReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, live.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, near.hashCode);
    _$hash = $jc(_$hash, ingestedAt.hashCode);
    _$hash = $jc(_$hash, persistReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeatureProperties')
          ..add('source_', source_)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('title', title)
          ..add('version', version)
          ..add('seq', seq)
          ..add('observedAt', observedAt)
          ..add('validUntil', validUntil)
          ..add('live', live)
          ..add('distanceKm', distanceKm)
          ..add('payload', payload)
          ..add('near', near)
          ..add('ingestedAt', ingestedAt)
          ..add('persistReason', persistReason))
        .toString();
  }
}

class FeaturePropertiesBuilder
    implements Builder<FeatureProperties, FeaturePropertiesBuilder> {
  _$FeatureProperties? _$v;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  bool? _live;
  bool? get live => _$this._live;
  set live(bool? live) => _$this._live = live;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  MapBuilder<String, JsonObject?>? _payload;
  MapBuilder<String, JsonObject?> get payload =>
      _$this._payload ??= MapBuilder<String, JsonObject?>();
  set payload(MapBuilder<String, JsonObject?>? payload) =>
      _$this._payload = payload;

  String? _near;
  String? get near => _$this._near;
  set near(String? near) => _$this._near = near;

  DateTime? _ingestedAt;
  DateTime? get ingestedAt => _$this._ingestedAt;
  set ingestedAt(DateTime? ingestedAt) => _$this._ingestedAt = ingestedAt;

  PersistReason? _persistReason;
  PersistReason? get persistReason => _$this._persistReason;
  set persistReason(PersistReason? persistReason) =>
      _$this._persistReason = persistReason;

  FeaturePropertiesBuilder() {
    FeatureProperties._defaults(this);
  }

  FeaturePropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _title = $v.title;
      _version = $v.version;
      _seq = $v.seq;
      _observedAt = $v.observedAt;
      _validUntil = $v.validUntil;
      _live = $v.live;
      _distanceKm = $v.distanceKm;
      _payload = $v.payload?.toBuilder();
      _near = $v.near;
      _ingestedAt = $v.ingestedAt;
      _persistReason = $v.persistReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureProperties other) {
    _$v = other as _$FeatureProperties;
  }

  @override
  void update(void Function(FeaturePropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureProperties build() => _build();

  _$FeatureProperties _build() {
    _$FeatureProperties _$result;
    try {
      _$result = _$v ??
          _$FeatureProperties._(
            source_: source_,
            externalId: externalId,
            kind: kind,
            title: title,
            version: version,
            seq: seq,
            observedAt: observedAt,
            validUntil: validUntil,
            live: live,
            distanceKm: distanceKm,
            payload: _payload?.build(),
            near: near,
            ingestedAt: ingestedAt,
            persistReason: persistReason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        _payload?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FeatureProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
