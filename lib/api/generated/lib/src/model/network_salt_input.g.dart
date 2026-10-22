// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_salt_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkSaltInput extends NetworkSaltInput {
  @override
  final String networkId;
  @override
  final String saltRef;

  factory _$NetworkSaltInput(
          [void Function(NetworkSaltInputBuilder)? updates]) =>
      (NetworkSaltInputBuilder()..update(updates))._build();

  _$NetworkSaltInput._({required this.networkId, required this.saltRef})
      : super._();
  @override
  NetworkSaltInput rebuild(void Function(NetworkSaltInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkSaltInputBuilder toBuilder() =>
      NetworkSaltInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkSaltInput &&
        networkId == other.networkId &&
        saltRef == other.saltRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkId.hashCode);
    _$hash = $jc(_$hash, saltRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NetworkSaltInput')
          ..add('networkId', networkId)
          ..add('saltRef', saltRef))
        .toString();
  }
}

class NetworkSaltInputBuilder
    implements Builder<NetworkSaltInput, NetworkSaltInputBuilder> {
  _$NetworkSaltInput? _$v;

  String? _networkId;
  String? get networkId => _$this._networkId;
  set networkId(String? networkId) => _$this._networkId = networkId;

  String? _saltRef;
  String? get saltRef => _$this._saltRef;
  set saltRef(String? saltRef) => _$this._saltRef = saltRef;

  NetworkSaltInputBuilder() {
    NetworkSaltInput._defaults(this);
  }

  NetworkSaltInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkId = $v.networkId;
      _saltRef = $v.saltRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkSaltInput other) {
    _$v = other as _$NetworkSaltInput;
  }

  @override
  void update(void Function(NetworkSaltInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkSaltInput build() => _build();

  _$NetworkSaltInput _build() {
    final _$result = _$v ??
        _$NetworkSaltInput._(
          networkId: BuiltValueNullFieldError.checkNotNull(
              networkId, r'NetworkSaltInput', 'networkId'),
          saltRef: BuiltValueNullFieldError.checkNotNull(
              saltRef, r'NetworkSaltInput', 'saltRef'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
