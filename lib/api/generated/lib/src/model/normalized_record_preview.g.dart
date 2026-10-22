// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'normalized_record_preview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NormalizedRecordPreview extends NormalizedRecordPreview {
  @override
  final String externalId;
  @override
  final String kind;
  @override
  final DateTime observedAt;
  @override
  final NormalizedRecordPreviewGeometry? geometry;
  @override
  final DateTime? validUntil;
  @override
  final bool? tombstone;
  @override
  final BuiltMap<String, JsonObject?> payload;
  @override
  final DateTime? eventTime;
  @override
  final DateTime? validFrom;
  @override
  final Quality? quality;
  @override
  final BuiltList<Observer>? observers;

  factory _$NormalizedRecordPreview([
    void Function(NormalizedRecordPreviewBuilder)? updates,
  ]) => (NormalizedRecordPreviewBuilder()..update(updates))._build();

  _$NormalizedRecordPreview._({
    required this.externalId,
    required this.kind,
    required this.observedAt,
    this.geometry,
    this.validUntil,
    this.tombstone,
    required this.payload,
    this.eventTime,
    this.validFrom,
    this.quality,
    this.observers,
  }) : super._();
  @override
  NormalizedRecordPreview rebuild(
    void Function(NormalizedRecordPreviewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NormalizedRecordPreviewBuilder toBuilder() =>
      NormalizedRecordPreviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NormalizedRecordPreview &&
        externalId == other.externalId &&
        kind == other.kind &&
        observedAt == other.observedAt &&
        geometry == other.geometry &&
        validUntil == other.validUntil &&
        tombstone == other.tombstone &&
        payload == other.payload &&
        eventTime == other.eventTime &&
        validFrom == other.validFrom &&
        quality == other.quality &&
        observers == other.observers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, tombstone.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, observers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NormalizedRecordPreview')
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('observedAt', observedAt)
          ..add('geometry', geometry)
          ..add('validUntil', validUntil)
          ..add('tombstone', tombstone)
          ..add('payload', payload)
          ..add('eventTime', eventTime)
          ..add('validFrom', validFrom)
          ..add('quality', quality)
          ..add('observers', observers))
        .toString();
  }
}

class NormalizedRecordPreviewBuilder
    implements
        Builder<NormalizedRecordPreview, NormalizedRecordPreviewBuilder> {
  _$NormalizedRecordPreview? _$v;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  NormalizedRecordPreviewGeometryBuilder? _geometry;
  NormalizedRecordPreviewGeometryBuilder get geometry =>
      _$this._geometry ??= NormalizedRecordPreviewGeometryBuilder();
  set geometry(NormalizedRecordPreviewGeometryBuilder? geometry) =>
      _$this._geometry = geometry;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  bool? _tombstone;
  bool? get tombstone => _$this._tombstone;
  set tombstone(bool? tombstone) => _$this._tombstone = tombstone;

  MapBuilder<String, JsonObject?>? _payload;
  MapBuilder<String, JsonObject?> get payload =>
      _$this._payload ??= MapBuilder<String, JsonObject?>();
  set payload(MapBuilder<String, JsonObject?>? payload) =>
      _$this._payload = payload;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  QualityBuilder? _quality;
  QualityBuilder get quality => _$this._quality ??= QualityBuilder();
  set quality(QualityBuilder? quality) => _$this._quality = quality;

  ListBuilder<Observer>? _observers;
  ListBuilder<Observer> get observers =>
      _$this._observers ??= ListBuilder<Observer>();
  set observers(ListBuilder<Observer>? observers) =>
      _$this._observers = observers;

  NormalizedRecordPreviewBuilder() {
    NormalizedRecordPreview._defaults(this);
  }

  NormalizedRecordPreviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _externalId = $v.externalId;
      _kind = $v.kind;
      _observedAt = $v.observedAt;
      _geometry = $v.geometry?.toBuilder();
      _validUntil = $v.validUntil;
      _tombstone = $v.tombstone;
      _payload = $v.payload.toBuilder();
      _eventTime = $v.eventTime;
      _validFrom = $v.validFrom;
      _quality = $v.quality?.toBuilder();
      _observers = $v.observers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NormalizedRecordPreview other) {
    _$v = other as _$NormalizedRecordPreview;
  }

  @override
  void update(void Function(NormalizedRecordPreviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NormalizedRecordPreview build() => _build();

  _$NormalizedRecordPreview _build() {
    _$NormalizedRecordPreview _$result;
    try {
      _$result =
          _$v ??
          _$NormalizedRecordPreview._(
            externalId: BuiltValueNullFieldError.checkNotNull(
              externalId,
              r'NormalizedRecordPreview',
              'externalId',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'NormalizedRecordPreview',
              'kind',
            ),
            observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt,
              r'NormalizedRecordPreview',
              'observedAt',
            ),
            geometry: _geometry?.build(),
            validUntil: validUntil,
            tombstone: tombstone,
            payload: payload.build(),
            eventTime: eventTime,
            validFrom: validFrom,
            quality: _quality?.build(),
            observers: _observers?.build(),
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
        _$failedField = 'observers';
        _observers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NormalizedRecordPreview',
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
