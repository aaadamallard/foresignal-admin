// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_inference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationInference extends SituationInference {
  @override
  final String summary;
  @override
  final String? summaryTemplateVersion;
  @override
  final String statusBasis;
  @override
  final String severityBasis;
  @override
  final DetectorRef? linker;
  @override
  final String? manifestId;

  factory _$SituationInference(
          [void Function(SituationInferenceBuilder)? updates]) =>
      (SituationInferenceBuilder()..update(updates))._build();

  _$SituationInference._(
      {required this.summary,
      this.summaryTemplateVersion,
      required this.statusBasis,
      required this.severityBasis,
      this.linker,
      this.manifestId})
      : super._();
  @override
  SituationInference rebuild(
          void Function(SituationInferenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationInferenceBuilder toBuilder() =>
      SituationInferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationInference &&
        summary == other.summary &&
        summaryTemplateVersion == other.summaryTemplateVersion &&
        statusBasis == other.statusBasis &&
        severityBasis == other.severityBasis &&
        linker == other.linker &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, summaryTemplateVersion.hashCode);
    _$hash = $jc(_$hash, statusBasis.hashCode);
    _$hash = $jc(_$hash, severityBasis.hashCode);
    _$hash = $jc(_$hash, linker.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationInference')
          ..add('summary', summary)
          ..add('summaryTemplateVersion', summaryTemplateVersion)
          ..add('statusBasis', statusBasis)
          ..add('severityBasis', severityBasis)
          ..add('linker', linker)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class SituationInferenceBuilder
    implements Builder<SituationInference, SituationInferenceBuilder> {
  _$SituationInference? _$v;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _summaryTemplateVersion;
  String? get summaryTemplateVersion => _$this._summaryTemplateVersion;
  set summaryTemplateVersion(String? summaryTemplateVersion) =>
      _$this._summaryTemplateVersion = summaryTemplateVersion;

  String? _statusBasis;
  String? get statusBasis => _$this._statusBasis;
  set statusBasis(String? statusBasis) => _$this._statusBasis = statusBasis;

  String? _severityBasis;
  String? get severityBasis => _$this._severityBasis;
  set severityBasis(String? severityBasis) =>
      _$this._severityBasis = severityBasis;

  DetectorRefBuilder? _linker;
  DetectorRefBuilder get linker => _$this._linker ??= DetectorRefBuilder();
  set linker(DetectorRefBuilder? linker) => _$this._linker = linker;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  SituationInferenceBuilder() {
    SituationInference._defaults(this);
  }

  SituationInferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summary = $v.summary;
      _summaryTemplateVersion = $v.summaryTemplateVersion;
      _statusBasis = $v.statusBasis;
      _severityBasis = $v.severityBasis;
      _linker = $v.linker?.toBuilder();
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationInference other) {
    _$v = other as _$SituationInference;
  }

  @override
  void update(void Function(SituationInferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationInference build() => _build();

  _$SituationInference _build() {
    _$SituationInference _$result;
    try {
      _$result = _$v ??
          _$SituationInference._(
            summary: BuiltValueNullFieldError.checkNotNull(
                summary, r'SituationInference', 'summary'),
            summaryTemplateVersion: summaryTemplateVersion,
            statusBasis: BuiltValueNullFieldError.checkNotNull(
                statusBasis, r'SituationInference', 'statusBasis'),
            severityBasis: BuiltValueNullFieldError.checkNotNull(
                severityBasis, r'SituationInference', 'severityBasis'),
            linker: _linker?.build(),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linker';
        _linker?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationInference', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
