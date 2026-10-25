// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_test_result_chat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LlmTestResultChatStopReasonEnum _$llmTestResultChatStopReasonEnum_end =
    const LlmTestResultChatStopReasonEnum._('end');
const LlmTestResultChatStopReasonEnum
_$llmTestResultChatStopReasonEnum_toolUse =
    const LlmTestResultChatStopReasonEnum._('toolUse');
const LlmTestResultChatStopReasonEnum
_$llmTestResultChatStopReasonEnum_maxTokens =
    const LlmTestResultChatStopReasonEnum._('maxTokens');
const LlmTestResultChatStopReasonEnum
_$llmTestResultChatStopReasonEnum_refusal =
    const LlmTestResultChatStopReasonEnum._('refusal');
const LlmTestResultChatStopReasonEnum _$llmTestResultChatStopReasonEnum_error =
    const LlmTestResultChatStopReasonEnum._('error');
const LlmTestResultChatStopReasonEnum
_$llmTestResultChatStopReasonEnum_unknownDefaultOpenApi =
    const LlmTestResultChatStopReasonEnum._('unknownDefaultOpenApi');

LlmTestResultChatStopReasonEnum _$llmTestResultChatStopReasonEnumValueOf(
  String name,
) {
  switch (name) {
    case 'end':
      return _$llmTestResultChatStopReasonEnum_end;
    case 'toolUse':
      return _$llmTestResultChatStopReasonEnum_toolUse;
    case 'maxTokens':
      return _$llmTestResultChatStopReasonEnum_maxTokens;
    case 'refusal':
      return _$llmTestResultChatStopReasonEnum_refusal;
    case 'error':
      return _$llmTestResultChatStopReasonEnum_error;
    case 'unknownDefaultOpenApi':
      return _$llmTestResultChatStopReasonEnum_unknownDefaultOpenApi;
    default:
      return _$llmTestResultChatStopReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LlmTestResultChatStopReasonEnum>
_$llmTestResultChatStopReasonEnumValues =
    BuiltSet<LlmTestResultChatStopReasonEnum>(
      const <LlmTestResultChatStopReasonEnum>[
        _$llmTestResultChatStopReasonEnum_end,
        _$llmTestResultChatStopReasonEnum_toolUse,
        _$llmTestResultChatStopReasonEnum_maxTokens,
        _$llmTestResultChatStopReasonEnum_refusal,
        _$llmTestResultChatStopReasonEnum_error,
        _$llmTestResultChatStopReasonEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<LlmTestResultChatStopReasonEnum>
_$llmTestResultChatStopReasonEnumSerializer =
    _$LlmTestResultChatStopReasonEnumSerializer();

class _$LlmTestResultChatStopReasonEnumSerializer
    implements PrimitiveSerializer<LlmTestResultChatStopReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'end': 'end',
    'toolUse': 'tool_use',
    'maxTokens': 'max_tokens',
    'refusal': 'refusal',
    'error': 'error',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'end': 'end',
    'tool_use': 'toolUse',
    'max_tokens': 'maxTokens',
    'refusal': 'refusal',
    'error': 'error',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LlmTestResultChatStopReasonEnum];
  @override
  final String wireName = 'LlmTestResultChatStopReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    LlmTestResultChatStopReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LlmTestResultChatStopReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LlmTestResultChatStopReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LlmTestResultChat extends LlmTestResultChat {
  @override
  final String? model;
  @override
  final int? latencyMs;
  @override
  final int? inputTokens;
  @override
  final int? outputTokens;
  @override
  final String? text;
  @override
  final int? cachedTokens;
  @override
  final LlmTestResultChatStopReasonEnum? stopReason;

  factory _$LlmTestResultChat([
    void Function(LlmTestResultChatBuilder)? updates,
  ]) => (LlmTestResultChatBuilder()..update(updates))._build();

  _$LlmTestResultChat._({
    this.model,
    this.latencyMs,
    this.inputTokens,
    this.outputTokens,
    this.text,
    this.cachedTokens,
    this.stopReason,
  }) : super._();
  @override
  LlmTestResultChat rebuild(void Function(LlmTestResultChatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmTestResultChatBuilder toBuilder() =>
      LlmTestResultChatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmTestResultChat &&
        model == other.model &&
        latencyMs == other.latencyMs &&
        inputTokens == other.inputTokens &&
        outputTokens == other.outputTokens &&
        text == other.text &&
        cachedTokens == other.cachedTokens &&
        stopReason == other.stopReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, latencyMs.hashCode);
    _$hash = $jc(_$hash, inputTokens.hashCode);
    _$hash = $jc(_$hash, outputTokens.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, cachedTokens.hashCode);
    _$hash = $jc(_$hash, stopReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmTestResultChat')
          ..add('model', model)
          ..add('latencyMs', latencyMs)
          ..add('inputTokens', inputTokens)
          ..add('outputTokens', outputTokens)
          ..add('text', text)
          ..add('cachedTokens', cachedTokens)
          ..add('stopReason', stopReason))
        .toString();
  }
}

class LlmTestResultChatBuilder
    implements Builder<LlmTestResultChat, LlmTestResultChatBuilder> {
  _$LlmTestResultChat? _$v;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  int? _latencyMs;
  int? get latencyMs => _$this._latencyMs;
  set latencyMs(int? latencyMs) => _$this._latencyMs = latencyMs;

  int? _inputTokens;
  int? get inputTokens => _$this._inputTokens;
  set inputTokens(int? inputTokens) => _$this._inputTokens = inputTokens;

  int? _outputTokens;
  int? get outputTokens => _$this._outputTokens;
  set outputTokens(int? outputTokens) => _$this._outputTokens = outputTokens;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _cachedTokens;
  int? get cachedTokens => _$this._cachedTokens;
  set cachedTokens(int? cachedTokens) => _$this._cachedTokens = cachedTokens;

  LlmTestResultChatStopReasonEnum? _stopReason;
  LlmTestResultChatStopReasonEnum? get stopReason => _$this._stopReason;
  set stopReason(LlmTestResultChatStopReasonEnum? stopReason) =>
      _$this._stopReason = stopReason;

  LlmTestResultChatBuilder() {
    LlmTestResultChat._defaults(this);
  }

  LlmTestResultChatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _model = $v.model;
      _latencyMs = $v.latencyMs;
      _inputTokens = $v.inputTokens;
      _outputTokens = $v.outputTokens;
      _text = $v.text;
      _cachedTokens = $v.cachedTokens;
      _stopReason = $v.stopReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmTestResultChat other) {
    _$v = other as _$LlmTestResultChat;
  }

  @override
  void update(void Function(LlmTestResultChatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmTestResultChat build() => _build();

  _$LlmTestResultChat _build() {
    final _$result =
        _$v ??
        _$LlmTestResultChat._(
          model: model,
          latencyMs: latencyMs,
          inputTokens: inputTokens,
          outputTokens: outputTokens,
          text: text,
          cachedTokens: cachedTokens,
          stopReason: stopReason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
