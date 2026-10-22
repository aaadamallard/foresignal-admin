// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LiveEvent extends LiveEvent {
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final String kind;
  @override
  final DateTime observedAt;
  @override
  final DateTime? validUntil;
  @override
  final int version;
  @override
  final Geometry? geometry;
  @override
  final BuiltList<num>? bbox;
  @override
  final BuiltList<num>? prevBbox;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final Quality? quality;
  @override
  final bool? leftFilter;

  factory _$LiveEvent([void Function(LiveEventBuilder)? updates]) =>
      (LiveEventBuilder()..update(updates))._build();

  _$LiveEvent._({
    required this.sourceId,
    required this.externalId,
    required this.kind,
    required this.observedAt,
    this.validUntil,
    required this.version,
    this.geometry,
    this.bbox,
    this.prevBbox,
    this.properties,
    this.quality,
    this.leftFilter,
  }) : super._();
  @override
  LiveEvent rebuild(void Function(LiveEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveEventBuilder toBuilder() => LiveEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveEvent &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        kind == other.kind &&
        observedAt == other.observedAt &&
        validUntil == other.validUntil &&
        version == other.version &&
        geometry == other.geometry &&
        bbox == other.bbox &&
        prevBbox == other.prevBbox &&
        properties == other.properties &&
        quality == other.quality &&
        leftFilter == other.leftFilter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, prevBbox.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, leftFilter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LiveEvent')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('observedAt', observedAt)
          ..add('validUntil', validUntil)
          ..add('version', version)
          ..add('geometry', geometry)
          ..add('bbox', bbox)
          ..add('prevBbox', prevBbox)
          ..add('properties', properties)
          ..add('quality', quality)
          ..add('leftFilter', leftFilter))
        .toString();
  }
}

class LiveEventBuilder implements Builder<LiveEvent, LiveEventBuilder> {
  _$LiveEvent? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  ListBuilder<num>? _prevBbox;
  ListBuilder<num> get prevBbox => _$this._prevBbox ??= ListBuilder<num>();
  set prevBbox(ListBuilder<num>? prevBbox) => _$this._prevBbox = prevBbox;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  QualityBuilder? _quality;
  QualityBuilder get quality => _$this._quality ??= QualityBuilder();
  set quality(QualityBuilder? quality) => _$this._quality = quality;

  bool? _leftFilter;
  bool? get leftFilter => _$this._leftFilter;
  set leftFilter(bool? leftFilter) => _$this._leftFilter = leftFilter;

  LiveEventBuilder() {
    LiveEvent._defaults(this);
  }

  LiveEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _observedAt = $v.observedAt;
      _validUntil = $v.validUntil;
      _version = $v.version;
      _geometry = $v.geometry?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _prevBbox = $v.prevBbox?.toBuilder();
      _properties = $v.properties?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _leftFilter = $v.leftFilter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveEvent other) {
    _$v = other as _$LiveEvent;
  }

  @override
  void update(void Function(LiveEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LiveEvent build() => _build();

  _$LiveEvent _build() {
    _$LiveEvent _$result;
    try {
      _$result =
          _$v ??
          _$LiveEvent._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'LiveEvent',
              'sourceId',
            ),
            externalId: BuiltValueNullFieldError.checkNotNull(
              externalId,
              r'LiveEvent',
              'externalId',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'LiveEvent',
              'kind',
            ),
            observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt,
              r'LiveEvent',
              'observedAt',
            ),
            validUntil: validUntil,
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'LiveEvent',
              'version',
            ),
            geometry: _geometry?.build(),
            bbox: _bbox?.build(),
            prevBbox: _prevBbox?.build(),
            properties: _properties?.build(),
            quality: _quality?.build(),
            leftFilter: leftFilter,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'prevBbox';
        _prevBbox?.build();
        _$failedField = 'properties';
        _properties?.build();
        _$failedField = 'quality';
        _quality?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LiveEvent',
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
