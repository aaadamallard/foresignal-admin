// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmSettings extends LlmSettings {
  @override
  final String? chatProvider;
  @override
  final String? embeddingProvider;
  @override
  final bool? askEnabled;
  @override
  final bool? enrichmentEnabled;
  @override
  final bool? logContent;
  @override
  final int? askMaxTokens;
  @override
  final bool? allowPrivateLocal;
  @override
  final String? ttsProvider;

  factory _$LlmSettings([void Function(LlmSettingsBuilder)? updates]) =>
      (LlmSettingsBuilder()..update(updates))._build();

  _$LlmSettings._({
    this.chatProvider,
    this.embeddingProvider,
    this.askEnabled,
    this.enrichmentEnabled,
    this.logContent,
    this.askMaxTokens,
    this.allowPrivateLocal,
    this.ttsProvider,
  }) : super._();
  @override
  LlmSettings rebuild(void Function(LlmSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmSettingsBuilder toBuilder() => LlmSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmSettings &&
        chatProvider == other.chatProvider &&
        embeddingProvider == other.embeddingProvider &&
        askEnabled == other.askEnabled &&
        enrichmentEnabled == other.enrichmentEnabled &&
        logContent == other.logContent &&
        askMaxTokens == other.askMaxTokens &&
        allowPrivateLocal == other.allowPrivateLocal &&
        ttsProvider == other.ttsProvider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chatProvider.hashCode);
    _$hash = $jc(_$hash, embeddingProvider.hashCode);
    _$hash = $jc(_$hash, askEnabled.hashCode);
    _$hash = $jc(_$hash, enrichmentEnabled.hashCode);
    _$hash = $jc(_$hash, logContent.hashCode);
    _$hash = $jc(_$hash, askMaxTokens.hashCode);
    _$hash = $jc(_$hash, allowPrivateLocal.hashCode);
    _$hash = $jc(_$hash, ttsProvider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmSettings')
          ..add('chatProvider', chatProvider)
          ..add('embeddingProvider', embeddingProvider)
          ..add('askEnabled', askEnabled)
          ..add('enrichmentEnabled', enrichmentEnabled)
          ..add('logContent', logContent)
          ..add('askMaxTokens', askMaxTokens)
          ..add('allowPrivateLocal', allowPrivateLocal)
          ..add('ttsProvider', ttsProvider))
        .toString();
  }
}

class LlmSettingsBuilder implements Builder<LlmSettings, LlmSettingsBuilder> {
  _$LlmSettings? _$v;

  String? _chatProvider;
  String? get chatProvider => _$this._chatProvider;
  set chatProvider(String? chatProvider) => _$this._chatProvider = chatProvider;

  String? _embeddingProvider;
  String? get embeddingProvider => _$this._embeddingProvider;
  set embeddingProvider(String? embeddingProvider) =>
      _$this._embeddingProvider = embeddingProvider;

  bool? _askEnabled;
  bool? get askEnabled => _$this._askEnabled;
  set askEnabled(bool? askEnabled) => _$this._askEnabled = askEnabled;

  bool? _enrichmentEnabled;
  bool? get enrichmentEnabled => _$this._enrichmentEnabled;
  set enrichmentEnabled(bool? enrichmentEnabled) =>
      _$this._enrichmentEnabled = enrichmentEnabled;

  bool? _logContent;
  bool? get logContent => _$this._logContent;
  set logContent(bool? logContent) => _$this._logContent = logContent;

  int? _askMaxTokens;
  int? get askMaxTokens => _$this._askMaxTokens;
  set askMaxTokens(int? askMaxTokens) => _$this._askMaxTokens = askMaxTokens;

  bool? _allowPrivateLocal;
  bool? get allowPrivateLocal => _$this._allowPrivateLocal;
  set allowPrivateLocal(bool? allowPrivateLocal) =>
      _$this._allowPrivateLocal = allowPrivateLocal;

  String? _ttsProvider;
  String? get ttsProvider => _$this._ttsProvider;
  set ttsProvider(String? ttsProvider) => _$this._ttsProvider = ttsProvider;

  LlmSettingsBuilder() {
    LlmSettings._defaults(this);
  }

  LlmSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chatProvider = $v.chatProvider;
      _embeddingProvider = $v.embeddingProvider;
      _askEnabled = $v.askEnabled;
      _enrichmentEnabled = $v.enrichmentEnabled;
      _logContent = $v.logContent;
      _askMaxTokens = $v.askMaxTokens;
      _allowPrivateLocal = $v.allowPrivateLocal;
      _ttsProvider = $v.ttsProvider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmSettings other) {
    _$v = other as _$LlmSettings;
  }

  @override
  void update(void Function(LlmSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmSettings build() => _build();

  _$LlmSettings _build() {
    final _$result =
        _$v ??
        _$LlmSettings._(
          chatProvider: chatProvider,
          embeddingProvider: embeddingProvider,
          askEnabled: askEnabled,
          enrichmentEnabled: enrichmentEnabled,
          logContent: logContent,
          askMaxTokens: askMaxTokens,
          allowPrivateLocal: allowPrivateLocal,
          ttsProvider: ttsProvider,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
