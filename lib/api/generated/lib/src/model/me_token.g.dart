// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MeTokenScopeEnum _$meTokenScopeEnum_read = const MeTokenScopeEnum._(
  'read',
);
const MeTokenScopeEnum _$meTokenScopeEnum_agent = const MeTokenScopeEnum._(
  'agent',
);
const MeTokenScopeEnum _$meTokenScopeEnum_admin = const MeTokenScopeEnum._(
  'admin',
);

MeTokenScopeEnum _$meTokenScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$meTokenScopeEnum_read;
    case 'agent':
      return _$meTokenScopeEnum_agent;
    case 'admin':
      return _$meTokenScopeEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MeTokenScopeEnum> _$meTokenScopeEnumValues =
    BuiltSet<MeTokenScopeEnum>(const <MeTokenScopeEnum>[
      _$meTokenScopeEnum_read,
      _$meTokenScopeEnum_agent,
      _$meTokenScopeEnum_admin,
    ]);

Serializer<MeTokenScopeEnum> _$meTokenScopeEnumSerializer =
    _$MeTokenScopeEnumSerializer();

class _$MeTokenScopeEnumSerializer
    implements PrimitiveSerializer<MeTokenScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[MeTokenScopeEnum];
  @override
  final String wireName = 'MeTokenScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    MeTokenScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MeTokenScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MeTokenScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MeToken extends MeToken {
  @override
  final String id;
  @override
  final String name;
  @override
  final MeTokenScopeEnum scope;
  @override
  final String? tokenPrefix;
  @override
  final DateTime? expiresAt;

  factory _$MeToken([void Function(MeTokenBuilder)? updates]) =>
      (MeTokenBuilder()..update(updates))._build();

  _$MeToken._({
    required this.id,
    required this.name,
    required this.scope,
    this.tokenPrefix,
    this.expiresAt,
  }) : super._();
  @override
  MeToken rebuild(void Function(MeTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeTokenBuilder toBuilder() => MeTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeToken &&
        id == other.id &&
        name == other.name &&
        scope == other.scope &&
        tokenPrefix == other.tokenPrefix &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, tokenPrefix.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeToken')
          ..add('id', id)
          ..add('name', name)
          ..add('scope', scope)
          ..add('tokenPrefix', tokenPrefix)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class MeTokenBuilder implements Builder<MeToken, MeTokenBuilder> {
  _$MeToken? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MeTokenScopeEnum? _scope;
  MeTokenScopeEnum? get scope => _$this._scope;
  set scope(MeTokenScopeEnum? scope) => _$this._scope = scope;

  String? _tokenPrefix;
  String? get tokenPrefix => _$this._tokenPrefix;
  set tokenPrefix(String? tokenPrefix) => _$this._tokenPrefix = tokenPrefix;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  MeTokenBuilder() {
    MeToken._defaults(this);
  }

  MeTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _scope = $v.scope;
      _tokenPrefix = $v.tokenPrefix;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeToken other) {
    _$v = other as _$MeToken;
  }

  @override
  void update(void Function(MeTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeToken build() => _build();

  _$MeToken _build() {
    final _$result =
        _$v ??
        _$MeToken._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'MeToken', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'MeToken', 'name'),
          scope: BuiltValueNullFieldError.checkNotNull(
            scope,
            r'MeToken',
            'scope',
          ),
          tokenPrefix: tokenPrefix,
          expiresAt: expiresAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
