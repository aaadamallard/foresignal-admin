// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_recovery_codes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaRecoveryCodes extends MfaRecoveryCodes {
  @override
  final BuiltList<String> codes;
  @override
  final DateTime generatedAt;

  factory _$MfaRecoveryCodes([
    void Function(MfaRecoveryCodesBuilder)? updates,
  ]) => (MfaRecoveryCodesBuilder()..update(updates))._build();

  _$MfaRecoveryCodes._({required this.codes, required this.generatedAt})
    : super._();
  @override
  MfaRecoveryCodes rebuild(void Function(MfaRecoveryCodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaRecoveryCodesBuilder toBuilder() =>
      MfaRecoveryCodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaRecoveryCodes &&
        codes == other.codes &&
        generatedAt == other.generatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codes.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MfaRecoveryCodes')
          ..add('codes', codes)
          ..add('generatedAt', generatedAt))
        .toString();
  }
}

class MfaRecoveryCodesBuilder
    implements Builder<MfaRecoveryCodes, MfaRecoveryCodesBuilder> {
  _$MfaRecoveryCodes? _$v;

  ListBuilder<String>? _codes;
  ListBuilder<String> get codes => _$this._codes ??= ListBuilder<String>();
  set codes(ListBuilder<String>? codes) => _$this._codes = codes;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  MfaRecoveryCodesBuilder() {
    MfaRecoveryCodes._defaults(this);
  }

  MfaRecoveryCodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codes = $v.codes.toBuilder();
      _generatedAt = $v.generatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaRecoveryCodes other) {
    _$v = other as _$MfaRecoveryCodes;
  }

  @override
  void update(void Function(MfaRecoveryCodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaRecoveryCodes build() => _build();

  _$MfaRecoveryCodes _build() {
    _$MfaRecoveryCodes _$result;
    try {
      _$result =
          _$v ??
          _$MfaRecoveryCodes._(
            codes: codes.build(),
            generatedAt: BuiltValueNullFieldError.checkNotNull(
              generatedAt,
              r'MfaRecoveryCodes',
              'generatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codes';
        codes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MfaRecoveryCodes',
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
