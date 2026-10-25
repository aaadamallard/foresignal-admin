// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_interactive_status_chats_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChannelInteractiveStatusChatsInnerScopeEnum
_$channelInteractiveStatusChatsInnerScopeEnum_read =
    const ChannelInteractiveStatusChatsInnerScopeEnum._('read');
const ChannelInteractiveStatusChatsInnerScopeEnum
_$channelInteractiveStatusChatsInnerScopeEnum_agent =
    const ChannelInteractiveStatusChatsInnerScopeEnum._('agent');
const ChannelInteractiveStatusChatsInnerScopeEnum
_$channelInteractiveStatusChatsInnerScopeEnum_unknownDefaultOpenApi =
    const ChannelInteractiveStatusChatsInnerScopeEnum._(
      'unknownDefaultOpenApi',
    );

ChannelInteractiveStatusChatsInnerScopeEnum
_$channelInteractiveStatusChatsInnerScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$channelInteractiveStatusChatsInnerScopeEnum_read;
    case 'agent':
      return _$channelInteractiveStatusChatsInnerScopeEnum_agent;
    case 'unknownDefaultOpenApi':
      return _$channelInteractiveStatusChatsInnerScopeEnum_unknownDefaultOpenApi;
    default:
      return _$channelInteractiveStatusChatsInnerScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChannelInteractiveStatusChatsInnerScopeEnum>
_$channelInteractiveStatusChatsInnerScopeEnumValues =
    BuiltSet<ChannelInteractiveStatusChatsInnerScopeEnum>(
      const <ChannelInteractiveStatusChatsInnerScopeEnum>[
        _$channelInteractiveStatusChatsInnerScopeEnum_read,
        _$channelInteractiveStatusChatsInnerScopeEnum_agent,
        _$channelInteractiveStatusChatsInnerScopeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ChannelInteractiveStatusChatsInnerScopeEnum>
_$channelInteractiveStatusChatsInnerScopeEnumSerializer =
    _$ChannelInteractiveStatusChatsInnerScopeEnumSerializer();

class _$ChannelInteractiveStatusChatsInnerScopeEnumSerializer
    implements
        PrimitiveSerializer<ChannelInteractiveStatusChatsInnerScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChannelInteractiveStatusChatsInnerScopeEnum,
  ];
  @override
  final String wireName = 'ChannelInteractiveStatusChatsInnerScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChannelInteractiveStatusChatsInnerScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChannelInteractiveStatusChatsInnerScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChannelInteractiveStatusChatsInnerScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChannelInteractiveStatusChatsInner
    extends ChannelInteractiveStatusChatsInner {
  @override
  final String chatId;
  @override
  final String? name;
  @override
  final ChannelInteractiveStatusChatsInnerScopeEnum scope;
  @override
  final BuiltList<String>? userIds;
  @override
  final bool? privateAccess;
  @override
  final bool active;
  @override
  final String? reason;

  factory _$ChannelInteractiveStatusChatsInner([
    void Function(ChannelInteractiveStatusChatsInnerBuilder)? updates,
  ]) => (ChannelInteractiveStatusChatsInnerBuilder()..update(updates))._build();

  _$ChannelInteractiveStatusChatsInner._({
    required this.chatId,
    this.name,
    required this.scope,
    this.userIds,
    this.privateAccess,
    required this.active,
    this.reason,
  }) : super._();
  @override
  ChannelInteractiveStatusChatsInner rebuild(
    void Function(ChannelInteractiveStatusChatsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChannelInteractiveStatusChatsInnerBuilder toBuilder() =>
      ChannelInteractiveStatusChatsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelInteractiveStatusChatsInner &&
        chatId == other.chatId &&
        name == other.name &&
        scope == other.scope &&
        userIds == other.userIds &&
        privateAccess == other.privateAccess &&
        active == other.active &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chatId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jc(_$hash, privateAccess.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelInteractiveStatusChatsInner')
          ..add('chatId', chatId)
          ..add('name', name)
          ..add('scope', scope)
          ..add('userIds', userIds)
          ..add('privateAccess', privateAccess)
          ..add('active', active)
          ..add('reason', reason))
        .toString();
  }
}

class ChannelInteractiveStatusChatsInnerBuilder
    implements
        Builder<
          ChannelInteractiveStatusChatsInner,
          ChannelInteractiveStatusChatsInnerBuilder
        > {
  _$ChannelInteractiveStatusChatsInner? _$v;

  String? _chatId;
  String? get chatId => _$this._chatId;
  set chatId(String? chatId) => _$this._chatId = chatId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ChannelInteractiveStatusChatsInnerScopeEnum? _scope;
  ChannelInteractiveStatusChatsInnerScopeEnum? get scope => _$this._scope;
  set scope(ChannelInteractiveStatusChatsInnerScopeEnum? scope) =>
      _$this._scope = scope;

  ListBuilder<String>? _userIds;
  ListBuilder<String> get userIds => _$this._userIds ??= ListBuilder<String>();
  set userIds(ListBuilder<String>? userIds) => _$this._userIds = userIds;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ChannelInteractiveStatusChatsInnerBuilder() {
    ChannelInteractiveStatusChatsInner._defaults(this);
  }

  ChannelInteractiveStatusChatsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chatId = $v.chatId;
      _name = $v.name;
      _scope = $v.scope;
      _userIds = $v.userIds?.toBuilder();
      _privateAccess = $v.privateAccess;
      _active = $v.active;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelInteractiveStatusChatsInner other) {
    _$v = other as _$ChannelInteractiveStatusChatsInner;
  }

  @override
  void update(
    void Function(ChannelInteractiveStatusChatsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ChannelInteractiveStatusChatsInner build() => _build();

  _$ChannelInteractiveStatusChatsInner _build() {
    _$ChannelInteractiveStatusChatsInner _$result;
    try {
      _$result =
          _$v ??
          _$ChannelInteractiveStatusChatsInner._(
            chatId: BuiltValueNullFieldError.checkNotNull(
              chatId,
              r'ChannelInteractiveStatusChatsInner',
              'chatId',
            ),
            name: name,
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'ChannelInteractiveStatusChatsInner',
              'scope',
            ),
            userIds: _userIds?.build(),
            privateAccess: privateAccess,
            active: BuiltValueNullFieldError.checkNotNull(
              active,
              r'ChannelInteractiveStatusChatsInner',
              'active',
            ),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userIds';
        _userIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChannelInteractiveStatusChatsInner',
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
