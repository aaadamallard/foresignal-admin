// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_relevance_analysis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceRelevanceAnalysis extends SourceRelevanceAnalysis {
  @override
  final bool advisory;
  @override
  final String? summary;
  @override
  final BuiltList<SourceRelevance> sources;
  @override
  final SourceRelevanceAnalysisShared shared;
  @override
  final String? model;
  @override
  final SourceRelevanceAnalysisTemplate template;

  factory _$SourceRelevanceAnalysis([
    void Function(SourceRelevanceAnalysisBuilder)? updates,
  ]) => (SourceRelevanceAnalysisBuilder()..update(updates))._build();

  _$SourceRelevanceAnalysis._({
    required this.advisory,
    this.summary,
    required this.sources,
    required this.shared,
    this.model,
    required this.template,
  }) : super._();
  @override
  SourceRelevanceAnalysis rebuild(
    void Function(SourceRelevanceAnalysisBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SourceRelevanceAnalysisBuilder toBuilder() =>
      SourceRelevanceAnalysisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceRelevanceAnalysis &&
        advisory == other.advisory &&
        summary == other.summary &&
        sources == other.sources &&
        shared == other.shared &&
        model == other.model &&
        template == other.template;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, advisory.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, shared.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, template.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceRelevanceAnalysis')
          ..add('advisory', advisory)
          ..add('summary', summary)
          ..add('sources', sources)
          ..add('shared', shared)
          ..add('model', model)
          ..add('template', template))
        .toString();
  }
}

class SourceRelevanceAnalysisBuilder
    implements
        Builder<SourceRelevanceAnalysis, SourceRelevanceAnalysisBuilder> {
  _$SourceRelevanceAnalysis? _$v;

  bool? _advisory;
  bool? get advisory => _$this._advisory;
  set advisory(bool? advisory) => _$this._advisory = advisory;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  ListBuilder<SourceRelevance>? _sources;
  ListBuilder<SourceRelevance> get sources =>
      _$this._sources ??= ListBuilder<SourceRelevance>();
  set sources(ListBuilder<SourceRelevance>? sources) =>
      _$this._sources = sources;

  SourceRelevanceAnalysisSharedBuilder? _shared;
  SourceRelevanceAnalysisSharedBuilder get shared =>
      _$this._shared ??= SourceRelevanceAnalysisSharedBuilder();
  set shared(SourceRelevanceAnalysisSharedBuilder? shared) =>
      _$this._shared = shared;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  SourceRelevanceAnalysisTemplateBuilder? _template;
  SourceRelevanceAnalysisTemplateBuilder get template =>
      _$this._template ??= SourceRelevanceAnalysisTemplateBuilder();
  set template(SourceRelevanceAnalysisTemplateBuilder? template) =>
      _$this._template = template;

  SourceRelevanceAnalysisBuilder() {
    SourceRelevanceAnalysis._defaults(this);
  }

  SourceRelevanceAnalysisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _advisory = $v.advisory;
      _summary = $v.summary;
      _sources = $v.sources.toBuilder();
      _shared = $v.shared.toBuilder();
      _model = $v.model;
      _template = $v.template.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceRelevanceAnalysis other) {
    _$v = other as _$SourceRelevanceAnalysis;
  }

  @override
  void update(void Function(SourceRelevanceAnalysisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceRelevanceAnalysis build() => _build();

  _$SourceRelevanceAnalysis _build() {
    _$SourceRelevanceAnalysis _$result;
    try {
      _$result =
          _$v ??
          _$SourceRelevanceAnalysis._(
            advisory: BuiltValueNullFieldError.checkNotNull(
              advisory,
              r'SourceRelevanceAnalysis',
              'advisory',
            ),
            summary: summary,
            sources: sources.build(),
            shared: shared.build(),
            model: model,
            template: template.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
        _$failedField = 'shared';
        shared.build();

        _$failedField = 'template';
        template.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SourceRelevanceAnalysis',
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
