// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing_code_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PairingCodeInputScopeEnum _$pairingCodeInputScopeEnum_read =
    const PairingCodeInputScopeEnum._('read');
const PairingCodeInputScopeEnum _$pairingCodeInputScopeEnum_agent =
    const PairingCodeInputScopeEnum._('agent');
const PairingCodeInputScopeEnum
_$pairingCodeInputScopeEnum_unknownDefaultOpenApi =
    const PairingCodeInputScopeEnum._('unknownDefaultOpenApi');

PairingCodeInputScopeEnum _$pairingCodeInputScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$pairingCodeInputScopeEnum_read;
    case 'agent':
      return _$pairingCodeInputScopeEnum_agent;
    case 'unknownDefaultOpenApi':
      return _$pairingCodeInputScopeEnum_unknownDefaultOpenApi;
    default:
      return _$pairingCodeInputScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PairingCodeInputScopeEnum> _$pairingCodeInputScopeEnumValues =
    BuiltSet<PairingCodeInputScopeEnum>(const <PairingCodeInputScopeEnum>[
      _$pairingCodeInputScopeEnum_read,
      _$pairingCodeInputScopeEnum_agent,
      _$pairingCodeInputScopeEnum_unknownDefaultOpenApi,
    ]);

Serializer<PairingCodeInputScopeEnum> _$pairingCodeInputScopeEnumSerializer =
    _$PairingCodeInputScopeEnumSerializer();

class _$PairingCodeInputScopeEnumSerializer
    implements PrimitiveSerializer<PairingCodeInputScopeEnum> {
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
  final Iterable<Type> types = const <Type>[PairingCodeInputScopeEnum];
  @override
  final String wireName = 'PairingCodeInputScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PairingCodeInputScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PairingCodeInputScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PairingCodeInputScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PairingCodeInput extends PairingCodeInput {
  @override
  final String name;
  @override
  final PairingCodeInputScopeEnum scope;
  @override
  final ReadRestriction? restrictions;
  @override
  final String? ttl;
  @override
  final String? principalId;
  @override
  final bool? privateAccess;

  factory _$PairingCodeInput([
    void Function(PairingCodeInputBuilder)? updates,
  ]) => (PairingCodeInputBuilder()..update(updates))._build();

  _$PairingCodeInput._({
    required this.name,
    required this.scope,
    this.restrictions,
    this.ttl,
    this.principalId,
    this.privateAccess,
  }) : super._();
  @override
  PairingCodeInput rebuild(void Function(PairingCodeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PairingCodeInputBuilder toBuilder() =>
      PairingCodeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PairingCodeInput &&
        name == other.name &&
        scope == other.scope &&
        restrictions == other.restrictions &&
        ttl == other.ttl &&
        principalId == other.principalId &&
        privateAccess == other.privateAccess;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, privateAccess.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PairingCodeInput')
          ..add('name', name)
          ..add('scope', scope)
          ..add('restrictions', restrictions)
          ..add('ttl', ttl)
          ..add('principalId', principalId)
          ..add('privateAccess', privateAccess))
        .toString();
  }
}

class PairingCodeInputBuilder
    implements Builder<PairingCodeInput, PairingCodeInputBuilder> {
  _$PairingCodeInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PairingCodeInputScopeEnum? _scope;
  PairingCodeInputScopeEnum? get scope => _$this._scope;
  set scope(PairingCodeInputScopeEnum? scope) => _$this._scope = scope;

  ReadRestrictionBuilder? _restrictions;
  ReadRestrictionBuilder get restrictions =>
      _$this._restrictions ??= ReadRestrictionBuilder();
  set restrictions(ReadRestrictionBuilder? restrictions) =>
      _$this._restrictions = restrictions;

  String? _ttl;
  String? get ttl => _$this._ttl;
  set ttl(String? ttl) => _$this._ttl = ttl;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  PairingCodeInputBuilder() {
    PairingCodeInput._defaults(this);
  }

  PairingCodeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _scope = $v.scope;
      _restrictions = $v.restrictions?.toBuilder();
      _ttl = $v.ttl;
      _principalId = $v.principalId;
      _privateAccess = $v.privateAccess;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PairingCodeInput other) {
    _$v = other as _$PairingCodeInput;
  }

  @override
  void update(void Function(PairingCodeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PairingCodeInput build() => _build();

  _$PairingCodeInput _build() {
    _$PairingCodeInput _$result;
    try {
      _$result =
          _$v ??
          _$PairingCodeInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'PairingCodeInput',
              'name',
            ),
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'PairingCodeInput',
              'scope',
            ),
            restrictions: _restrictions?.build(),
            ttl: ttl,
            principalId: principalId,
            privateAccess: privateAccess,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restrictions';
        _restrictions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PairingCodeInput',
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
