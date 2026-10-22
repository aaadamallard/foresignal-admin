// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContextSummary extends ContextSummary {
  @override
  final ContextSummaryRequest? context;
  @override
  final DateTime generatedAt;
  @override
  final int? cacheAgeSeconds;
  @override
  final BuiltList<ContextSummaryLayerCountsInner> layerCounts;
  @override
  final BuiltList<ContextSummaryActivityInner> activity;
  @override
  final BuiltList<ContextSummaryInsightsInner> insights;
  @override
  final BuiltList<ObjectEnvelope> related;
  @override
  final ContextSummaryNarrative? narrative;
  @override
  final bool? truncated;

  factory _$ContextSummary([void Function(ContextSummaryBuilder)? updates]) =>
      (ContextSummaryBuilder()..update(updates))._build();

  _$ContextSummary._({
    this.context,
    required this.generatedAt,
    this.cacheAgeSeconds,
    required this.layerCounts,
    required this.activity,
    required this.insights,
    required this.related,
    this.narrative,
    this.truncated,
  }) : super._();
  @override
  ContextSummary rebuild(void Function(ContextSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContextSummaryBuilder toBuilder() => ContextSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextSummary &&
        context == other.context &&
        generatedAt == other.generatedAt &&
        cacheAgeSeconds == other.cacheAgeSeconds &&
        layerCounts == other.layerCounts &&
        activity == other.activity &&
        insights == other.insights &&
        related == other.related &&
        narrative == other.narrative &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, cacheAgeSeconds.hashCode);
    _$hash = $jc(_$hash, layerCounts.hashCode);
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jc(_$hash, insights.hashCode);
    _$hash = $jc(_$hash, related.hashCode);
    _$hash = $jc(_$hash, narrative.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextSummary')
          ..add('context', context)
          ..add('generatedAt', generatedAt)
          ..add('cacheAgeSeconds', cacheAgeSeconds)
          ..add('layerCounts', layerCounts)
          ..add('activity', activity)
          ..add('insights', insights)
          ..add('related', related)
          ..add('narrative', narrative)
          ..add('truncated', truncated))
        .toString();
  }
}

class ContextSummaryBuilder
    implements Builder<ContextSummary, ContextSummaryBuilder> {
  _$ContextSummary? _$v;

  ContextSummaryRequestBuilder? _context;
  ContextSummaryRequestBuilder get context =>
      _$this._context ??= ContextSummaryRequestBuilder();
  set context(ContextSummaryRequestBuilder? context) =>
      _$this._context = context;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  int? _cacheAgeSeconds;
  int? get cacheAgeSeconds => _$this._cacheAgeSeconds;
  set cacheAgeSeconds(int? cacheAgeSeconds) =>
      _$this._cacheAgeSeconds = cacheAgeSeconds;

  ListBuilder<ContextSummaryLayerCountsInner>? _layerCounts;
  ListBuilder<ContextSummaryLayerCountsInner> get layerCounts =>
      _$this._layerCounts ??= ListBuilder<ContextSummaryLayerCountsInner>();
  set layerCounts(ListBuilder<ContextSummaryLayerCountsInner>? layerCounts) =>
      _$this._layerCounts = layerCounts;

  ListBuilder<ContextSummaryActivityInner>? _activity;
  ListBuilder<ContextSummaryActivityInner> get activity =>
      _$this._activity ??= ListBuilder<ContextSummaryActivityInner>();
  set activity(ListBuilder<ContextSummaryActivityInner>? activity) =>
      _$this._activity = activity;

  ListBuilder<ContextSummaryInsightsInner>? _insights;
  ListBuilder<ContextSummaryInsightsInner> get insights =>
      _$this._insights ??= ListBuilder<ContextSummaryInsightsInner>();
  set insights(ListBuilder<ContextSummaryInsightsInner>? insights) =>
      _$this._insights = insights;

  ListBuilder<ObjectEnvelope>? _related;
  ListBuilder<ObjectEnvelope> get related =>
      _$this._related ??= ListBuilder<ObjectEnvelope>();
  set related(ListBuilder<ObjectEnvelope>? related) =>
      _$this._related = related;

  ContextSummaryNarrativeBuilder? _narrative;
  ContextSummaryNarrativeBuilder get narrative =>
      _$this._narrative ??= ContextSummaryNarrativeBuilder();
  set narrative(ContextSummaryNarrativeBuilder? narrative) =>
      _$this._narrative = narrative;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  ContextSummaryBuilder() {
    ContextSummary._defaults(this);
  }

  ContextSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _context = $v.context?.toBuilder();
      _generatedAt = $v.generatedAt;
      _cacheAgeSeconds = $v.cacheAgeSeconds;
      _layerCounts = $v.layerCounts.toBuilder();
      _activity = $v.activity.toBuilder();
      _insights = $v.insights.toBuilder();
      _related = $v.related.toBuilder();
      _narrative = $v.narrative?.toBuilder();
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextSummary other) {
    _$v = other as _$ContextSummary;
  }

  @override
  void update(void Function(ContextSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextSummary build() => _build();

  _$ContextSummary _build() {
    _$ContextSummary _$result;
    try {
      _$result =
          _$v ??
          _$ContextSummary._(
            context: _context?.build(),
            generatedAt: BuiltValueNullFieldError.checkNotNull(
              generatedAt,
              r'ContextSummary',
              'generatedAt',
            ),
            cacheAgeSeconds: cacheAgeSeconds,
            layerCounts: layerCounts.build(),
            activity: activity.build(),
            insights: insights.build(),
            related: related.build(),
            narrative: _narrative?.build(),
            truncated: truncated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'context';
        _context?.build();

        _$failedField = 'layerCounts';
        layerCounts.build();
        _$failedField = 'activity';
        activity.build();
        _$failedField = 'insights';
        insights.build();
        _$failedField = 'related';
        related.build();
        _$failedField = 'narrative';
        _narrative?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ContextSummary',
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
