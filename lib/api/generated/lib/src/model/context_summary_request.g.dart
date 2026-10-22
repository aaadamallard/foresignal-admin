// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_summary_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContextSummaryRequest extends ContextSummaryRequest {
  @override
  final WorkspaceViewport viewport;
  @override
  final TimeRange timeRange;
  @override
  final DateTime? asOf;
  @override
  final BuiltMap<String, JsonObject?>? filters;
  @override
  final BuiltList<String>? layers;

  factory _$ContextSummaryRequest(
          [void Function(ContextSummaryRequestBuilder)? updates]) =>
      (ContextSummaryRequestBuilder()..update(updates))._build();

  _$ContextSummaryRequest._(
      {required this.viewport,
      required this.timeRange,
      this.asOf,
      this.filters,
      this.layers})
      : super._();
  @override
  ContextSummaryRequest rebuild(
          void Function(ContextSummaryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContextSummaryRequestBuilder toBuilder() =>
      ContextSummaryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextSummaryRequest &&
        viewport == other.viewport &&
        timeRange == other.timeRange &&
        asOf == other.asOf &&
        filters == other.filters &&
        layers == other.layers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, viewport.hashCode);
    _$hash = $jc(_$hash, timeRange.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextSummaryRequest')
          ..add('viewport', viewport)
          ..add('timeRange', timeRange)
          ..add('asOf', asOf)
          ..add('filters', filters)
          ..add('layers', layers))
        .toString();
  }
}

class ContextSummaryRequestBuilder
    implements Builder<ContextSummaryRequest, ContextSummaryRequestBuilder> {
  _$ContextSummaryRequest? _$v;

  WorkspaceViewportBuilder? _viewport;
  WorkspaceViewportBuilder get viewport =>
      _$this._viewport ??= WorkspaceViewportBuilder();
  set viewport(WorkspaceViewportBuilder? viewport) =>
      _$this._viewport = viewport;

  TimeRangeBuilder? _timeRange;
  TimeRangeBuilder get timeRange => _$this._timeRange ??= TimeRangeBuilder();
  set timeRange(TimeRangeBuilder? timeRange) => _$this._timeRange = timeRange;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  MapBuilder<String, JsonObject?>? _filters;
  MapBuilder<String, JsonObject?> get filters =>
      _$this._filters ??= MapBuilder<String, JsonObject?>();
  set filters(MapBuilder<String, JsonObject?>? filters) =>
      _$this._filters = filters;

  ListBuilder<String>? _layers;
  ListBuilder<String> get layers => _$this._layers ??= ListBuilder<String>();
  set layers(ListBuilder<String>? layers) => _$this._layers = layers;

  ContextSummaryRequestBuilder() {
    ContextSummaryRequest._defaults(this);
  }

  ContextSummaryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _viewport = $v.viewport.toBuilder();
      _timeRange = $v.timeRange.toBuilder();
      _asOf = $v.asOf;
      _filters = $v.filters?.toBuilder();
      _layers = $v.layers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextSummaryRequest other) {
    _$v = other as _$ContextSummaryRequest;
  }

  @override
  void update(void Function(ContextSummaryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextSummaryRequest build() => _build();

  _$ContextSummaryRequest _build() {
    _$ContextSummaryRequest _$result;
    try {
      _$result = _$v ??
          _$ContextSummaryRequest._(
            viewport: viewport.build(),
            timeRange: timeRange.build(),
            asOf: asOf,
            filters: _filters?.build(),
            layers: _layers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewport';
        viewport.build();
        _$failedField = 'timeRange';
        timeRange.build();

        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'layers';
        _layers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ContextSummaryRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
