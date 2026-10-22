// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkspaceContext extends WorkspaceContext {
  @override
  final BuiltList<String>? selectedRefs;
  @override
  final String? focusRef;
  @override
  final TimeRange? timeRange;
  @override
  final DateTime? asOf;
  @override
  final WorkspaceContextPlayback? playback;
  @override
  final WorkspaceViewport? viewport;
  @override
  final String? activeSituationId;
  @override
  final String? activeHypothesisSetId;
  @override
  final BuiltMap<String, JsonObject?>? filters;
  @override
  final BuiltList<String>? layers;

  factory _$WorkspaceContext([
    void Function(WorkspaceContextBuilder)? updates,
  ]) => (WorkspaceContextBuilder()..update(updates))._build();

  _$WorkspaceContext._({
    this.selectedRefs,
    this.focusRef,
    this.timeRange,
    this.asOf,
    this.playback,
    this.viewport,
    this.activeSituationId,
    this.activeHypothesisSetId,
    this.filters,
    this.layers,
  }) : super._();
  @override
  WorkspaceContext rebuild(void Function(WorkspaceContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspaceContextBuilder toBuilder() =>
      WorkspaceContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceContext &&
        selectedRefs == other.selectedRefs &&
        focusRef == other.focusRef &&
        timeRange == other.timeRange &&
        asOf == other.asOf &&
        playback == other.playback &&
        viewport == other.viewport &&
        activeSituationId == other.activeSituationId &&
        activeHypothesisSetId == other.activeHypothesisSetId &&
        filters == other.filters &&
        layers == other.layers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedRefs.hashCode);
    _$hash = $jc(_$hash, focusRef.hashCode);
    _$hash = $jc(_$hash, timeRange.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, playback.hashCode);
    _$hash = $jc(_$hash, viewport.hashCode);
    _$hash = $jc(_$hash, activeSituationId.hashCode);
    _$hash = $jc(_$hash, activeHypothesisSetId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspaceContext')
          ..add('selectedRefs', selectedRefs)
          ..add('focusRef', focusRef)
          ..add('timeRange', timeRange)
          ..add('asOf', asOf)
          ..add('playback', playback)
          ..add('viewport', viewport)
          ..add('activeSituationId', activeSituationId)
          ..add('activeHypothesisSetId', activeHypothesisSetId)
          ..add('filters', filters)
          ..add('layers', layers))
        .toString();
  }
}

class WorkspaceContextBuilder
    implements Builder<WorkspaceContext, WorkspaceContextBuilder> {
  _$WorkspaceContext? _$v;

  ListBuilder<String>? _selectedRefs;
  ListBuilder<String> get selectedRefs =>
      _$this._selectedRefs ??= ListBuilder<String>();
  set selectedRefs(ListBuilder<String>? selectedRefs) =>
      _$this._selectedRefs = selectedRefs;

  String? _focusRef;
  String? get focusRef => _$this._focusRef;
  set focusRef(String? focusRef) => _$this._focusRef = focusRef;

  TimeRangeBuilder? _timeRange;
  TimeRangeBuilder get timeRange => _$this._timeRange ??= TimeRangeBuilder();
  set timeRange(TimeRangeBuilder? timeRange) => _$this._timeRange = timeRange;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  WorkspaceContextPlaybackBuilder? _playback;
  WorkspaceContextPlaybackBuilder get playback =>
      _$this._playback ??= WorkspaceContextPlaybackBuilder();
  set playback(WorkspaceContextPlaybackBuilder? playback) =>
      _$this._playback = playback;

  WorkspaceViewportBuilder? _viewport;
  WorkspaceViewportBuilder get viewport =>
      _$this._viewport ??= WorkspaceViewportBuilder();
  set viewport(WorkspaceViewportBuilder? viewport) =>
      _$this._viewport = viewport;

  String? _activeSituationId;
  String? get activeSituationId => _$this._activeSituationId;
  set activeSituationId(String? activeSituationId) =>
      _$this._activeSituationId = activeSituationId;

  String? _activeHypothesisSetId;
  String? get activeHypothesisSetId => _$this._activeHypothesisSetId;
  set activeHypothesisSetId(String? activeHypothesisSetId) =>
      _$this._activeHypothesisSetId = activeHypothesisSetId;

  MapBuilder<String, JsonObject?>? _filters;
  MapBuilder<String, JsonObject?> get filters =>
      _$this._filters ??= MapBuilder<String, JsonObject?>();
  set filters(MapBuilder<String, JsonObject?>? filters) =>
      _$this._filters = filters;

  ListBuilder<String>? _layers;
  ListBuilder<String> get layers => _$this._layers ??= ListBuilder<String>();
  set layers(ListBuilder<String>? layers) => _$this._layers = layers;

  WorkspaceContextBuilder() {
    WorkspaceContext._defaults(this);
  }

  WorkspaceContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedRefs = $v.selectedRefs?.toBuilder();
      _focusRef = $v.focusRef;
      _timeRange = $v.timeRange?.toBuilder();
      _asOf = $v.asOf;
      _playback = $v.playback?.toBuilder();
      _viewport = $v.viewport?.toBuilder();
      _activeSituationId = $v.activeSituationId;
      _activeHypothesisSetId = $v.activeHypothesisSetId;
      _filters = $v.filters?.toBuilder();
      _layers = $v.layers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspaceContext other) {
    _$v = other as _$WorkspaceContext;
  }

  @override
  void update(void Function(WorkspaceContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceContext build() => _build();

  _$WorkspaceContext _build() {
    _$WorkspaceContext _$result;
    try {
      _$result =
          _$v ??
          _$WorkspaceContext._(
            selectedRefs: _selectedRefs?.build(),
            focusRef: focusRef,
            timeRange: _timeRange?.build(),
            asOf: asOf,
            playback: _playback?.build(),
            viewport: _viewport?.build(),
            activeSituationId: activeSituationId,
            activeHypothesisSetId: activeHypothesisSetId,
            filters: _filters?.build(),
            layers: _layers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectedRefs';
        _selectedRefs?.build();

        _$failedField = 'timeRange';
        _timeRange?.build();

        _$failedField = 'playback';
        _playback?.build();
        _$failedField = 'viewport';
        _viewport?.build();

        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'layers';
        _layers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WorkspaceContext',
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
