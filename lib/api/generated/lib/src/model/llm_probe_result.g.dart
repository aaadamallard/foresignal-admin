// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_probe_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmProbeResult extends LlmProbeResult {
  @override
  final LlmTestResult test;
  @override
  final BuiltList<LlmModelInfo> models;
  @override
  final String? modelsError;

  factory _$LlmProbeResult([void Function(LlmProbeResultBuilder)? updates]) =>
      (LlmProbeResultBuilder()..update(updates))._build();

  _$LlmProbeResult._({
    required this.test,
    required this.models,
    this.modelsError,
  }) : super._();
  @override
  LlmProbeResult rebuild(void Function(LlmProbeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmProbeResultBuilder toBuilder() => LlmProbeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProbeResult &&
        test == other.test &&
        models == other.models &&
        modelsError == other.modelsError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, test.hashCode);
    _$hash = $jc(_$hash, models.hashCode);
    _$hash = $jc(_$hash, modelsError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProbeResult')
          ..add('test', test)
          ..add('models', models)
          ..add('modelsError', modelsError))
        .toString();
  }
}

class LlmProbeResultBuilder
    implements Builder<LlmProbeResult, LlmProbeResultBuilder> {
  _$LlmProbeResult? _$v;

  LlmTestResultBuilder? _test;
  LlmTestResultBuilder get test => _$this._test ??= LlmTestResultBuilder();
  set test(LlmTestResultBuilder? test) => _$this._test = test;

  ListBuilder<LlmModelInfo>? _models;
  ListBuilder<LlmModelInfo> get models =>
      _$this._models ??= ListBuilder<LlmModelInfo>();
  set models(ListBuilder<LlmModelInfo>? models) => _$this._models = models;

  String? _modelsError;
  String? get modelsError => _$this._modelsError;
  set modelsError(String? modelsError) => _$this._modelsError = modelsError;

  LlmProbeResultBuilder() {
    LlmProbeResult._defaults(this);
  }

  LlmProbeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _test = $v.test.toBuilder();
      _models = $v.models.toBuilder();
      _modelsError = $v.modelsError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProbeResult other) {
    _$v = other as _$LlmProbeResult;
  }

  @override
  void update(void Function(LlmProbeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProbeResult build() => _build();

  _$LlmProbeResult _build() {
    _$LlmProbeResult _$result;
    try {
      _$result =
          _$v ??
          _$LlmProbeResult._(
            test: test.build(),
            models: models.build(),
            modelsError: modelsError,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'test';
        test.build();
        _$failedField = 'models';
        models.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LlmProbeResult',
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
