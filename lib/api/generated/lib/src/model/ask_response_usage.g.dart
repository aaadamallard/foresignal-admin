// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_response_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskResponseUsage extends AskResponseUsage {
  @override
  final String? provider;
  @override
  final String? model;
  @override
  final int? inputTokens;
  @override
  final int? outputTokens;
  @override
  final int? toolCalls;
  @override
  final int? durationMs;

  factory _$AskResponseUsage(
          [void Function(AskResponseUsageBuilder)? updates]) =>
      (AskResponseUsageBuilder()..update(updates))._build();

  _$AskResponseUsage._(
      {this.provider,
      this.model,
      this.inputTokens,
      this.outputTokens,
      this.toolCalls,
      this.durationMs})
      : super._();
  @override
  AskResponseUsage rebuild(void Function(AskResponseUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskResponseUsageBuilder toBuilder() =>
      AskResponseUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskResponseUsage &&
        provider == other.provider &&
        model == other.model &&
        inputTokens == other.inputTokens &&
        outputTokens == other.outputTokens &&
        toolCalls == other.toolCalls &&
        durationMs == other.durationMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, inputTokens.hashCode);
    _$hash = $jc(_$hash, outputTokens.hashCode);
    _$hash = $jc(_$hash, toolCalls.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskResponseUsage')
          ..add('provider', provider)
          ..add('model', model)
          ..add('inputTokens', inputTokens)
          ..add('outputTokens', outputTokens)
          ..add('toolCalls', toolCalls)
          ..add('durationMs', durationMs))
        .toString();
  }
}

class AskResponseUsageBuilder
    implements Builder<AskResponseUsage, AskResponseUsageBuilder> {
  _$AskResponseUsage? _$v;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  int? _inputTokens;
  int? get inputTokens => _$this._inputTokens;
  set inputTokens(int? inputTokens) => _$this._inputTokens = inputTokens;

  int? _outputTokens;
  int? get outputTokens => _$this._outputTokens;
  set outputTokens(int? outputTokens) => _$this._outputTokens = outputTokens;

  int? _toolCalls;
  int? get toolCalls => _$this._toolCalls;
  set toolCalls(int? toolCalls) => _$this._toolCalls = toolCalls;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  AskResponseUsageBuilder() {
    AskResponseUsage._defaults(this);
  }

  AskResponseUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _model = $v.model;
      _inputTokens = $v.inputTokens;
      _outputTokens = $v.outputTokens;
      _toolCalls = $v.toolCalls;
      _durationMs = $v.durationMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskResponseUsage other) {
    _$v = other as _$AskResponseUsage;
  }

  @override
  void update(void Function(AskResponseUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskResponseUsage build() => _build();

  _$AskResponseUsage _build() {
    final _$result = _$v ??
        _$AskResponseUsage._(
          provider: provider,
          model: model,
          inputTokens: inputTokens,
          outputTokens: outputTokens,
          toolCalls: toolCalls,
          durationMs: durationMs,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
