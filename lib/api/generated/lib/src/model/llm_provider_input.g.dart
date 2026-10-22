// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_provider_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LlmProviderInputTypeEnum _$llmProviderInputTypeEnum_anthropic =
    const LlmProviderInputTypeEnum._('anthropic');
const LlmProviderInputTypeEnum _$llmProviderInputTypeEnum_openaiCompatible =
    const LlmProviderInputTypeEnum._('openaiCompatible');
const LlmProviderInputTypeEnum _$llmProviderInputTypeEnum_ollama =
    const LlmProviderInputTypeEnum._('ollama');

LlmProviderInputTypeEnum _$llmProviderInputTypeEnumValueOf(String name) {
  switch (name) {
    case 'anthropic':
      return _$llmProviderInputTypeEnum_anthropic;
    case 'openaiCompatible':
      return _$llmProviderInputTypeEnum_openaiCompatible;
    case 'ollama':
      return _$llmProviderInputTypeEnum_ollama;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LlmProviderInputTypeEnum> _$llmProviderInputTypeEnumValues =
    BuiltSet<LlmProviderInputTypeEnum>(const <LlmProviderInputTypeEnum>[
      _$llmProviderInputTypeEnum_anthropic,
      _$llmProviderInputTypeEnum_openaiCompatible,
      _$llmProviderInputTypeEnum_ollama,
    ]);

Serializer<LlmProviderInputTypeEnum> _$llmProviderInputTypeEnumSerializer =
    _$LlmProviderInputTypeEnumSerializer();

class _$LlmProviderInputTypeEnumSerializer
    implements PrimitiveSerializer<LlmProviderInputTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'anthropic': 'anthropic',
    'openaiCompatible': 'openai-compatible',
    'ollama': 'ollama',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'anthropic': 'anthropic',
    'openai-compatible': 'openaiCompatible',
    'ollama': 'ollama',
  };

  @override
  final Iterable<Type> types = const <Type>[LlmProviderInputTypeEnum];
  @override
  final String wireName = 'LlmProviderInputTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderInputTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LlmProviderInputTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LlmProviderInputTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LlmProviderInput extends LlmProviderInput {
  @override
  final String id;
  @override
  final LlmProviderInputTypeEnum type;
  @override
  final String? baseUrl;
  @override
  final String? chatModel;
  @override
  final String? embeddingModel;
  @override
  final int? embeddingDimensions;
  @override
  final String? apiKey;
  @override
  final LlmProviderInputOptions? options;
  @override
  final int? requestsPerMinute;
  @override
  final int? tokensPerDay;
  @override
  final bool? enabled;
  @override
  final Date? knowledgeCutoff;

  factory _$LlmProviderInput([
    void Function(LlmProviderInputBuilder)? updates,
  ]) => (LlmProviderInputBuilder()..update(updates))._build();

  _$LlmProviderInput._({
    required this.id,
    required this.type,
    this.baseUrl,
    this.chatModel,
    this.embeddingModel,
    this.embeddingDimensions,
    this.apiKey,
    this.options,
    this.requestsPerMinute,
    this.tokensPerDay,
    this.enabled,
    this.knowledgeCutoff,
  }) : super._();
  @override
  LlmProviderInput rebuild(void Function(LlmProviderInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmProviderInputBuilder toBuilder() =>
      LlmProviderInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProviderInput &&
        id == other.id &&
        type == other.type &&
        baseUrl == other.baseUrl &&
        chatModel == other.chatModel &&
        embeddingModel == other.embeddingModel &&
        embeddingDimensions == other.embeddingDimensions &&
        apiKey == other.apiKey &&
        options == other.options &&
        requestsPerMinute == other.requestsPerMinute &&
        tokensPerDay == other.tokensPerDay &&
        enabled == other.enabled &&
        knowledgeCutoff == other.knowledgeCutoff;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, chatModel.hashCode);
    _$hash = $jc(_$hash, embeddingModel.hashCode);
    _$hash = $jc(_$hash, embeddingDimensions.hashCode);
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, requestsPerMinute.hashCode);
    _$hash = $jc(_$hash, tokensPerDay.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, knowledgeCutoff.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProviderInput')
          ..add('id', id)
          ..add('type', type)
          ..add('baseUrl', baseUrl)
          ..add('chatModel', chatModel)
          ..add('embeddingModel', embeddingModel)
          ..add('embeddingDimensions', embeddingDimensions)
          ..add('apiKey', apiKey)
          ..add('options', options)
          ..add('requestsPerMinute', requestsPerMinute)
          ..add('tokensPerDay', tokensPerDay)
          ..add('enabled', enabled)
          ..add('knowledgeCutoff', knowledgeCutoff))
        .toString();
  }
}

