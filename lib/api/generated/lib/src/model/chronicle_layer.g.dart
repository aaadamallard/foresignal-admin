// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_layer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleLayer extends ChronicleLayer {
  @override
  final String id;
  @override
  final String chronicleId;
  @override
  final String name;
  @override
  final JsonObject? selector;
  @override
  final ChronicleArea? areaOverride;
  @override
  final CaptureMode capture;
  @override
  final CaptureMode? effectiveCapture;
  @override
  final bool enabled;
  @override
  final DateTime addedAt;
  @override
  final int? addedAtSeq;
  @override
  final DateTime? removedAt;
  @override
  final ChronicleLayerEstimate? estimate;
  @override
  final ChronicleLayerStats? stats;

  factory _$ChronicleLayer([void Function(ChronicleLayerBuilder)? updates]) =>
      (ChronicleLayerBuilder()..update(updates))._build();

  _$ChronicleLayer._(
      {required this.id,
      required this.chronicleId,
      required this.name,
      this.selector,
      this.areaOverride,
      required this.capture,
      this.effectiveCapture,
      required this.enabled,
      required this.addedAt,
      this.addedAtSeq,
      this.removedAt,
      this.estimate,
      this.stats})
      : super._();
  @override
  ChronicleLayer rebuild(void Function(ChronicleLayerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleLayerBuilder toBuilder() => ChronicleLayerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleLayer &&
        id == other.id &&
        chronicleId == other.chronicleId &&
        name == other.name &&
        selector == other.selector &&
        areaOverride == other.areaOverride &&
        capture == other.capture &&
        effectiveCapture == other.effectiveCapture &&
        enabled == other.enabled &&
        addedAt == other.addedAt &&
        addedAtSeq == other.addedAtSeq &&
        removedAt == other.removedAt &&
        estimate == other.estimate &&
        stats == other.stats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jc(_$hash, areaOverride.hashCode);
    _$hash = $jc(_$hash, capture.hashCode);
    _$hash = $jc(_$hash, effectiveCapture.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, addedAtSeq.hashCode);
    _$hash = $jc(_$hash, removedAt.hashCode);
    _$hash = $jc(_$hash, estimate.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleLayer')
          ..add('id', id)
          ..add('chronicleId', chronicleId)
          ..add('name', name)
          ..add('selector', selector)
          ..add('areaOverride', areaOverride)
          ..add('capture', capture)
          ..add('effectiveCapture', effectiveCapture)
          ..add('enabled', enabled)
          ..add('addedAt', addedAt)
          ..add('addedAtSeq', addedAtSeq)
          ..add('removedAt', removedAt)
          ..add('estimate', estimate)
          ..add('stats', stats))
        .toString();
  }
}

class ChronicleLayerBuilder
    implements Builder<ChronicleLayer, ChronicleLayerBuilder> {
  _$ChronicleLayer? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonObject? _selector;
  JsonObject? get selector => _$this._selector;
  set selector(JsonObject? selector) => _$this._selector = selector;

  ChronicleAreaBuilder? _areaOverride;
  ChronicleAreaBuilder get areaOverride =>
      _$this._areaOverride ??= ChronicleAreaBuilder();
  set areaOverride(ChronicleAreaBuilder? areaOverride) =>
      _$this._areaOverride = areaOverride;

  CaptureModeBuilder? _capture;
  CaptureModeBuilder get capture => _$this._capture ??= CaptureModeBuilder();
  set capture(CaptureModeBuilder? capture) => _$this._capture = capture;

  CaptureModeBuilder? _effectiveCapture;
  CaptureModeBuilder get effectiveCapture =>
      _$this._effectiveCapture ??= CaptureModeBuilder();
  set effectiveCapture(CaptureModeBuilder? effectiveCapture) =>
      _$this._effectiveCapture = effectiveCapture;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  int? _addedAtSeq;
  int? get addedAtSeq => _$this._addedAtSeq;
  set addedAtSeq(int? addedAtSeq) => _$this._addedAtSeq = addedAtSeq;

  DateTime? _removedAt;
  DateTime? get removedAt => _$this._removedAt;
  set removedAt(DateTime? removedAt) => _$this._removedAt = removedAt;

  ChronicleLayerEstimateBuilder? _estimate;
  ChronicleLayerEstimateBuilder get estimate =>
      _$this._estimate ??= ChronicleLayerEstimateBuilder();
  set estimate(ChronicleLayerEstimateBuilder? estimate) =>
      _$this._estimate = estimate;

  ChronicleLayerStatsBuilder? _stats;
  ChronicleLayerStatsBuilder get stats =>
      _$this._stats ??= ChronicleLayerStatsBuilder();
  set stats(ChronicleLayerStatsBuilder? stats) => _$this._stats = stats;

  ChronicleLayerBuilder() {
    ChronicleLayer._defaults(this);
  }

  ChronicleLayerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _chronicleId = $v.chronicleId;
      _name = $v.name;
      _selector = $v.selector;
      _areaOverride = $v.areaOverride?.toBuilder();
      _capture = $v.capture.toBuilder();
      _effectiveCapture = $v.effectiveCapture?.toBuilder();
      _enabled = $v.enabled;
      _addedAt = $v.addedAt;
      _addedAtSeq = $v.addedAtSeq;
      _removedAt = $v.removedAt;
      _estimate = $v.estimate?.toBuilder();
      _stats = $v.stats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleLayer other) {
    _$v = other as _$ChronicleLayer;
  }

  @override
  void update(void Function(ChronicleLayerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleLayer build() => _build();

  _$ChronicleLayer _build() {
    _$ChronicleLayer _$result;
    try {
      _$result = _$v ??
          _$ChronicleLayer._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ChronicleLayer', 'id'),
            chronicleId: BuiltValueNullFieldError.checkNotNull(
                chronicleId, r'ChronicleLayer', 'chronicleId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChronicleLayer', 'name'),
            selector: selector,
            areaOverride: _areaOverride?.build(),
            capture: capture.build(),
            effectiveCapture: _effectiveCapture?.build(),
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'ChronicleLayer', 'enabled'),
            addedAt: BuiltValueNullFieldError.checkNotNull(
                addedAt, r'ChronicleLayer', 'addedAt'),
            addedAtSeq: addedAtSeq,
            removedAt: removedAt,
            estimate: _estimate?.build(),
            stats: _stats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areaOverride';
        _areaOverride?.build();
        _$failedField = 'capture';
        capture.build();
        _$failedField = 'effectiveCapture';
        _effectiveCapture?.build();

        _$failedField = 'estimate';
        _estimate?.build();
        _$failedField = 'stats';
        _stats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleLayer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
