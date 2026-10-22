// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature_verifier_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignatureVerifierConfigSchemeEnum
_$signatureVerifierConfigSchemeEnum_none =
    const SignatureVerifierConfigSchemeEnum._('none');
const SignatureVerifierConfigSchemeEnum
_$signatureVerifierConfigSchemeEnum_hmacSha256 =
    const SignatureVerifierConfigSchemeEnum._('hmacSha256');
const SignatureVerifierConfigSchemeEnum
_$signatureVerifierConfigSchemeEnum_standardWebhooks =
    const SignatureVerifierConfigSchemeEnum._('standardWebhooks');
const SignatureVerifierConfigSchemeEnum
_$signatureVerifierConfigSchemeEnum_foresignal =
    const SignatureVerifierConfigSchemeEnum._('foresignal');

SignatureVerifierConfigSchemeEnum _$signatureVerifierConfigSchemeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'none':
      return _$signatureVerifierConfigSchemeEnum_none;
    case 'hmacSha256':
      return _$signatureVerifierConfigSchemeEnum_hmacSha256;
    case 'standardWebhooks':
      return _$signatureVerifierConfigSchemeEnum_standardWebhooks;
    case 'foresignal':
      return _$signatureVerifierConfigSchemeEnum_foresignal;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignatureVerifierConfigSchemeEnum>
_$signatureVerifierConfigSchemeEnumValues =
    BuiltSet<SignatureVerifierConfigSchemeEnum>(
      const <SignatureVerifierConfigSchemeEnum>[
        _$signatureVerifierConfigSchemeEnum_none,
        _$signatureVerifierConfigSchemeEnum_hmacSha256,
        _$signatureVerifierConfigSchemeEnum_standardWebhooks,
        _$signatureVerifierConfigSchemeEnum_foresignal,
      ],
    );

Serializer<SignatureVerifierConfigSchemeEnum>
_$signatureVerifierConfigSchemeEnumSerializer =
    _$SignatureVerifierConfigSchemeEnumSerializer();

class _$SignatureVerifierConfigSchemeEnumSerializer
    implements PrimitiveSerializer<SignatureVerifierConfigSchemeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'hmacSha256': 'hmac-sha256',
    'standardWebhooks': 'standard-webhooks',
    'foresignal': 'foresignal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'hmac-sha256': 'hmacSha256',
    'standard-webhooks': 'standardWebhooks',
    'foresignal': 'foresignal',
  };

  @override
  final Iterable<Type> types = const <Type>[SignatureVerifierConfigSchemeEnum];
  @override
  final String wireName = 'SignatureVerifierConfigSchemeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SignatureVerifierConfigSchemeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SignatureVerifierConfigSchemeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SignatureVerifierConfigSchemeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SignatureVerifierConfig extends SignatureVerifierConfig {
  @override
  final SignatureVerifierConfigSchemeEnum scheme;
  @override
  final String? header;
  @override
  final String? secret;
  @override
  final bool? secretSet;
  @override
  final bool? keyOptional;

  factory _$SignatureVerifierConfig([
    void Function(SignatureVerifierConfigBuilder)? updates,
  ]) => (SignatureVerifierConfigBuilder()..update(updates))._build();

  _$SignatureVerifierConfig._({
    required this.scheme,
    this.header,
    this.secret,
    this.secretSet,
    this.keyOptional,
  }) : super._();
  @override
  SignatureVerifierConfig rebuild(
    void Function(SignatureVerifierConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SignatureVerifierConfigBuilder toBuilder() =>
      SignatureVerifierConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignatureVerifierConfig &&
        scheme == other.scheme &&
        header == other.header &&
        secret == other.secret &&
        secretSet == other.secretSet &&
        keyOptional == other.keyOptional;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scheme.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jc(_$hash, secretSet.hashCode);
    _$hash = $jc(_$hash, keyOptional.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignatureVerifierConfig')
          ..add('scheme', scheme)
          ..add('header', header)
          ..add('secret', secret)
          ..add('secretSet', secretSet)
          ..add('keyOptional', keyOptional))
        .toString();
  }
}

class SignatureVerifierConfigBuilder
    implements
        Builder<SignatureVerifierConfig, SignatureVerifierConfigBuilder> {
  _$SignatureVerifierConfig? _$v;

  SignatureVerifierConfigSchemeEnum? _scheme;
  SignatureVerifierConfigSchemeEnum? get scheme => _$this._scheme;
  set scheme(SignatureVerifierConfigSchemeEnum? scheme) =>
      _$this._scheme = scheme;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  bool? _secretSet;
  bool? get secretSet => _$this._secretSet;
  set secretSet(bool? secretSet) => _$this._secretSet = secretSet;

  bool? _keyOptional;
  bool? get keyOptional => _$this._keyOptional;
  set keyOptional(bool? keyOptional) => _$this._keyOptional = keyOptional;

  SignatureVerifierConfigBuilder() {
    SignatureVerifierConfig._defaults(this);
  }

  SignatureVerifierConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scheme = $v.scheme;
      _header = $v.header;
      _secret = $v.secret;
      _secretSet = $v.secretSet;
      _keyOptional = $v.keyOptional;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignatureVerifierConfig other) {
    _$v = other as _$SignatureVerifierConfig;
  }

  @override
  void update(void Function(SignatureVerifierConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignatureVerifierConfig build() => _build();

  _$SignatureVerifierConfig _build() {
    final _$result =
        _$v ??
        _$SignatureVerifierConfig._(
          scheme: BuiltValueNullFieldError.checkNotNull(
            scheme,
            r'SignatureVerifierConfig',
            'scheme',
          ),
          header: header,
          secret: secret,
          secretSet: secretSet,
          keyOptional: keyOptional,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
