// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_settings_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslationSettingsInput extends TranslationSettingsInput {
  @override
  final bool enabled;
  @override
  final BuiltSet<String>? targetLanguages;
  @override
  final BuiltSet<String>? fields;
  @override
  final String? engine;
  @override
  final TranslationSettingsInputBudget? budget;
  @override
  final num? minSourceLanguageConfidence;

  factory _$TranslationSettingsInput([
    void Function(TranslationSettingsInputBuilder)? updates,
  ]) => (TranslationSettingsInputBuilder()..update(updates))._build();

  _$TranslationSettingsInput._({
    required this.enabled,
    this.targetLanguages,
    this.fields,
    this.engine,
    this.budget,
    this.minSourceLanguageConfidence,
  }) : super._();
  @override
  TranslationSettingsInput rebuild(
    void Function(TranslationSettingsInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TranslationSettingsInputBuilder toBuilder() =>
      TranslationSettingsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationSettingsInput &&
        enabled == other.enabled &&
        targetLanguages == other.targetLanguages &&
        fields == other.fields &&
        engine == other.engine &&
        budget == other.budget &&
        minSourceLanguageConfidence == other.minSourceLanguageConfidence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, targetLanguages.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, engine.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, minSourceLanguageConfidence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranslationSettingsInput')
          ..add('enabled', enabled)
          ..add('targetLanguages', targetLanguages)
          ..add('fields', fields)
          ..add('engine', engine)
          ..add('budget', budget)
          ..add('minSourceLanguageConfidence', minSourceLanguageConfidence))
        .toString();
  }
}

class TranslationSettingsInputBuilder
    implements
        Builder<TranslationSettingsInput, TranslationSettingsInputBuilder> {
  _$TranslationSettingsInput? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  SetBuilder<String>? _targetLanguages;
  SetBuilder<String> get targetLanguages =>
      _$this._targetLanguages ??= SetBuilder<String>();
  set targetLanguages(SetBuilder<String>? targetLanguages) =>
      _$this._targetLanguages = targetLanguages;

  SetBuilder<String>? _fields;
  SetBuilder<String> get fields => _$this._fields ??= SetBuilder<String>();
  set fields(SetBuilder<String>? fields) => _$this._fields = fields;

  String? _engine;
  String? get engine => _$this._engine;
  set engine(String? engine) => _$this._engine = engine;

  TranslationSettingsInputBudgetBuilder? _budget;
  TranslationSettingsInputBudgetBuilder get budget =>
      _$this._budget ??= TranslationSettingsInputBudgetBuilder();
  set budget(TranslationSettingsInputBudgetBuilder? budget) =>
      _$this._budget = budget;

  num? _minSourceLanguageConfidence;
  num? get minSourceLanguageConfidence => _$this._minSourceLanguageConfidence;
  set minSourceLanguageConfidence(num? minSourceLanguageConfidence) =>
      _$this._minSourceLanguageConfidence = minSourceLanguageConfidence;

  TranslationSettingsInputBuilder() {
    TranslationSettingsInput._defaults(this);
  }

  TranslationSettingsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _targetLanguages = $v.targetLanguages?.toBuilder();
      _fields = $v.fields?.toBuilder();
      _engine = $v.engine;
      _budget = $v.budget?.toBuilder();
      _minSourceLanguageConfidence = $v.minSourceLanguageConfidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationSettingsInput other) {
    _$v = other as _$TranslationSettingsInput;
  }

  @override
  void update(void Function(TranslationSettingsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranslationSettingsInput build() => _build();

  _$TranslationSettingsInput _build() {
    _$TranslationSettingsInput _$result;
    try {
      _$result =
          _$v ??
          _$TranslationSettingsInput._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'TranslationSettingsInput',
              'enabled',
            ),
            targetLanguages: _targetLanguages?.build(),
            fields: _fields?.build(),
            engine: engine,
            budget: _budget?.build(),
            minSourceLanguageConfidence: minSourceLanguageConfidence,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetLanguages';
        _targetLanguages?.build();
        _$failedField = 'fields';
        _fields?.build();

        _$failedField = 'budget';
        _budget?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TranslationSettingsInput',
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
