// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_enrollment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaEnrollment extends MfaEnrollment {
  @override
  final String secret;
  @override
  final String otpauthUri;
  @override
  final String? qrSvg;

  factory _$MfaEnrollment([void Function(MfaEnrollmentBuilder)? updates]) =>
      (MfaEnrollmentBuilder()..update(updates))._build();

  _$MfaEnrollment._({
    required this.secret,
    required this.otpauthUri,
    this.qrSvg,
  }) : super._();
  @override
  MfaEnrollment rebuild(void Function(MfaEnrollmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaEnrollmentBuilder toBuilder() => MfaEnrollmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaEnrollment &&
        secret == other.secret &&
        otpauthUri == other.otpauthUri &&
        qrSvg == other.qrSvg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jc(_$hash, otpauthUri.hashCode);
    _$hash = $jc(_$hash, qrSvg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MfaEnrollment')
          ..add('secret', secret)
          ..add('otpauthUri', otpauthUri)
          ..add('qrSvg', qrSvg))
        .toString();
  }
}

class MfaEnrollmentBuilder
    implements Builder<MfaEnrollment, MfaEnrollmentBuilder> {
  _$MfaEnrollment? _$v;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  String? _otpauthUri;
  String? get otpauthUri => _$this._otpauthUri;
  set otpauthUri(String? otpauthUri) => _$this._otpauthUri = otpauthUri;

  String? _qrSvg;
  String? get qrSvg => _$this._qrSvg;
  set qrSvg(String? qrSvg) => _$this._qrSvg = qrSvg;

  MfaEnrollmentBuilder() {
    MfaEnrollment._defaults(this);
  }

  MfaEnrollmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _secret = $v.secret;
      _otpauthUri = $v.otpauthUri;
      _qrSvg = $v.qrSvg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaEnrollment other) {
    _$v = other as _$MfaEnrollment;
  }

  @override
  void update(void Function(MfaEnrollmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaEnrollment build() => _build();

  _$MfaEnrollment _build() {
    final _$result =
        _$v ??
        _$MfaEnrollment._(
          secret: BuiltValueNullFieldError.checkNotNull(
            secret,
            r'MfaEnrollment',
            'secret',
          ),
          otpauthUri: BuiltValueNullFieldError.checkNotNull(
            otpauthUri,
            r'MfaEnrollment',
            'otpauthUri',
          ),
          qrSvg: qrSvg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
