// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_interactive_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChannelInteractiveStatus extends ChannelInteractiveStatus {
  @override
  final bool interactive;
  @override
  final bool? chatopsEnabled;
  @override
  final bool connected;
  @override
  final HealthStatus status;
  @override
  final String? statusReason;
  @override
  final DateTime? lastPollAt;
  @override
  final String? lastError;
  @override
  final DateTime? discoveryModeUntil;
  @override
  final BuiltList<ChannelInteractiveStatusChatsInner> chats;

  factory _$ChannelInteractiveStatus(
          [void Function(ChannelInteractiveStatusBuilder)? updates]) =>
      (ChannelInteractiveStatusBuilder()..update(updates))._build();

  _$ChannelInteractiveStatus._(
      {required this.interactive,
      this.chatopsEnabled,
      required this.connected,
      required this.status,
      this.statusReason,
      this.lastPollAt,
      this.lastError,
      this.discoveryModeUntil,
      required this.chats})
      : super._();
  @override
  ChannelInteractiveStatus rebuild(
          void Function(ChannelInteractiveStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelInteractiveStatusBuilder toBuilder() =>
      ChannelInteractiveStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelInteractiveStatus &&
        interactive == other.interactive &&
        chatopsEnabled == other.chatopsEnabled &&
        connected == other.connected &&
        status == other.status &&
        statusReason == other.statusReason &&
        lastPollAt == other.lastPollAt &&
        lastError == other.lastError &&
        discoveryModeUntil == other.discoveryModeUntil &&
        chats == other.chats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interactive.hashCode);
    _$hash = $jc(_$hash, chatopsEnabled.hashCode);
    _$hash = $jc(_$hash, connected.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, lastPollAt.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jc(_$hash, discoveryModeUntil.hashCode);
    _$hash = $jc(_$hash, chats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelInteractiveStatus')
          ..add('interactive', interactive)
          ..add('chatopsEnabled', chatopsEnabled)
          ..add('connected', connected)
          ..add('status', status)
          ..add('statusReason', statusReason)
          ..add('lastPollAt', lastPollAt)
          ..add('lastError', lastError)
          ..add('discoveryModeUntil', discoveryModeUntil)
          ..add('chats', chats))
        .toString();
  }
}

class ChannelInteractiveStatusBuilder
    implements
        Builder<ChannelInteractiveStatus, ChannelInteractiveStatusBuilder> {
  _$ChannelInteractiveStatus? _$v;

  bool? _interactive;
  bool? get interactive => _$this._interactive;
  set interactive(bool? interactive) => _$this._interactive = interactive;

  bool? _chatopsEnabled;
  bool? get chatopsEnabled => _$this._chatopsEnabled;
  set chatopsEnabled(bool? chatopsEnabled) =>
      _$this._chatopsEnabled = chatopsEnabled;

  bool? _connected;
  bool? get connected => _$this._connected;
  set connected(bool? connected) => _$this._connected = connected;

  HealthStatus? _status;
  HealthStatus? get status => _$this._status;
  set status(HealthStatus? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  DateTime? _lastPollAt;
  DateTime? get lastPollAt => _$this._lastPollAt;
  set lastPollAt(DateTime? lastPollAt) => _$this._lastPollAt = lastPollAt;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  DateTime? _discoveryModeUntil;
  DateTime? get discoveryModeUntil => _$this._discoveryModeUntil;
  set discoveryModeUntil(DateTime? discoveryModeUntil) =>
      _$this._discoveryModeUntil = discoveryModeUntil;

  ListBuilder<ChannelInteractiveStatusChatsInner>? _chats;
  ListBuilder<ChannelInteractiveStatusChatsInner> get chats =>
      _$this._chats ??= ListBuilder<ChannelInteractiveStatusChatsInner>();
  set chats(ListBuilder<ChannelInteractiveStatusChatsInner>? chats) =>
      _$this._chats = chats;

  ChannelInteractiveStatusBuilder() {
    ChannelInteractiveStatus._defaults(this);
  }

  ChannelInteractiveStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interactive = $v.interactive;
      _chatopsEnabled = $v.chatopsEnabled;
      _connected = $v.connected;
      _status = $v.status;
      _statusReason = $v.statusReason;
      _lastPollAt = $v.lastPollAt;
      _lastError = $v.lastError;
      _discoveryModeUntil = $v.discoveryModeUntil;
      _chats = $v.chats.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelInteractiveStatus other) {
    _$v = other as _$ChannelInteractiveStatus;
  }

  @override
  void update(void Function(ChannelInteractiveStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelInteractiveStatus build() => _build();

  _$ChannelInteractiveStatus _build() {
    _$ChannelInteractiveStatus _$result;
    try {
      _$result = _$v ??
          _$ChannelInteractiveStatus._(
            interactive: BuiltValueNullFieldError.checkNotNull(
                interactive, r'ChannelInteractiveStatus', 'interactive'),
            chatopsEnabled: chatopsEnabled,
            connected: BuiltValueNullFieldError.checkNotNull(
                connected, r'ChannelInteractiveStatus', 'connected'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ChannelInteractiveStatus', 'status'),
            statusReason: statusReason,
            lastPollAt: lastPollAt,
            lastError: lastError,
            discoveryModeUntil: discoveryModeUntil,
            chats: chats.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chats';
        chats.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChannelInteractiveStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
