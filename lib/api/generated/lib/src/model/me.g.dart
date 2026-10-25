// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MeScopesEnum _$meScopesEnum_read = const MeScopesEnum._('read');
const MeScopesEnum _$meScopesEnum_agent = const MeScopesEnum._('agent');
const MeScopesEnum _$meScopesEnum_admin = const MeScopesEnum._('admin');
const MeScopesEnum _$meScopesEnum_unknownDefaultOpenApi = const MeScopesEnum._(
  'unknownDefaultOpenApi',
);

MeScopesEnum _$meScopesEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$meScopesEnum_read;
    case 'agent':
      return _$meScopesEnum_agent;
    case 'admin':
      return _$meScopesEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$meScopesEnum_unknownDefaultOpenApi;
    default:
      return _$meScopesEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MeScopesEnum> _$meScopesEnumValues =
    BuiltSet<MeScopesEnum>(const <MeScopesEnum>[
      _$meScopesEnum_read,
      _$meScopesEnum_agent,
      _$meScopesEnum_admin,
      _$meScopesEnum_unknownDefaultOpenApi,
    ]);

Serializer<MeScopesEnum> _$meScopesEnumSerializer = _$MeScopesEnumSerializer();

class _$MeScopesEnumSerializer implements PrimitiveSerializer<MeScopesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MeScopesEnum];
  @override
  final String wireName = 'MeScopesEnum';

  @override
  Object serialize(
    Serializers serializers,
    MeScopesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MeScopesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MeScopesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Me extends Me {
  @override
  final Principal principal;
  @override
  final MeToken token;
  @override
  final BuiltList<MeScopesEnum> scopes;
  @override
  final BuiltList<MeGroupsInner> groups;
  @override
  final BuiltList<NotificationPreference> notificationPreferences;
  @override
  final String? defaultTlp;

  factory _$Me([void Function(MeBuilder)? updates]) =>
      (MeBuilder()..update(updates))._build();

  _$Me._({
    required this.principal,
    required this.token,
    required this.scopes,
    required this.groups,
    required this.notificationPreferences,
    this.defaultTlp,
  }) : super._();
  @override
  Me rebuild(void Function(MeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeBuilder toBuilder() => MeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Me &&
        principal == other.principal &&
        token == other.token &&
        scopes == other.scopes &&
        groups == other.groups &&
        notificationPreferences == other.notificationPreferences &&
        defaultTlp == other.defaultTlp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, scopes.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, notificationPreferences.hashCode);
    _$hash = $jc(_$hash, defaultTlp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Me')
          ..add('principal', principal)
          ..add('token', token)
          ..add('scopes', scopes)
          ..add('groups', groups)
          ..add('notificationPreferences', notificationPreferences)
          ..add('defaultTlp', defaultTlp))
        .toString();
  }
}

class MeBuilder implements Builder<Me, MeBuilder> {
  _$Me? _$v;

  PrincipalBuilder? _principal;
  PrincipalBuilder get principal => _$this._principal ??= PrincipalBuilder();
  set principal(PrincipalBuilder? principal) => _$this._principal = principal;

  MeTokenBuilder? _token;
  MeTokenBuilder get token => _$this._token ??= MeTokenBuilder();
  set token(MeTokenBuilder? token) => _$this._token = token;

  ListBuilder<MeScopesEnum>? _scopes;
  ListBuilder<MeScopesEnum> get scopes =>
      _$this._scopes ??= ListBuilder<MeScopesEnum>();
  set scopes(ListBuilder<MeScopesEnum>? scopes) => _$this._scopes = scopes;

  ListBuilder<MeGroupsInner>? _groups;
  ListBuilder<MeGroupsInner> get groups =>
      _$this._groups ??= ListBuilder<MeGroupsInner>();
  set groups(ListBuilder<MeGroupsInner>? groups) => _$this._groups = groups;

  ListBuilder<NotificationPreference>? _notificationPreferences;
  ListBuilder<NotificationPreference> get notificationPreferences =>
      _$this._notificationPreferences ??= ListBuilder<NotificationPreference>();
  set notificationPreferences(
    ListBuilder<NotificationPreference>? notificationPreferences,
  ) => _$this._notificationPreferences = notificationPreferences;

  String? _defaultTlp;
  String? get defaultTlp => _$this._defaultTlp;
  set defaultTlp(String? defaultTlp) => _$this._defaultTlp = defaultTlp;

  MeBuilder() {
    Me._defaults(this);
  }

  MeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principal = $v.principal.toBuilder();
      _token = $v.token.toBuilder();
      _scopes = $v.scopes.toBuilder();
      _groups = $v.groups.toBuilder();
      _notificationPreferences = $v.notificationPreferences.toBuilder();
      _defaultTlp = $v.defaultTlp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Me other) {
    _$v = other as _$Me;
  }

  @override
  void update(void Function(MeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Me build() => _build();

  _$Me _build() {
    _$Me _$result;
    try {
      _$result =
          _$v ??
          _$Me._(
            principal: principal.build(),
            token: token.build(),
            scopes: scopes.build(),
            groups: groups.build(),
            notificationPreferences: notificationPreferences.build(),
            defaultTlp: defaultTlp,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'principal';
        principal.build();
        _$failedField = 'token';
        token.build();
        _$failedField = 'scopes';
        scopes.build();
        _$failedField = 'groups';
        groups.build();
        _$failedField = 'notificationPreferences';
        notificationPreferences.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Me', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
