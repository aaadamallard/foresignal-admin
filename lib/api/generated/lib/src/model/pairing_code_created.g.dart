// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing_code_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PairingCodeCreatedScopeEnum _$pairingCodeCreatedScopeEnum_read =
    const PairingCodeCreatedScopeEnum._('read');
const PairingCodeCreatedScopeEnum _$pairingCodeCreatedScopeEnum_agent =
    const PairingCodeCreatedScopeEnum._('agent');

PairingCodeCreatedScopeEnum _$pairingCodeCreatedScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$pairingCodeCreatedScopeEnum_read;
    case 'agent':
      return _$pairingCodeCreatedScopeEnum_agent;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PairingCodeCreatedScopeEnum>
_$pairingCodeCreatedScopeEnumValues = BuiltSet<PairingCodeCreatedScopeEnum>(
  const <PairingCodeCreatedScopeEnum>[
    _$pairingCodeCreatedScopeEnum_read,
    _$pairingCodeCreatedScopeEnum_agent,
  ],
);

Serializer<PairingCodeCreatedScopeEnum>
_$pairingCodeCreatedScopeEnumSerializer =
    _$PairingCodeCreatedScopeEnumSerializer();

class _$PairingCodeCreatedScopeEnumSerializer
    implements PrimitiveSerializer<PairingCodeCreatedScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
  };

  @override
  final Iterable<Type> types = const <Type>[PairingCodeCreatedScopeEnum];
  @override
  final String wireName = 'PairingCodeCreatedScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PairingCodeCreatedScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PairingCodeCreatedScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PairingCodeCreatedScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PairingCodeCreated extends PairingCodeCreated {
  @override
  final String id;
  @override
  final String name;
  @override
  final PairingCodeCreatedScopeEnum scope;
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
  @override
  final String code;
  @override
  final String qrPayload;

  factory _$PairingCodeCreated([
    void Function(PairingCodeCreatedBuilder)? updates,
  ]) => (PairingCodeCreatedBuilder()..update(updates))._build();

  _$PairingCodeCreated._({
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
    required this.code,
    required this.qrPayload,
  }) : super._();
  @override
  PairingCodeCreated rebuild(
    void Function(PairingCodeCreatedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PairingCodeCreatedBuilder toBuilder() =>
      PairingCodeCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PairingCodeCreated &&
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
        claimedTokenId == other.claimedTokenId &&
        code == other.code &&
        qrPayload == other.qrPayload;
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
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, qrPayload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PairingCodeCreated')
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
          ..add('claimedTokenId', claimedTokenId)
          ..add('code', code)
          ..add('qrPayload', qrPayload))
        .toString();
  }
}

class PairingCodeCreatedBuilder
    implements Builder<PairingCodeCreated, PairingCodeCreatedBuilder> {
  _$PairingCodeCreated? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PairingCodeCreatedScopeEnum? _scope;
  PairingCodeCreatedScopeEnum? get scope => _$this._scope;
  set scope(PairingCodeCreatedScopeEnum? scope) => _$this._scope = scope;

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

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _qrPayload;
  String? get qrPayload => _$this._qrPayload;
  set qrPayload(String? qrPayload) => _$this._qrPayload = qrPayload;

  PairingCodeCreatedBuilder() {
    PairingCodeCreated._defaults(this);
  }

  PairingCodeCreatedBuilder get _$this {
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
      _code = $v.code;
      _qrPayload = $v.qrPayload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PairingCodeCreated other) {
    _$v = other as _$PairingCodeCreated;
  }

  @override
  void update(void Function(PairingCodeCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PairingCodeCreated build() => _build();

  _$PairingCodeCreated _build() {
    _$PairingCodeCreated _$result;
    try {
      _$result =
          _$v ??
          _$PairingCodeCreated._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'PairingCodeCreated',
              'id',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'PairingCodeCreated',
              'name',
            ),
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'PairingCodeCreated',
              'scope',
            ),
            restrictions: _restrictions?.build(),
            principalId: principalId,
            privateAccess: privateAccess,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'PairingCodeCreated',
              'createdAt',
            ),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'PairingCodeCreated',
              'expiresAt',
            ),
            createdByTokenId: createdByTokenId,
            claimedAt: claimedAt,
            claimedTokenId: claimedTokenId,
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'PairingCodeCreated',
              'code',
            ),
            qrPayload: BuiltValueNullFieldError.checkNotNull(
              qrPayload,
              r'PairingCodeCreated',
              'qrPayload',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restrictions';
        _restrictions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PairingCodeCreated',
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
