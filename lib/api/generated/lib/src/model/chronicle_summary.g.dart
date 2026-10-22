// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSummary extends ChronicleSummary {
  @override
  final String chronicleId;
  @override
  final TimeRange span;
  @override
  final BuiltList<ChronicleSummaryLayersInner> layers;
  @override
  final BuiltList<ChronicleSummaryTopEntitiesInner>? topEntities;
  @override
  final BuiltList<ObjectEnvelope>? situations;
  @override
  final BuiltList<ObjectEnvelope>? hypothesisSets;
  @override
  final BuiltList<ObjectEnvelope>? forecasts;
  @override
  final ChronicleSummaryStorage storage;
  @override
  final BuiltList<ChronicleSummaryGapsInner> gaps;

  factory _$ChronicleSummary([
    void Function(ChronicleSummaryBuilder)? updates,
  ]) => (ChronicleSummaryBuilder()..update(updates))._build();

  _$ChronicleSummary._({
    required this.chronicleId,
    required this.span,
    required this.layers,
    this.topEntities,
    this.situations,
    this.hypothesisSets,
    this.forecasts,
    required this.storage,
    required this.gaps,
  }) : super._();
  @override
  ChronicleSummary rebuild(void Function(ChronicleSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSummaryBuilder toBuilder() =>
      ChronicleSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSummary &&
        chronicleId == other.chronicleId &&
        span == other.span &&
        layers == other.layers &&
        topEntities == other.topEntities &&
        situations == other.situations &&
        hypothesisSets == other.hypothesisSets &&
        forecasts == other.forecasts &&
        storage == other.storage &&
        gaps == other.gaps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, span.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, topEntities.hashCode);
    _$hash = $jc(_$hash, situations.hashCode);
    _$hash = $jc(_$hash, hypothesisSets.hashCode);
    _$hash = $jc(_$hash, forecasts.hashCode);
    _$hash = $jc(_$hash, storage.hashCode);
    _$hash = $jc(_$hash, gaps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSummary')
          ..add('chronicleId', chronicleId)
          ..add('span', span)
          ..add('layers', layers)
          ..add('topEntities', topEntities)
          ..add('situations', situations)
          ..add('hypothesisSets', hypothesisSets)
          ..add('forecasts', forecasts)
          ..add('storage', storage)
          ..add('gaps', gaps))
        .toString();
  }
}

class ChronicleSummaryBuilder
    implements Builder<ChronicleSummary, ChronicleSummaryBuilder> {
  _$ChronicleSummary? _$v;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  TimeRangeBuilder? _span;
  TimeRangeBuilder get span => _$this._span ??= TimeRangeBuilder();
  set span(TimeRangeBuilder? span) => _$this._span = span;

  ListBuilder<ChronicleSummaryLayersInner>? _layers;
  ListBuilder<ChronicleSummaryLayersInner> get layers =>
      _$this._layers ??= ListBuilder<ChronicleSummaryLayersInner>();
  set layers(ListBuilder<ChronicleSummaryLayersInner>? layers) =>
      _$this._layers = layers;

  ListBuilder<ChronicleSummaryTopEntitiesInner>? _topEntities;
  ListBuilder<ChronicleSummaryTopEntitiesInner> get topEntities =>
      _$this._topEntities ??= ListBuilder<ChronicleSummaryTopEntitiesInner>();
  set topEntities(ListBuilder<ChronicleSummaryTopEntitiesInner>? topEntities) =>
      _$this._topEntities = topEntities;

  ListBuilder<ObjectEnvelope>? _situations;
  ListBuilder<ObjectEnvelope> get situations =>
      _$this._situations ??= ListBuilder<ObjectEnvelope>();
  set situations(ListBuilder<ObjectEnvelope>? situations) =>
      _$this._situations = situations;

  ListBuilder<ObjectEnvelope>? _hypothesisSets;
  ListBuilder<ObjectEnvelope> get hypothesisSets =>
      _$this._hypothesisSets ??= ListBuilder<ObjectEnvelope>();
  set hypothesisSets(ListBuilder<ObjectEnvelope>? hypothesisSets) =>
      _$this._hypothesisSets = hypothesisSets;

  ListBuilder<ObjectEnvelope>? _forecasts;
  ListBuilder<ObjectEnvelope> get forecasts =>
      _$this._forecasts ??= ListBuilder<ObjectEnvelope>();
  set forecasts(ListBuilder<ObjectEnvelope>? forecasts) =>
      _$this._forecasts = forecasts;

  ChronicleSummaryStorageBuilder? _storage;
  ChronicleSummaryStorageBuilder get storage =>
      _$this._storage ??= ChronicleSummaryStorageBuilder();
  set storage(ChronicleSummaryStorageBuilder? storage) =>
      _$this._storage = storage;

  ListBuilder<ChronicleSummaryGapsInner>? _gaps;
  ListBuilder<ChronicleSummaryGapsInner> get gaps =>
      _$this._gaps ??= ListBuilder<ChronicleSummaryGapsInner>();
  set gaps(ListBuilder<ChronicleSummaryGapsInner>? gaps) => _$this._gaps = gaps;

  ChronicleSummaryBuilder() {
    ChronicleSummary._defaults(this);
  }

  ChronicleSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronicleId = $v.chronicleId;
      _span = $v.span.toBuilder();
      _layers = $v.layers.toBuilder();
      _topEntities = $v.topEntities?.toBuilder();
      _situations = $v.situations?.toBuilder();
      _hypothesisSets = $v.hypothesisSets?.toBuilder();
      _forecasts = $v.forecasts?.toBuilder();
      _storage = $v.storage.toBuilder();
      _gaps = $v.gaps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSummary other) {
    _$v = other as _$ChronicleSummary;
  }

  @override
  void update(void Function(ChronicleSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSummary build() => _build();

  _$ChronicleSummary _build() {
    _$ChronicleSummary _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleSummary._(
            chronicleId: BuiltValueNullFieldError.checkNotNull(
              chronicleId,
              r'ChronicleSummary',
              'chronicleId',
            ),
            span: span.build(),
            layers: layers.build(),
            topEntities: _topEntities?.build(),
            situations: _situations?.build(),
            hypothesisSets: _hypothesisSets?.build(),
            forecasts: _forecasts?.build(),
            storage: storage.build(),
            gaps: gaps.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'span';
        span.build();
        _$failedField = 'layers';
        layers.build();
        _$failedField = 'topEntities';
        _topEntities?.build();
        _$failedField = 'situations';
        _situations?.build();
        _$failedField = 'hypothesisSets';
        _hypothesisSets?.build();
        _$failedField = 'forecasts';
        _forecasts?.build();
        _$failedField = 'storage';
        storage.build();
        _$failedField = 'gaps';
        gaps.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleSummary',
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
