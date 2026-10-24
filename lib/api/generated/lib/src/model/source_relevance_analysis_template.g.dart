// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_relevance_analysis_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceRelevanceAnalysisTemplate
    extends SourceRelevanceAnalysisTemplate {
  @override
  final String templateId;
  @override
  final String version;

  factory _$SourceRelevanceAnalysisTemplate([
    void Function(SourceRelevanceAnalysisTemplateBuilder)? updates,
  ]) => (SourceRelevanceAnalysisTemplateBuilder()..update(updates))._build();

  _$SourceRelevanceAnalysisTemplate._({
    required this.templateId,
    required this.version,
  }) : super._();
  @override
  SourceRelevanceAnalysisTemplate rebuild(
    void Function(SourceRelevanceAnalysisTemplateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SourceRelevanceAnalysisTemplateBuilder toBuilder() =>
      SourceRelevanceAnalysisTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceRelevanceAnalysisTemplate &&
        templateId == other.templateId &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceRelevanceAnalysisTemplate')
          ..add('templateId', templateId)
          ..add('version', version))
        .toString();
  }
}

class SourceRelevanceAnalysisTemplateBuilder
    implements
        Builder<
          SourceRelevanceAnalysisTemplate,
          SourceRelevanceAnalysisTemplateBuilder
        > {
  _$SourceRelevanceAnalysisTemplate? _$v;

  String? _templateId;
  String? get templateId => _$this._templateId;
  set templateId(String? templateId) => _$this._templateId = templateId;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  SourceRelevanceAnalysisTemplateBuilder() {
    SourceRelevanceAnalysisTemplate._defaults(this);
  }

  SourceRelevanceAnalysisTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateId = $v.templateId;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceRelevanceAnalysisTemplate other) {
    _$v = other as _$SourceRelevanceAnalysisTemplate;
  }

  @override
  void update(void Function(SourceRelevanceAnalysisTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceRelevanceAnalysisTemplate build() => _build();

  _$SourceRelevanceAnalysisTemplate _build() {
    final _$result =
        _$v ??
        _$SourceRelevanceAnalysisTemplate._(
          templateId: BuiltValueNullFieldError.checkNotNull(
            templateId,
            r'SourceRelevanceAnalysisTemplate',
            'templateId',
          ),
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'SourceRelevanceAnalysisTemplate',
            'version',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
