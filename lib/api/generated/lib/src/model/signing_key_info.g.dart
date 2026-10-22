// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signing_key_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SigningKeyInfoAlgEnum _$signingKeyInfoAlgEnum_ed25519 =
    const SigningKeyInfoAlgEnum._('ed25519');
const SigningKeyInfoAlgEnum _$signingKeyInfoAlgEnum_edDSA =
    const SigningKeyInfoAlgEnum._('edDSA');

SigningKeyInfoAlgEnum _$signingKeyInfoAlgEnumValueOf(String name) {
  switch (name) {
    case 'ed25519':
      return _$signingKeyInfoAlgEnum_ed25519;
    case 'edDSA':
      return _$signingKeyInfoAlgEnum_edDSA;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SigningKeyInfoAlgEnum> _$signingKeyInfoAlgEnumValues =
    BuiltSet<SigningKeyInfoAlgEnum>(const <SigningKeyInfoAlgEnum>[
  _$signingKeyInfoAlgEnum_ed25519,
  _$signingKeyInfoAlgEnum_edDSA,
]);

const SigningKeyInfoStatusEnum _$signingKeyInfoStatusEnum_active =
    const SigningKeyInfoStatusEnum._('active');
const SigningKeyInfoStatusEnum _$signingKeyInfoStatusEnum_retired =
    const SigningKeyInfoStatusEnum._('retired');

SigningKeyInfoStatusEnum _$signingKeyInfoStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$signingKeyInfoStatusEnum_active;
    case 'retired':
      return _$signingKeyInfoStatusEnum_retired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SigningKeyInfoStatusEnum> _$signingKeyInfoStatusEnumValues =
    BuiltSet<SigningKeyInfoStatusEnum>(const <SigningKeyInfoStatusEnum>[
  _$signingKeyInfoStatusEnum_active,
  _$signingKeyInfoStatusEnum_retired,
]);

Serializer<SigningKeyInfoAlgEnum> _$signingKeyInfoAlgEnumSerializer =
    _$SigningKeyInfoAlgEnumSerializer();
Serializer<SigningKeyInfoStatusEnum> _$signingKeyInfoStatusEnumSerializer =
    _$SigningKeyInfoStatusEnumSerializer();

class _$SigningKeyInfoAlgEnumSerializer
    implements PrimitiveSerializer<SigningKeyInfoAlgEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ed25519': 'Ed25519',
    'edDSA': 'EdDSA',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Ed25519': 'ed25519',
    'EdDSA': 'edDSA',
  };

  @override
  final Iterable<Type> types = const <Type>[SigningKeyInfoAlgEnum];
  @override
  final String wireName = 'SigningKeyInfoAlgEnum';

  @override
  Object serialize(Serializers serializers, SigningKeyInfoAlgEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SigningKeyInfoAlgEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SigningKeyInfoAlgEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SigningKeyInfoStatusEnumSerializer
    implements PrimitiveSerializer<SigningKeyInfoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'retired': 'retired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'retired': 'retired',
  };

  @override
  final Iterable<Type> types = const <Type>[SigningKeyInfoStatusEnum];
  @override
  final String wireName = 'SigningKeyInfoStatusEnum';

  @override
  Object serialize(Serializers serializers, SigningKeyInfoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SigningKeyInfoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SigningKeyInfoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SigningKeyInfo extends SigningKeyInfo {
  @override
  final String kid;
  @override
  final SigningKeyInfoAlgEnum alg;
  @override
  final SigningKeyInfoStatusEnum status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? retiredAt;
  @override
  final DateTime? removeAfter;
  @override
  final Jwk jwk;

  factory _$SigningKeyInfo([void Function(SigningKeyInfoBuilder)? updates]) =>
      (SigningKeyInfoBuilder()..update(updates))._build();

  _$SigningKeyInfo._(
      {required this.kid,
      required this.alg,
      required this.status,
      required this.createdAt,
      this.retiredAt,
      this.removeAfter,
      required this.jwk})
      : super._();
  @override
  SigningKeyInfo rebuild(void Function(SigningKeyInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SigningKeyInfoBuilder toBuilder() => SigningKeyInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SigningKeyInfo &&
        kid == other.kid &&
        alg == other.alg &&
        status == other.status &&
        createdAt == other.createdAt &&
        retiredAt == other.retiredAt &&
        removeAfter == other.removeAfter &&
        jwk == other.jwk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kid.hashCode);
    _$hash = $jc(_$hash, alg.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, retiredAt.hashCode);
    _$hash = $jc(_$hash, removeAfter.hashCode);
    _$hash = $jc(_$hash, jwk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SigningKeyInfo')
          ..add('kid', kid)
          ..add('alg', alg)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('retiredAt', retiredAt)
          ..add('removeAfter', removeAfter)
          ..add('jwk', jwk))
        .toString();
  }
}

class SigningKeyInfoBuilder
    implements Builder<SigningKeyInfo, SigningKeyInfoBuilder> {
  _$SigningKeyInfo? _$v;

  String? _kid;
  String? get kid => _$this._kid;
  set kid(String? kid) => _$this._kid = kid;

  SigningKeyInfoAlgEnum? _alg;
  SigningKeyInfoAlgEnum? get alg => _$this._alg;
  set alg(SigningKeyInfoAlgEnum? alg) => _$this._alg = alg;

  SigningKeyInfoStatusEnum? _status;
  SigningKeyInfoStatusEnum? get status => _$this._status;
  set status(SigningKeyInfoStatusEnum? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _retiredAt;
  DateTime? get retiredAt => _$this._retiredAt;
  set retiredAt(DateTime? retiredAt) => _$this._retiredAt = retiredAt;

  DateTime? _removeAfter;
  DateTime? get removeAfter => _$this._removeAfter;
  set removeAfter(DateTime? removeAfter) => _$this._removeAfter = removeAfter;

  JwkBuilder? _jwk;
  JwkBuilder get jwk => _$this._jwk ??= JwkBuilder();
  set jwk(JwkBuilder? jwk) => _$this._jwk = jwk;

  SigningKeyInfoBuilder() {
    SigningKeyInfo._defaults(this);
  }

  SigningKeyInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kid = $v.kid;
      _alg = $v.alg;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _retiredAt = $v.retiredAt;
      _removeAfter = $v.removeAfter;
      _jwk = $v.jwk.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SigningKeyInfo other) {
    _$v = other as _$SigningKeyInfo;
  }

  @override
  void update(void Function(SigningKeyInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SigningKeyInfo build() => _build();

  _$SigningKeyInfo _build() {
    _$SigningKeyInfo _$result;
    try {
      _$result = _$v ??
          _$SigningKeyInfo._(
            kid: BuiltValueNullFieldError.checkNotNull(
                kid, r'SigningKeyInfo', 'kid'),
            alg: BuiltValueNullFieldError.checkNotNull(
                alg, r'SigningKeyInfo', 'alg'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SigningKeyInfo', 'status'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'SigningKeyInfo', 'createdAt'),
            retiredAt: retiredAt,
            removeAfter: removeAfter,
            jwk: jwk.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'jwk';
        jwk.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SigningKeyInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
