// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_llm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoLlm extends SystemInfoLlm {
  @override
  final bool? configured;
  @override
  final String? chatProvider;
  @override
  final String? embeddingProvider;
  @override
  final int? tokensToday;

  factory _$SystemInfoLlm([void Function(SystemInfoLlmBuilder)? updates]) =>
      (SystemInfoLlmBuilder()..update(updates))._build();

  _$SystemInfoLlm._({
    this.configured,
    this.chatProvider,
    this.embeddingProvider,
    this.tokensToday,
  }) : super._();
  @override
  SystemInfoLlm rebuild(void Function(SystemInfoLlmBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoLlmBuilder toBuilder() => SystemInfoLlmBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoLlm &&
        configured == other.configured &&
        chatProvider == other.chatProvider &&
        embeddingProvider == other.embeddingProvider &&
        tokensToday == other.tokensToday;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configured.hashCode);
    _$hash = $jc(_$hash, chatProvider.hashCode);
    _$hash = $jc(_$hash, embeddingProvider.hashCode);
    _$hash = $jc(_$hash, tokensToday.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoLlm')
          ..add('configured', configured)
          ..add('chatProvider', chatProvider)
          ..add('embeddingProvider', embeddingProvider)
          ..add('tokensToday', tokensToday))
        .toString();
  }
}

class SystemInfoLlmBuilder
    implements Builder<SystemInfoLlm, SystemInfoLlmBuilder> {
  _$SystemInfoLlm? _$v;

  bool? _configured;
  bool? get configured => _$this._configured;
  set configured(bool? configured) => _$this._configured = configured;

  String? _chatProvider;
  String? get chatProvider => _$this._chatProvider;
  set chatProvider(String? chatProvider) => _$this._chatProvider = chatProvider;

  String? _embeddingProvider;
  String? get embeddingProvider => _$this._embeddingProvider;
  set embeddingProvider(String? embeddingProvider) =>
      _$this._embeddingProvider = embeddingProvider;

  int? _tokensToday;
  int? get tokensToday => _$this._tokensToday;
  set tokensToday(int? tokensToday) => _$this._tokensToday = tokensToday;

  SystemInfoLlmBuilder() {
    SystemInfoLlm._defaults(this);
  }

  SystemInfoLlmBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configured = $v.configured;
      _chatProvider = $v.chatProvider;
      _embeddingProvider = $v.embeddingProvider;
      _tokensToday = $v.tokensToday;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoLlm other) {
    _$v = other as _$SystemInfoLlm;
  }

  @override
  void update(void Function(SystemInfoLlmBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoLlm build() => _build();

  _$SystemInfoLlm _build() {
    final _$result =
        _$v ??
        _$SystemInfoLlm._(
          configured: configured,
          chatProvider: chatProvider,
          embeddingProvider: embeddingProvider,
          tokensToday: tokensToday,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