class LlmProviderInputBuilder
    implements Builder<LlmProviderInput, LlmProviderInputBuilder> {
  _$LlmProviderInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  LlmProviderInputTypeEnum? _type;
  LlmProviderInputTypeEnum? get type => _$this._type;
  set type(LlmProviderInputTypeEnum? type) => _$this._type = type;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

  String? _chatModel;
  String? get chatModel => _$this._chatModel;
  set chatModel(String? chatModel) => _$this._chatModel = chatModel;

  String? _embeddingModel;
  String? get embeddingModel => _$this._embeddingModel;
  set embeddingModel(String? embeddingModel) =>
      _$this._embeddingModel = embeddingModel;

  int? _embeddingDimensions;
  int? get embeddingDimensions => _$this._embeddingDimensions;
  set embeddingDimensions(int? embeddingDimensions) =>
      _$this._embeddingDimensions = embeddingDimensions;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  LlmProviderInputOptionsBuilder? _options;
  LlmProviderInputOptionsBuilder get options =>
      _$this._options ??= LlmProviderInputOptionsBuilder();
  set options(LlmProviderInputOptionsBuilder? options) =>
      _$this._options = options;

  int? _requestsPerMinute;
  int? get requestsPerMinute => _$this._requestsPerMinute;
  set requestsPerMinute(int? requestsPerMinute) =>
      _$this._requestsPerMinute = requestsPerMinute;

  int? _tokensPerDay;
  int? get tokensPerDay => _$this._tokensPerDay;
  set tokensPerDay(int? tokensPerDay) => _$this._tokensPerDay = tokensPerDay;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  Date? _knowledgeCutoff;
  Date? get knowledgeCutoff => _$this._knowledgeCutoff;
  set knowledgeCutoff(Date? knowledgeCutoff) =>
      _$this._knowledgeCutoff = knowledgeCutoff;

  LlmProviderInputBuilder() {
    LlmProviderInput._defaults(this);
  }

  LlmProviderInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _baseUrl = $v.baseUrl;
      _chatModel = $v.chatModel;
      _embeddingModel = $v.embeddingModel;
      _embeddingDimensions = $v.embeddingDimensions;
      _apiKey = $v.apiKey;
      _options = $v.options?.toBuilder();
      _requestsPerMinute = $v.requestsPerMinute;
      _tokensPerDay = $v.tokensPerDay;
      _enabled = $v.enabled;
      _knowledgeCutoff = $v.knowledgeCutoff;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProviderInput other) {
    _$v = other as _$LlmProviderInput;
  }

  @override
  void update(void Function(LlmProviderInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProviderInput build() => _build();

  _$LlmProviderInput _build() {
    _$LlmProviderInput _$result;
    try {
      _$result =
          _$v ??
          _$LlmProviderInput._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'LlmProviderInput',
              'id',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'LlmProviderInput',
              'type',
            ),
            baseUrl: baseUrl,
            chatModel: chatModel,
            embeddingModel: embeddingModel,
            embeddingDimensions: embeddingDimensions,
            apiKey: apiKey,
            options: _options?.build(),
            requestsPerMinute: requestsPerMinute,
            tokensPerDay: tokensPerDay,
            enabled: enabled,
            knowledgeCutoff: knowledgeCutoff,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LlmProviderInput',
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
