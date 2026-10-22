// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interactive_chat_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InteractiveChatConfig extends InteractiveChatConfig {
  @override
  final bool? interactive;
  @override
  final BuiltList<AllowedChat>? allowedChats;
  @override
  final int? askRateLimitPerHour;
  @override
  final int? commandRateLimit;
  @override
  final bool? takeOverWebhook;
  @override
  final bool? discoveryMode;

  factory _$InteractiveChatConfig([
    void Function(InteractiveChatConfigBuilder)? updates,
  ]) => (InteractiveChatConfigBuilder()..update(updates))._build();

  _$InteractiveChatConfig._({
    this.interactive,
    this.allowedChats,
    this.askRateLimitPerHour,
    this.commandRateLimit,
    this.takeOverWebhook,
    this.discoveryMode,
  }) : super._();
  @override
  InteractiveChatConfig rebuild(
    void Function(InteractiveChatConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InteractiveChatConfigBuilder toBuilder() =>
      InteractiveChatConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InteractiveChatConfig &&
        interactive == other.interactive &&
        allowedChats == other.allowedChats &&
        askRateLimitPerHour == other.askRateLimitPerHour &&
        commandRateLimit == other.commandRateLimit &&
        takeOverWebhook == other.takeOverWebhook &&
        discoveryMode == other.discoveryMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interactive.hashCode);
    _$hash = $jc(_$hash, allowedChats.hashCode);
    _$hash = $jc(_$hash, askRateLimitPerHour.hashCode);
    _$hash = $jc(_$hash, commandRateLimit.hashCode);
    _$hash = $jc(_$hash, takeOverWebhook.hashCode);
    _$hash = $jc(_$hash, discoveryMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InteractiveChatConfig')
          ..add('interactive', interactive)
          ..add('allowedChats', allowedChats)
          ..add('askRateLimitPerHour', askRateLimitPerHour)
          ..add('commandRateLimit', commandRateLimit)
          ..add('takeOverWebhook', takeOverWebhook)
          ..add('discoveryMode', discoveryMode))
        .toString();
  }
}

class InteractiveChatConfigBuilder
    implements Builder<InteractiveChatConfig, InteractiveChatConfigBuilder> {
  _$InteractiveChatConfig? _$v;

  bool? _interactive;
  bool? get interactive => _$this._interactive;
  set interactive(bool? interactive) => _$this._interactive = interactive;

  ListBuilder<AllowedChat>? _allowedChats;
  ListBuilder<AllowedChat> get allowedChats =>
      _$this._allowedChats ??= ListBuilder<AllowedChat>();
  set allowedChats(ListBuilder<AllowedChat>? allowedChats) =>
      _$this._allowedChats = allowedChats;

  int? _askRateLimitPerHour;
  int? get askRateLimitPerHour => _$this._askRateLimitPerHour;
  set askRateLimitPerHour(int? askRateLimitPerHour) =>
      _$this._askRateLimitPerHour = askRateLimitPerHour;

  int? _commandRateLimit;
  int? get commandRateLimit => _$this._commandRateLimit;
  set commandRateLimit(int? commandRateLimit) =>
      _$this._commandRateLimit = commandRateLimit;

  bool? _takeOverWebhook;
  bool? get takeOverWebhook => _$this._takeOverWebhook;
  set takeOverWebhook(bool? takeOverWebhook) =>
      _$this._takeOverWebhook = takeOverWebhook;

  bool? _discoveryMode;
  bool? get discoveryMode => _$this._discoveryMode;
  set discoveryMode(bool? discoveryMode) =>
      _$this._discoveryMode = discoveryMode;

  InteractiveChatConfigBuilder() {
    InteractiveChatConfig._defaults(this);
  }

  InteractiveChatConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interactive = $v.interactive;
      _allowedChats = $v.allowedChats?.toBuilder();
      _askRateLimitPerHour = $v.askRateLimitPerHour;
      _commandRateLimit = $v.commandRateLimit;
      _takeOverWebhook = $v.takeOverWebhook;
      _discoveryMode = $v.discoveryMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InteractiveChatConfig other) {
    _$v = other as _$InteractiveChatConfig;
  }

  @override
  void update(void Function(InteractiveChatConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InteractiveChatConfig build() => _build();

  _$InteractiveChatConfig _build() {
    _$InteractiveChatConfig _$result;
    try {
      _$result =
          _$v ??
          _$InteractiveChatConfig._(
            interactive: interactive,
            allowedChats: _allowedChats?.build(),
            askRateLimitPerHour: askRateLimitPerHour,
            commandRateLimit: commandRateLimit,
            takeOverWebhook: takeOverWebhook,
            discoveryMode: discoveryMode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedChats';
        _allowedChats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InteractiveChatConfig',
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
