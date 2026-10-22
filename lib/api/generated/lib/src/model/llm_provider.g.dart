// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LlmProviderTypeEnum _$llmProviderTypeEnum_anthropic =
    const LlmProviderTypeEnum._('anthropic');
const LlmProviderTypeEnum _$llmProviderTypeEnum_openaiCompatible =
    const LlmProviderTypeEnum._('openaiCompatible');
const LlmProviderTypeEnum _$llmProviderTypeEnum_ollama =
    const LlmProviderTypeEnum._('ollama');

LlmProviderTypeEnum _$llmProviderTypeEnumValueOf(String name) {
  switch (name) {
    case 'anthropic':
      return _$llmProviderTypeEnum_anthropic;
    case 'openaiCompatible':
      return _$llmProviderTypeEnum_openaiCompatible;
    case 'ollama':
      return _$llmProviderTypeEnum_ollama;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LlmProviderTypeEnum> _$llmProviderTypeEnumValues =
    BuiltSet<LlmProviderTypeEnum>(const <LlmProviderTypeEnum>[
  _$llmProviderTypeEnum_anthropic,
  _$llmProviderTypeEnum_openaiCompatible,
  _$llmProviderTypeEnum_ollama,
]);

const LlmProviderRolesEnum _$llmProviderRolesEnum_chat =
    const LlmProviderRolesEnum._('chat');
const LlmProviderRolesEnum _$llmProviderRolesEnum_embedding =
    const LlmProviderRolesEnum._('embedding');
const LlmProviderRolesEnum _$llmProviderRolesEnum_tts =
    const LlmProviderRolesEnum._('tts');

LlmProviderRolesEnum _$llmProviderRolesEnumValueOf(String name) {
  switch (name) {
    case 'chat':
      return _$llmProviderRolesEnum_chat;
    case 'embedding':
      return _$llmProviderRolesEnum_embedding;
    case 'tts':
      return _$llmProviderRolesEnum_tts;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LlmProviderRolesEnum> _$llmProviderRolesEnumValues =
    BuiltSet<LlmProviderRolesEnum>(const <LlmProviderRolesEnum>[
  _$llmProviderRolesEnum_chat,
  _$llmProviderRolesEnum_embedding,
  _$llmProviderRolesEnum_tts,
]);

const LlmProviderStatusEnum _$llmProviderStatusEnum_healthy =
    const LlmProviderStatusEnum._('healthy');
const LlmProviderStatusEnum _$llmProviderStatusEnum_degraded =
    const LlmProviderStatusEnum._('degraded');
const LlmProviderStatusEnum _$llmProviderStatusEnum_failing =
    const LlmProviderStatusEnum._('failing');
const LlmProviderStatusEnum _$llmProviderStatusEnum_idle =
    const LlmProviderStatusEnum._('idle');
const LlmProviderStatusEnum _$llmProviderStatusEnum_disabled =
    const LlmProviderStatusEnum._('disabled');

LlmProviderStatusEnum _$llmProviderStatusEnumValueOf(String name) {
  switch (name) {
    case 'healthy':
      return _$llmProviderStatusEnum_healthy;
    case 'degraded':
      return _$llmProviderStatusEnum_degraded;
    case 'failing':
      return _$llmProviderStatusEnum_failing;
    case 'idle':
      return _$llmProviderStatusEnum_idle;
    case 'disabled':
      return _$llmProviderStatusEnum_disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LlmProviderStatusEnum> _$llmProviderStatusEnumValues =
    BuiltSet<LlmProviderStatusEnum>(const <LlmProviderStatusEnum>[
  _$llmProviderStatusEnum_healthy,
  _$llmProviderStatusEnum_degraded,
  _$llmProviderStatusEnum_failing,
  _$llmProviderStatusEnum_idle,
  _$llmProviderStatusEnum_disabled,
]);

Serializer<LlmProviderTypeEnum> _$llmProviderTypeEnumSerializer =
    _$LlmProviderTypeEnumSerializer();
Serializer<LlmProviderRolesEnum> _$llmProviderRolesEnumSerializer =
    _$LlmProviderRolesEnumSerializer();
Serializer<LlmProviderStatusEnum> _$llmProviderStatusEnumSerializer =
    _$LlmProviderStatusEnumSerializer();

class _$LlmProviderTypeEnumSerializer
    implements PrimitiveSerializer<LlmProviderTypeEnum> {
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
  final Iterable<Type> types = const <Type>[LlmProviderTypeEnum];
  @override
  final String wireName = 'LlmProviderTypeEnum';

  @override
  Object serialize(Serializers serializers, LlmProviderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LlmProviderTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LlmProviderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LlmProviderRolesEnumSerializer
    implements PrimitiveSerializer<LlmProviderRolesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'chat': 'chat',
    'embedding': 'embedding',
    'tts': 'tts',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'chat': 'chat',
    'embedding': 'embedding',
    'tts': 'tts',
  };

  @override
  final Iterable<Type> types = const <Type>[LlmProviderRolesEnum];
  @override
  final String wireName = 'LlmProviderRolesEnum';

  @override
  Object serialize(Serializers serializers, LlmProviderRolesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LlmProviderRolesEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LlmProviderRolesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LlmProviderStatusEnumSerializer
    implements PrimitiveSerializer<LlmProviderStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'healthy': 'healthy',
    'degraded': 'degraded',
    'failing': 'failing',
    'idle': 'idle',
    'disabled': 'disabled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'healthy': 'healthy',
    'degraded': 'degraded',
    'failing': 'failing',
    'idle': 'idle',
    'disabled': 'disabled',
  };

  @override
  final Iterable<Type> types = const <Type>[LlmProviderStatusEnum];
  @override
  final String wireName = 'LlmProviderStatusEnum';

  @override
  Object serialize(Serializers serializers, LlmProviderStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LlmProviderStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LlmProviderStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LlmProvider extends LlmProvider {
  @override
  final String id;
  @override
  final LlmProviderTypeEnum type;
  @override
  final String? baseUrl;
  @override
  final String? chatModel;
  @override
  final String? embeddingModel;
  @override
  final int? embeddingDimensions;
  @override
  final bool? apiKeySet;
  @override
  final BuiltMap<String, JsonObject?>? options;
  @override
  final int? requestsPerMinute;
  @override
  final int? tokensPerDay;
  @override
  final bool enabled;
  @override
  final BuiltList<LlmProviderRolesEnum>? roles;
  @override
  final LlmProviderStatusEnum status;
  @override
  final int? tokensToday;
  @override
  final String? lastError;
  @override
  final DateTime? updatedAt;
  @override
  final bool? supportsTools;
  @override
  final Date? knowledgeCutoff;
  @override
  final DateTime? lastSuccessAt;
  @override
  final DateTime? lastErrorAt;
  @override
  final int? consecutiveFailures;
  @override
  final bool? local;

  factory _$LlmProvider([void Function(LlmProviderBuilder)? updates]) =>
      (LlmProviderBuilder()..update(updates))._build();

  _$LlmProvider._(
      {required this.id,
      required this.type,
      this.baseUrl,
      this.chatModel,
      this.embeddingModel,
      this.embeddingDimensions,
      this.apiKeySet,
      this.options,
      this.requestsPerMinute,
      this.tokensPerDay,
      required this.enabled,
      this.roles,
      required this.status,
      this.tokensToday,
      this.lastError,
      this.updatedAt,
      this.supportsTools,
      this.knowledgeCutoff,
      this.lastSuccessAt,
      this.lastErrorAt,
      this.consecutiveFailures,
      this.local})
      : super._();
  @override
  LlmProvider rebuild(void Function(LlmProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmProviderBuilder toBuilder() => LlmProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProvider &&
        id == other.id &&
        type == other.type &&
        baseUrl == other.baseUrl &&
        chatModel == other.chatModel &&
        embeddingModel == other.embeddingModel &&
        embeddingDimensions == other.embeddingDimensions &&
        apiKeySet == other.apiKeySet &&
        options == other.options &&
        requestsPerMinute == other.requestsPerMinute &&
        tokensPerDay == other.tokensPerDay &&
        enabled == other.enabled &&
        roles == other.roles &&
        status == other.status &&
        tokensToday == other.tokensToday &&
        lastError == other.lastError &&
        updatedAt == other.updatedAt &&
        supportsTools == other.supportsTools &&
        knowledgeCutoff == other.knowledgeCutoff &&
        lastSuccessAt == other.lastSuccessAt &&
        lastErrorAt == other.lastErrorAt &&
        consecutiveFailures == other.consecutiveFailures &&
        local == other.local;
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
    _$hash = $jc(_$hash, apiKeySet.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, requestsPerMinute.hashCode);
    _$hash = $jc(_$hash, tokensPerDay.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, tokensToday.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, supportsTools.hashCode);
    _$hash = $jc(_$hash, knowledgeCutoff.hashCode);
    _$hash = $jc(_$hash, lastSuccessAt.hashCode);
    _$hash = $jc(_$hash, lastErrorAt.hashCode);
    _$hash = $jc(_$hash, consecutiveFailures.hashCode);
    _$hash = $jc(_$hash, local.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProvider')
          ..add('id', id)
          ..add('type', type)
          ..add('baseUrl', baseUrl)
          ..add('chatModel', chatModel)
          ..add('embeddingModel', embeddingModel)
          ..add('embeddingDimensions', embeddingDimensions)
          ..add('apiKeySet', apiKeySet)
          ..add('options', options)
          ..add('requestsPerMinute', requestsPerMinute)
          ..add('tokensPerDay', tokensPerDay)
          ..add('enabled', enabled)
          ..add('roles', roles)
          ..add('status', status)
          ..add('tokensToday', tokensToday)
          ..add('lastError', lastError)
          ..add('updatedAt', updatedAt)
          ..add('supportsTools', supportsTools)
          ..add('knowledgeCutoff', knowledgeCutoff)
          ..add('lastSuccessAt', lastSuccessAt)
          ..add('lastErrorAt', lastErrorAt)
          ..add('consecutiveFailures', consecutiveFailures)
          ..add('local', local))
        .toString();
  }
}

class LlmProviderBuilder implements Builder<LlmProvider, LlmProviderBuilder> {
  _$LlmProvider? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  LlmProviderTypeEnum? _type;
  LlmProviderTypeEnum? get type => _$this._type;
  set type(LlmProviderTypeEnum? type) => _$this._type = type;

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

  bool? _apiKeySet;
  bool? get apiKeySet => _$this._apiKeySet;
  set apiKeySet(bool? apiKeySet) => _$this._apiKeySet = apiKeySet;

  MapBuilder<String, JsonObject?>? _options;
  MapBuilder<String, JsonObject?> get options =>
      _$this._options ??= MapBuilder<String, JsonObject?>();
  set options(MapBuilder<String, JsonObject?>? options) =>
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

  ListBuilder<LlmProviderRolesEnum>? _roles;
  ListBuilder<LlmProviderRolesEnum> get roles =>
      _$this._roles ??= ListBuilder<LlmProviderRolesEnum>();
  set roles(ListBuilder<LlmProviderRolesEnum>? roles) => _$this._roles = roles;

  LlmProviderStatusEnum? _status;
  LlmProviderStatusEnum? get status => _$this._status;
  set status(LlmProviderStatusEnum? status) => _$this._status = status;

  int? _tokensToday;
  int? get tokensToday => _$this._tokensToday;
  set tokensToday(int? tokensToday) => _$this._tokensToday = tokensToday;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  bool? _supportsTools;
  bool? get supportsTools => _$this._supportsTools;
  set supportsTools(bool? supportsTools) =>
      _$this._supportsTools = supportsTools;

  Date? _knowledgeCutoff;
  Date? get knowledgeCutoff => _$this._knowledgeCutoff;
  set knowledgeCutoff(Date? knowledgeCutoff) =>
      _$this._knowledgeCutoff = knowledgeCutoff;

  DateTime? _lastSuccessAt;
  DateTime? get lastSuccessAt => _$this._lastSuccessAt;
  set lastSuccessAt(DateTime? lastSuccessAt) =>
      _$this._lastSuccessAt = lastSuccessAt;

  DateTime? _lastErrorAt;
  DateTime? get lastErrorAt => _$this._lastErrorAt;
  set lastErrorAt(DateTime? lastErrorAt) => _$this._lastErrorAt = lastErrorAt;

  int? _consecutiveFailures;
  int? get consecutiveFailures => _$this._consecutiveFailures;
  set consecutiveFailures(int? consecutiveFailures) =>
      _$this._consecutiveFailures = consecutiveFailures;

  bool? _local;
  bool? get local => _$this._local;
  set local(bool? local) => _$this._local = local;

  LlmProviderBuilder() {
    LlmProvider._defaults(this);
  }

  LlmProviderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _baseUrl = $v.baseUrl;
      _chatModel = $v.chatModel;
      _embeddingModel = $v.embeddingModel;
      _embeddingDimensions = $v.embeddingDimensions;
      _apiKeySet = $v.apiKeySet;
      _options = $v.options?.toBuilder();
      _requestsPerMinute = $v.requestsPerMinute;
      _tokensPerDay = $v.tokensPerDay;
      _enabled = $v.enabled;
      _roles = $v.roles?.toBuilder();
      _status = $v.status;
      _tokensToday = $v.tokensToday;
      _lastError = $v.lastError;
      _updatedAt = $v.updatedAt;
      _supportsTools = $v.supportsTools;
      _knowledgeCutoff = $v.knowledgeCutoff;
      _lastSuccessAt = $v.lastSuccessAt;
      _lastErrorAt = $v.lastErrorAt;
      _consecutiveFailures = $v.consecutiveFailures;
      _local = $v.local;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProvider other) {
    _$v = other as _$LlmProvider;
  }

  @override
  void update(void Function(LlmProviderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProvider build() => _build();

  _$LlmProvider _build() {
    _$LlmProvider _$result;
    try {
      _$result = _$v ??
          _$LlmProvider._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'LlmProvider', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'LlmProvider', 'type'),
            baseUrl: baseUrl,
            chatModel: chatModel,
            embeddingModel: embeddingModel,
            embeddingDimensions: embeddingDimensions,
            apiKeySet: apiKeySet,
            options: _options?.build(),
            requestsPerMinute: requestsPerMinute,
            tokensPerDay: tokensPerDay,
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'LlmProvider', 'enabled'),
            roles: _roles?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'LlmProvider', 'status'),
            tokensToday: tokensToday,
            lastError: lastError,
            updatedAt: updatedAt,
            supportsTools: supportsTools,
            knowledgeCutoff: knowledgeCutoff,
            lastSuccessAt: lastSuccessAt,
            lastErrorAt: lastErrorAt,
            consecutiveFailures: consecutiveFailures,
            local: local,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();

        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LlmProvider', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
