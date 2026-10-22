// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationToken extends RegistrationToken {
  @override
  final String id;
  @override
  final String name;
  @override
  final String prefix;
  @override
  final DateTime? expiresAt;
  @override
  final int maxUses;
  @override
  final int uses;
  @override
  final String? sourceIdPrefix;
  @override
  final DateTime createdAt;

  factory _$RegistrationToken(
          [void Function(RegistrationTokenBuilder)? updates]) =>
      (RegistrationTokenBuilder()..update(updates))._build();

  _$RegistrationToken._(
      {required this.id,
      required this.name,
      required this.prefix,
      this.expiresAt,
      required this.maxUses,
      required this.uses,
      this.sourceIdPrefix,
      required this.createdAt})
      : super._();
  @override
  RegistrationToken rebuild(void Function(RegistrationTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationTokenBuilder toBuilder() =>
      RegistrationTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationToken &&
        id == other.id &&
        name == other.name &&
        prefix == other.prefix &&
        expiresAt == other.expiresAt &&
        maxUses == other.maxUses &&
        uses == other.uses &&
        sourceIdPrefix == other.sourceIdPrefix &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, maxUses.hashCode);
    _$hash = $jc(_$hash, uses.hashCode);
    _$hash = $jc(_$hash, sourceIdPrefix.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationToken')
          ..add('id', id)
          ..add('name', name)
          ..add('prefix', prefix)
          ..add('expiresAt', expiresAt)
          ..add('maxUses', maxUses)
          ..add('uses', uses)
          ..add('sourceIdPrefix', sourceIdPrefix)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class RegistrationTokenBuilder
    implements Builder<RegistrationToken, RegistrationTokenBuilder> {
  _$RegistrationToken? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  int? _maxUses;
  int? get maxUses => _$this._maxUses;
  set maxUses(int? maxUses) => _$this._maxUses = maxUses;

  int? _uses;
  int? get uses => _$this._uses;
  set uses(int? uses) => _$this._uses = uses;

  String? _sourceIdPrefix;
  String? get sourceIdPrefix => _$this._sourceIdPrefix;
  set sourceIdPrefix(String? sourceIdPrefix) =>
      _$this._sourceIdPrefix = sourceIdPrefix;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  RegistrationTokenBuilder() {
    RegistrationToken._defaults(this);
  }

  RegistrationTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _prefix = $v.prefix;
      _expiresAt = $v.expiresAt;
      _maxUses = $v.maxUses;
      _uses = $v.uses;
      _sourceIdPrefix = $v.sourceIdPrefix;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationToken other) {
    _$v = other as _$RegistrationToken;
  }

  @override
  void update(void Function(RegistrationTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationToken build() => _build();

  _$RegistrationToken _build() {
    final _$result = _$v ??
        _$RegistrationToken._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'RegistrationToken', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'RegistrationToken', 'name'),
          prefix: BuiltValueNullFieldError.checkNotNull(
              prefix, r'RegistrationToken', 'prefix'),
          expiresAt: expiresAt,
          maxUses: BuiltValueNullFieldError.checkNotNull(
              maxUses, r'RegistrationToken', 'maxUses'),
          uses: BuiltValueNullFieldError.checkNotNull(
              uses, r'RegistrationToken', 'uses'),
          sourceIdPrefix: sourceIdPrefix,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'RegistrationToken', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
