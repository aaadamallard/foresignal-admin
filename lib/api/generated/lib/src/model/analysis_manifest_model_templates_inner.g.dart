// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_manifest_model_templates_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisManifestModelTemplatesInner
    extends AnalysisManifestModelTemplatesInner {
  @override
  final String templateId;
  @override
  final String version;

  factory _$AnalysisManifestModelTemplatesInner([
    void Function(AnalysisManifestModelTemplatesInnerBuilder)? updates,
  ]) =>
      (AnalysisManifestModelTemplatesInnerBuilder()..update(updates))._build();

  _$AnalysisManifestModelTemplatesInner._({
    required this.templateId,
    required this.version,
  }) : super._();
  @override
  AnalysisManifestModelTemplatesInner rebuild(
    void Function(AnalysisManifestModelTemplatesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalysisManifestModelTemplatesInnerBuilder toBuilder() =>
      AnalysisManifestModelTemplatesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisManifestModelTemplatesInner &&
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
    return (newBuiltValueToStringHelper(r'AnalysisManifestModelTemplatesInner')
          ..add('templateId', templateId)
          ..add('version', version))
        .toString();
  }
}

class AnalysisManifestModelTemplatesInnerBuilder
    implements
        Builder<
          AnalysisManifestModelTemplatesInner,
          AnalysisManifestModelTemplatesInnerBuilder
        > {
  _$AnalysisManifestModelTemplatesInner? _$v;

  String? _templateId;
  String? get templateId => _$this._templateId;
  set templateId(String? templateId) => _$this._templateId = templateId;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  AnalysisManifestModelTemplatesInnerBuilder() {
    AnalysisManifestModelTemplatesInner._defaults(this);
  }

  AnalysisManifestModelTemplatesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateId = $v.templateId;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisManifestModelTemplatesInner other) {
    _$v = other as _$AnalysisManifestModelTemplatesInner;
  }

  @override
  void update(
    void Function(AnalysisManifestModelTemplatesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisManifestModelTemplatesInner build() => _build();

  _$AnalysisManifestModelTemplatesInner _build() {
    final _$result =
        _$v ??
        _$AnalysisManifestModelTemplatesInner._(
          templateId: BuiltValueNullFieldError.checkNotNull(
            templateId,
            r'AnalysisManifestModelTemplatesInner',
            'templateId',
          ),
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'AnalysisManifestModelTemplatesInner',
            'version',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
