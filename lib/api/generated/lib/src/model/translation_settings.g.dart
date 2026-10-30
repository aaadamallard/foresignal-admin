// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslationSettings extends TranslationSettings {
  @override
  final bool enabled;
  @override
  final BuiltSet<String> targetLanguages;
  @override
  final BuiltSet<String> fields;
  @override
  final String engine;
  @override
  final TranslationSettingsInputBudget? budget;
  @override
  final num? minSourceLanguageConfidence;
  @override
  final LlmSpendWindow? spend;

  factory _$TranslationSettings([
    void Function(TranslationSettingsBuilder)? updates,
  ]) => (TranslationSettingsBuilder()..update(updates))._build();

  _$TranslationSettings._({
    required this.enabled,
    required this.targetLanguages,
    required this.fields,
    required this.engine,
    this.budget,
    this.minSourceLanguageConfidence,
    this.spend,
  }) : super._();
  @override
  TranslationSettings rebuild(
    void Function(TranslationSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TranslationSettingsBuilder toBuilder() =>
      TranslationSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationSettings &&
        enabled == other.enabled &&
        targetLanguages == other.targetLanguages &&
        fields == other.fields &&
        engine == other.engine &&
        budget == other.budget &&
        minSourceLanguageConfidence == other.minSourceLanguageConfidence &&
        spend == other.spend;
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
    _$hash = $jc(_$hash, spend.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranslationSettings')
          ..add('enabled', enabled)
          ..add('targetLanguages', targetLanguages)
          ..add('fields', fields)
          ..add('engine', engine)
          ..add('budget', budget)
          ..add('minSourceLanguageConfidence', minSourceLanguageConfidence)
          ..add('spend', spend))
        .toString();
  }
}

class TranslationSettingsBuilder
    implements Builder<TranslationSettings, TranslationSettingsBuilder> {
  _$TranslationSettings? _$v;

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

  LlmSpendWindowBuilder? _spend;
  LlmSpendWindowBuilder get spend => _$this._spend ??= LlmSpendWindowBuilder();
  set spend(LlmSpendWindowBuilder? spend) => _$this._spend = spend;

  TranslationSettingsBuilder() {
    TranslationSettings._defaults(this);
  }

  TranslationSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _targetLanguages = $v.targetLanguages.toBuilder();
      _fields = $v.fields.toBuilder();
      _engine = $v.engine;
      _budget = $v.budget?.toBuilder();
      _minSourceLanguageConfidence = $v.minSourceLanguageConfidence;
      _spend = $v.spend?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationSettings other) {
    _$v = other as _$TranslationSettings;
  }

  @override
  void update(void Function(TranslationSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranslationSettings build() => _build();

  _$TranslationSettings _build() {
    _$TranslationSettings _$result;
    try {
      _$result =
          _$v ??
          _$TranslationSettings._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'TranslationSettings',
              'enabled',
            ),
            targetLanguages: targetLanguages.build(),
            fields: fields.build(),
            engine: BuiltValueNullFieldError.checkNotNull(
              engine,
              r'TranslationSettings',
              'engine',
            ),
            budget: _budget?.build(),
            minSourceLanguageConfidence: minSourceLanguageConfidence,
            spend: _spend?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetLanguages';
        targetLanguages.build();
        _$failedField = 'fields';
        fields.build();

        _$failedField = 'budget';
        _budget?.build();

        _$failedField = 'spend';
        _spend?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TranslationSettings',
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
