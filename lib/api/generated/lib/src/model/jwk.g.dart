// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwk.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JwkKtyEnum _$jwkKtyEnum_OKP = const JwkKtyEnum._('OKP');

JwkKtyEnum _$jwkKtyEnumValueOf(String name) {
  switch (name) {
    case 'OKP':
      return _$jwkKtyEnum_OKP;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JwkKtyEnum> _$jwkKtyEnumValues = BuiltSet<JwkKtyEnum>(
  const <JwkKtyEnum>[_$jwkKtyEnum_OKP],
);

const JwkCrvEnum _$jwkCrvEnum_ed25519 = const JwkCrvEnum._('ed25519');

JwkCrvEnum _$jwkCrvEnumValueOf(String name) {
  switch (name) {
    case 'ed25519':
      return _$jwkCrvEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JwkCrvEnum> _$jwkCrvEnumValues = BuiltSet<JwkCrvEnum>(
  const <JwkCrvEnum>[_$jwkCrvEnum_ed25519],
);

const JwkUseEnum _$jwkUseEnum_sig = const JwkUseEnum._('sig');

JwkUseEnum _$jwkUseEnumValueOf(String name) {
  switch (name) {
    case 'sig':
      return _$jwkUseEnum_sig;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JwkUseEnum> _$jwkUseEnumValues = BuiltSet<JwkUseEnum>(
  const <JwkUseEnum>[_$jwkUseEnum_sig],
);

const JwkAlgEnum _$jwkAlgEnum_ed25519 = const JwkAlgEnum._('ed25519');
const JwkAlgEnum _$jwkAlgEnum_edDSA = const JwkAlgEnum._('edDSA');

JwkAlgEnum _$jwkAlgEnumValueOf(String name) {
  switch (name) {
    case 'ed25519':
      return _$jwkAlgEnum_ed25519;
    case 'edDSA':
      return _$jwkAlgEnum_edDSA;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JwkAlgEnum> _$jwkAlgEnumValues = BuiltSet<JwkAlgEnum>(
  const <JwkAlgEnum>[_$jwkAlgEnum_ed25519, _$jwkAlgEnum_edDSA],
);

Serializer<JwkKtyEnum> _$jwkKtyEnumSerializer = _$JwkKtyEnumSerializer();
Serializer<JwkCrvEnum> _$jwkCrvEnumSerializer = _$JwkCrvEnumSerializer();
Serializer<JwkUseEnum> _$jwkUseEnumSerializer = _$JwkUseEnumSerializer();
Serializer<JwkAlgEnum> _$jwkAlgEnumSerializer = _$JwkAlgEnumSerializer();

class _$JwkKtyEnumSerializer implements PrimitiveSerializer<JwkKtyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OKP': 'OKP',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OKP': 'OKP',
  };

  @override
  final Iterable<Type> types = const <Type>[JwkKtyEnum];
  @override
  final String wireName = 'JwkKtyEnum';

  @override
  Object serialize(
    Serializers serializers,
    JwkKtyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  JwkKtyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => JwkKtyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$JwkCrvEnumSerializer implements PrimitiveSerializer<JwkCrvEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ed25519': 'Ed25519',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Ed25519': 'ed25519',
  };

  @override
  final Iterable<Type> types = const <Type>[JwkCrvEnum];
  @override
  final String wireName = 'JwkCrvEnum';

  @override
  Object serialize(
    Serializers serializers,
    JwkCrvEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  JwkCrvEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => JwkCrvEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$JwkUseEnumSerializer implements PrimitiveSerializer<JwkUseEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sig': 'sig',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sig': 'sig',
  };

  @override
  final Iterable<Type> types = const <Type>[JwkUseEnum];
  @override
  final String wireName = 'JwkUseEnum';

  @override
  Object serialize(
    Serializers serializers,
    JwkUseEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  JwkUseEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => JwkUseEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$JwkAlgEnumSerializer implements PrimitiveSerializer<JwkAlgEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ed25519': 'Ed25519',
    'edDSA': 'EdDSA',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Ed25519': 'ed25519',
    'EdDSA': 'edDSA',
  };

  @override
  final Iterable<Type> types = const <Type>[JwkAlgEnum];
  @override
  final String wireName = 'JwkAlgEnum';

  @override
  Object serialize(
    Serializers serializers,
    JwkAlgEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  JwkAlgEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => JwkAlgEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Jwk extends Jwk {
  @override
  final JwkKtyEnum kty;
  @override
  final JwkCrvEnum crv;
  @override
  final String x;
  @override
  final String kid;
  @override
  final JwkUseEnum use;
  @override
  final JwkAlgEnum alg;

  factory _$Jwk([void Function(JwkBuilder)? updates]) =>
      (JwkBuilder()..update(updates))._build();

  _$Jwk._({
    required this.kty,
    required this.crv,
    required this.x,
    required this.kid,
    required this.use,
    required this.alg,
  }) : super._();
  @override
  Jwk rebuild(void Function(JwkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwkBuilder toBuilder() => JwkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Jwk &&
        kty == other.kty &&
        crv == other.crv &&
        x == other.x &&
        kid == other.kid &&
        use == other.use &&
        alg == other.alg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kty.hashCode);
    _$hash = $jc(_$hash, crv.hashCode);
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, kid.hashCode);
    _$hash = $jc(_$hash, use.hashCode);
    _$hash = $jc(_$hash, alg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Jwk')
          ..add('kty', kty)
          ..add('crv', crv)
          ..add('x', x)
          ..add('kid', kid)
          ..add('use', use)
          ..add('alg', alg))
        .toString();
  }
}

class JwkBuilder implements Builder<Jwk, JwkBuilder> {
  _$Jwk? _$v;

  JwkKtyEnum? _kty;
  JwkKtyEnum? get kty => _$this._kty;
  set kty(JwkKtyEnum? kty) => _$this._kty = kty;

  JwkCrvEnum? _crv;
  JwkCrvEnum? get crv => _$this._crv;
  set crv(JwkCrvEnum? crv) => _$this._crv = crv;

  String? _x;
  String? get x => _$this._x;
  set x(String? x) => _$this._x = x;

  String? _kid;
  String? get kid => _$this._kid;
  set kid(String? kid) => _$this._kid = kid;

  JwkUseEnum? _use;
  JwkUseEnum? get use => _$this._use;
  set use(JwkUseEnum? use) => _$this._use = use;

  JwkAlgEnum? _alg;
  JwkAlgEnum? get alg => _$this._alg;
  set alg(JwkAlgEnum? alg) => _$this._alg = alg;

  JwkBuilder() {
    Jwk._defaults(this);
  }

  JwkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kty = $v.kty;
      _crv = $v.crv;
      _x = $v.x;
      _kid = $v.kid;
      _use = $v.use;
      _alg = $v.alg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Jwk other) {
    _$v = other as _$Jwk;
  }

  @override
  void update(void Function(JwkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Jwk build() => _build();

  _$Jwk _build() {
    final _$result =
        _$v ??
        _$Jwk._(
          kty: BuiltValueNullFieldError.checkNotNull(kty, r'Jwk', 'kty'),
          crv: BuiltValueNullFieldError.checkNotNull(crv, r'Jwk', 'crv'),
          x: BuiltValueNullFieldError.checkNotNull(x, r'Jwk', 'x'),
          kid: BuiltValueNullFieldError.checkNotNull(kid, r'Jwk', 'kid'),
          use: BuiltValueNullFieldError.checkNotNull(use, r'Jwk', 'use'),
          alg: BuiltValueNullFieldError.checkNotNull(alg, r'Jwk', 'alg'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
