// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing_claim.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PairingClaim extends PairingClaim {
  @override
  final String code;
  @override
  final DeviceInfo device;

  factory _$PairingClaim([void Function(PairingClaimBuilder)? updates]) =>
      (PairingClaimBuilder()..update(updates))._build();

  _$PairingClaim._({required this.code, required this.device}) : super._();
  @override
  PairingClaim rebuild(void Function(PairingClaimBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PairingClaimBuilder toBuilder() => PairingClaimBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PairingClaim &&
        code == other.code &&
        device == other.device;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PairingClaim')
          ..add('code', code)
          ..add('device', device))
        .toString();
  }
}

class PairingClaimBuilder
    implements Builder<PairingClaim, PairingClaimBuilder> {
  _$PairingClaim? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  DeviceInfoBuilder? _device;
  DeviceInfoBuilder get device => _$this._device ??= DeviceInfoBuilder();
  set device(DeviceInfoBuilder? device) => _$this._device = device;

  PairingClaimBuilder() {
    PairingClaim._defaults(this);
  }

  PairingClaimBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _device = $v.device.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PairingClaim other) {
    _$v = other as _$PairingClaim;
  }

  @override
  void update(void Function(PairingClaimBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PairingClaim build() => _build();

  _$PairingClaim _build() {
    _$PairingClaim _$result;
    try {
      _$result = _$v ??
          _$PairingClaim._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'PairingClaim', 'code'),
            device: device.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'device';
        device.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PairingClaim', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
