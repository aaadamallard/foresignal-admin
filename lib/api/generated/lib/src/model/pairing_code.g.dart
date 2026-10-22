// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PairingCodeScopeEnum _$pairingCodeScopeEnum_read =
    const PairingCodeScopeEnum._('read');
const PairingCodeScopeEnum _$pairingCodeScopeEnum_agent =
    const PairingCodeScopeEnum._('agent');

PairingCodeScopeEnum _$pairingCodeScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$pairingCodeScopeEnum_read;
    case 'agent':
      return _$pairingCodeScopeEnum_agent;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PairingCodeScopeEnum> _$pairingCodeScopeEnumValues =
    BuiltSet<PairingCodeScopeEnum>(const <PairingCodeScopeEnum>[
      _$pairingCodeScopeEnum_read,
      _$pairingCodeScopeEnum_agent,
    ]);

Serializer<PairingCodeScopeEnum> _$pairingCodeScopeEnumSerializer =
    _$PairingCodeScopeEnumSerializer();

class _$PairingCodeScopeEnumSerializer
    implements PrimitiveSerializer<PairingCodeScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
  };

  @override
  final Iterable<Type> types = const <Type>[PairingCodeScopeEnum];
  @override
  final String wireName = 'PairingCodeScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PairingCodeScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PairingCodeScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PairingCodeScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PairingCode extends PairingCode {
  @override
  final String id;
  @override
  final String name;
  @override
  final PairingCodeScopeEnum scope;
  @override
  final ReadRestriction? restrictions;
  @override
  final String? principalId;
  @override
  final bool? privateAccess;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final String? createdByTokenId;
  @override
  final DateTime? claimedAt;
  @override
  final String? claimedTokenId;

  factory _$PairingCode([void Function(PairingCodeBuilder)? updates]) =>
      (PairingCodeBuilder()..update(updates))._build();

  _$PairingCode._({
    required this.id,
    required this.name,
    required this.scope,
    this.restrictions,
    this.principalId,
    this.privateAccess,
    required this.createdAt,
    required this.expiresAt,
    this.createdByTokenId,
    this.claimedAt,
    this.claimedTokenId,
  }) : super._();
  @override
  PairingCode rebuild(void Function(PairingCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PairingCodeBuilder toBuilder() => PairingCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PairingCode &&
        id == other.id &&
        name == other.name &&
        scope == other.scope &&
        restrictions == other.restrictions &&
        principalId == other.principalId &&
        privateAccess == other.privateAccess &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        createdByTokenId == other.createdByTokenId &&
        claimedAt == other.claimedAt &&
        claimedTokenId == other.claimedTokenId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, privateAccess.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, createdByTokenId.hashCode);
    _$hash = $jc(_$hash, claimedAt.hashCode);
    _$hash = $jc(_$hash, claimedTokenId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PairingCode')
          ..add('id', id)
          ..add('name', name)
          ..add('scope', scope)
          ..add('restrictions', restrictions)
          ..add('principalId', principalId)
          ..add('privateAccess', privateAccess)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('createdByTokenId', createdByTokenId)
          ..add('claimedAt', claimedAt)
          ..add('claimedTokenId', claimedTokenId))
        .toString();
  }
}

class PairingCodeBuilder implements Builder<PairingCode, PairingCodeBuilder> {
  _$PairingCode? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PairingCodeScopeEnum? _scope;
  PairingCodeScopeEnum? get scope => _$this._scope;
  set scope(PairingCodeScopeEnum? scope) => _$this._scope = scope;

  ReadRestrictionBuilder? _restrictions;
  ReadRestrictionBuilder get restrictions =>
      _$this._restrictions ??= ReadRestrictionBuilder();
  set restrictions(ReadRestrictionBuilder? restrictions) =>
      _$this._restrictions = restrictions;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  String? _createdByTokenId;
  String? get createdByTokenId => _$this._createdByTokenId;
  set createdByTokenId(String? createdByTokenId) =>
      _$this._createdByTokenId = createdByTokenId;

  DateTime? _claimedAt;
  DateTime? get claimedAt => _$this._claimedAt;
  set claimedAt(DateTime? claimedAt) => _$this._claimedAt = claimedAt;

  String? _claimedTokenId;
  String? get claimedTokenId => _$this._claimedTokenId;
  set claimedTokenId(String? claimedTokenId) =>
      _$this._claimedTokenId = claimedTokenId;

  PairingCodeBuilder() {
    PairingCode._defaults(this);
  }

  PairingCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _scope = $v.scope;
      _restrictions = $v.restrictions?.toBuilder();
      _principalId = $v.principalId;
      _privateAccess = $v.privateAccess;
      _createdAt = $v.createdAt;
      _expiresAt = $v.expiresAt;
      _createdByTokenId = $v.createdByTokenId;
      _claimedAt = $v.claimedAt;
      _claimedTokenId = $v.claimedTokenId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PairingCode other) {
    _$v = other as _$PairingCode;
  }

  @override
  void update(void Function(PairingCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PairingCode build() => _build();

  _$PairingCode _build() {
    _$PairingCode _$result;
    try {
      _$result =
          _$v ??
          _$PairingCode._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PairingCode', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'PairingCode',
              'name',
            ),
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'PairingCode',
              'scope',
            ),
            restrictions: _restrictions?.build(),
            principalId: principalId,
            privateAccess: privateAccess,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'PairingCode',
              'createdAt',
            ),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'PairingCode',
              'expiresAt',
            ),
            createdByTokenId: createdByTokenId,
            claimedAt: claimedAt,
            claimedTokenId: claimedTokenId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restrictions';
        _restrictions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PairingCode',
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
