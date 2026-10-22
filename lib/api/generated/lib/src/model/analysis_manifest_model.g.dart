// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_manifest_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisManifestModel extends AnalysisManifestModel {
  @override
  final String provider;
  @override
  final String model;
  @override
  final String? effort;
  @override
  final String? promptHash;
  @override
  final String? toolsHash;
  @override
  final int? samples;
  @override
  final BuiltList<AnalysisManifestModelTemplatesInner>? templates;

  factory _$AnalysisManifestModel([
    void Function(AnalysisManifestModelBuilder)? updates,
  ]) => (AnalysisManifestModelBuilder()..update(updates))._build();

  _$AnalysisManifestModel._({
    required this.provider,
    required this.model,
    this.effort,
    this.promptHash,
    this.toolsHash,
    this.samples,
    this.templates,
  }) : super._();
  @override
  AnalysisManifestModel rebuild(
    void Function(AnalysisManifestModelBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalysisManifestModelBuilder toBuilder() =>
      AnalysisManifestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisManifestModel &&
        provider == other.provider &&
        model == other.model &&
        effort == other.effort &&
        promptHash == other.promptHash &&
        toolsHash == other.toolsHash &&
        samples == other.samples &&
        templates == other.templates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, effort.hashCode);
    _$hash = $jc(_$hash, promptHash.hashCode);
    _$hash = $jc(_$hash, toolsHash.hashCode);
    _$hash = $jc(_$hash, samples.hashCode);
    _$hash = $jc(_$hash, templates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisManifestModel')
          ..add('provider', provider)
          ..add('model', model)
          ..add('effort', effort)
          ..add('promptHash', promptHash)
          ..add('toolsHash', toolsHash)
          ..add('samples', samples)
          ..add('templates', templates))
        .toString();
  }
}

class AnalysisManifestModelBuilder
    implements Builder<AnalysisManifestModel, AnalysisManifestModelBuilder> {
  _$AnalysisManifestModel? _$v;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _effort;
  String? get effort => _$this._effort;
  set effort(String? effort) => _$this._effort = effort;

  String? _promptHash;
  String? get promptHash => _$this._promptHash;
  set promptHash(String? promptHash) => _$this._promptHash = promptHash;

  String? _toolsHash;
  String? get toolsHash => _$this._toolsHash;
  set toolsHash(String? toolsHash) => _$this._toolsHash = toolsHash;

  int? _samples;
  int? get samples => _$this._samples;
  set samples(int? samples) => _$this._samples = samples;

  ListBuilder<AnalysisManifestModelTemplatesInner>? _templates;
  ListBuilder<AnalysisManifestModelTemplatesInner> get templates =>
      _$this._templates ??= ListBuilder<AnalysisManifestModelTemplatesInner>();
  set templates(ListBuilder<AnalysisManifestModelTemplatesInner>? templates) =>
      _$this._templates = templates;

  AnalysisManifestModelBuilder() {
    AnalysisManifestModel._defaults(this);
  }

  AnalysisManifestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _model = $v.model;
      _effort = $v.effort;
      _promptHash = $v.promptHash;
      _toolsHash = $v.toolsHash;
      _samples = $v.samples;
      _templates = $v.templates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisManifestModel other) {
    _$v = other as _$AnalysisManifestModel;
  }

  @override
  void update(void Function(AnalysisManifestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisManifestModel build() => _build();

  _$AnalysisManifestModel _build() {
    _$AnalysisManifestModel _$result;
    try {
      _$result =
          _$v ??
          _$AnalysisManifestModel._(
            provider: BuiltValueNullFieldError.checkNotNull(
              provider,
              r'AnalysisManifestModel',
              'provider',
            ),
            model: BuiltValueNullFieldError.checkNotNull(
              model,
              r'AnalysisManifestModel',
              'model',
            ),
            effort: effort,
            promptHash: promptHash,
            toolsHash: toolsHash,
            samples: samples,
            templates: _templates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'templates';
        _templates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalysisManifestModel',
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
