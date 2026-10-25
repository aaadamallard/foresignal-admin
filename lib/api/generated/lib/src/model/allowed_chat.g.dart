// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allowed_chat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AllowedChatScopeEnum _$allowedChatScopeEnum_read =
    const AllowedChatScopeEnum._('read');
const AllowedChatScopeEnum _$allowedChatScopeEnum_agent =
    const AllowedChatScopeEnum._('agent');
const AllowedChatScopeEnum _$allowedChatScopeEnum_unknownDefaultOpenApi =
    const AllowedChatScopeEnum._('unknownDefaultOpenApi');

AllowedChatScopeEnum _$allowedChatScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$allowedChatScopeEnum_read;
    case 'agent':
      return _$allowedChatScopeEnum_agent;
    case 'unknownDefaultOpenApi':
      return _$allowedChatScopeEnum_unknownDefaultOpenApi;
    default:
      return _$allowedChatScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AllowedChatScopeEnum> _$allowedChatScopeEnumValues =
    BuiltSet<AllowedChatScopeEnum>(const <AllowedChatScopeEnum>[
      _$allowedChatScopeEnum_read,
      _$allowedChatScopeEnum_agent,
      _$allowedChatScopeEnum_unknownDefaultOpenApi,
    ]);

Serializer<AllowedChatScopeEnum> _$allowedChatScopeEnumSerializer =
    _$AllowedChatScopeEnumSerializer();

class _$AllowedChatScopeEnumSerializer
    implements PrimitiveSerializer<AllowedChatScopeEnum> {
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
  final Iterable<Type> types = const <Type>[AllowedChatScopeEnum];
  @override
  final String wireName = 'AllowedChatScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AllowedChatScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AllowedChatScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AllowedChatScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AllowedChat extends AllowedChat {
  @override
  final String chatId;
  @override
  final String? name;
  @override
  final AllowedChatScopeEnum scope;
  @override
  final BuiltList<String>? userIds;
  @override
  final bool? privateAccess;

  factory _$AllowedChat([void Function(AllowedChatBuilder)? updates]) =>
      (AllowedChatBuilder()..update(updates))._build();

  _$AllowedChat._({
    required this.chatId,
    this.name,
    required this.scope,
    this.userIds,
    this.privateAccess,
  }) : super._();
  @override
  AllowedChat rebuild(void Function(AllowedChatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllowedChatBuilder toBuilder() => AllowedChatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllowedChat &&
        chatId == other.chatId &&
        name == other.name &&
        scope == other.scope &&
        userIds == other.userIds &&
        privateAccess == other.privateAccess;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chatId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jc(_$hash, privateAccess.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllowedChat')
          ..add('chatId', chatId)
          ..add('name', name)
          ..add('scope', scope)
          ..add('userIds', userIds)
          ..add('privateAccess', privateAccess))
        .toString();
  }
}

class AllowedChatBuilder implements Builder<AllowedChat, AllowedChatBuilder> {
  _$AllowedChat? _$v;

  String? _chatId;
  String? get chatId => _$this._chatId;
  set chatId(String? chatId) => _$this._chatId = chatId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AllowedChatScopeEnum? _scope;
  AllowedChatScopeEnum? get scope => _$this._scope;
  set scope(AllowedChatScopeEnum? scope) => _$this._scope = scope;

  ListBuilder<String>? _userIds;
  ListBuilder<String> get userIds => _$this._userIds ??= ListBuilder<String>();
  set userIds(ListBuilder<String>? userIds) => _$this._userIds = userIds;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  AllowedChatBuilder() {
    AllowedChat._defaults(this);
  }

  AllowedChatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chatId = $v.chatId;
      _name = $v.name;
      _scope = $v.scope;
      _userIds = $v.userIds?.toBuilder();
      _privateAccess = $v.privateAccess;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllowedChat other) {
    _$v = other as _$AllowedChat;
  }

  @override
  void update(void Function(AllowedChatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllowedChat build() => _build();

  _$AllowedChat _build() {
    _$AllowedChat _$result;
    try {
      _$result =
          _$v ??
          _$AllowedChat._(
            chatId: BuiltValueNullFieldError.checkNotNull(
              chatId,
              r'AllowedChat',
              'chatId',
            ),
            name: name,
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'AllowedChat',
              'scope',
            ),
            userIds: _userIds?.build(),
            privateAccess: privateAccess,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userIds';
        _userIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AllowedChat',
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
