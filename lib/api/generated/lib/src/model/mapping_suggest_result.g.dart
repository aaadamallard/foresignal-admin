// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_suggest_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingSuggestResult extends MappingSuggestResult {
  @override
  final RecordMapping draft;
  @override
  final String explanation;
  @override
  final BuiltList<MappingWarning> warnings;
  @override
  final MappingPreviewResult? preview;
  @override
  final int? repairRounds;
  @override
  final String provider;
  @override
  final String model;

  factory _$MappingSuggestResult([
    void Function(MappingSuggestResultBuilder)? updates,
  ]) => (MappingSuggestResultBuilder()..update(updates))._build();

  _$MappingSuggestResult._({
    required this.draft,
    required this.explanation,
    required this.warnings,
    this.preview,
    this.repairRounds,
    required this.provider,
    required this.model,
  }) : super._();
  @override
  MappingSuggestResult rebuild(
    void Function(MappingSuggestResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MappingSuggestResultBuilder toBuilder() =>
      MappingSuggestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingSuggestResult &&
        draft == other.draft &&
        explanation == other.explanation &&
        warnings == other.warnings &&
        preview == other.preview &&
        repairRounds == other.repairRounds &&
        provider == other.provider &&
        model == other.model;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, draft.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, preview.hashCode);
    _$hash = $jc(_$hash, repairRounds.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingSuggestResult')
          ..add('draft', draft)
          ..add('explanation', explanation)
          ..add('warnings', warnings)
          ..add('preview', preview)
          ..add('repairRounds', repairRounds)
          ..add('provider', provider)
          ..add('model', model))
        .toString();
  }
}

class MappingSuggestResultBuilder
    implements Builder<MappingSuggestResult, MappingSuggestResultBuilder> {
  _$MappingSuggestResult? _$v;

  RecordMappingBuilder? _draft;
  RecordMappingBuilder get draft => _$this._draft ??= RecordMappingBuilder();
  set draft(RecordMappingBuilder? draft) => _$this._draft = draft;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  ListBuilder<MappingWarning>? _warnings;
  ListBuilder<MappingWarning> get warnings =>
      _$this._warnings ??= ListBuilder<MappingWarning>();
  set warnings(ListBuilder<MappingWarning>? warnings) =>
      _$this._warnings = warnings;

  MappingPreviewResultBuilder? _preview;
  MappingPreviewResultBuilder get preview =>
      _$this._preview ??= MappingPreviewResultBuilder();
  set preview(MappingPreviewResultBuilder? preview) =>
      _$this._preview = preview;

  int? _repairRounds;
  int? get repairRounds => _$this._repairRounds;
  set repairRounds(int? repairRounds) => _$this._repairRounds = repairRounds;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  MappingSuggestResultBuilder() {
    MappingSuggestResult._defaults(this);
  }

  MappingSuggestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _draft = $v.draft.toBuilder();
      _explanation = $v.explanation;
      _warnings = $v.warnings.toBuilder();
      _preview = $v.preview?.toBuilder();
      _repairRounds = $v.repairRounds;
      _provider = $v.provider;
      _model = $v.model;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingSuggestResult other) {
    _$v = other as _$MappingSuggestResult;
  }

  @override
  void update(void Function(MappingSuggestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingSuggestResult build() => _build();

  _$MappingSuggestResult _build() {
    _$MappingSuggestResult _$result;
    try {
      _$result =
          _$v ??
          _$MappingSuggestResult._(
            draft: draft.build(),
            explanation: BuiltValueNullFieldError.checkNotNull(
              explanation,
              r'MappingSuggestResult',
              'explanation',
            ),
            warnings: warnings.build(),
            preview: _preview?.build(),
            repairRounds: repairRounds,
            provider: BuiltValueNullFieldError.checkNotNull(
              provider,
              r'MappingSuggestResult',
              'provider',
            ),
            model: BuiltValueNullFieldError.checkNotNull(
              model,
              r'MappingSuggestResult',
              'model',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'draft';
        draft.build();

        _$failedField = 'warnings';
        warnings.build();
        _$failedField = 'preview';
        _preview?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MappingSuggestResult',
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
