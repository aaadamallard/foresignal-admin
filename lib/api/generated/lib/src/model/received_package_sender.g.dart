// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'received_package_sender.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReceivedPackageSender extends ReceivedPackageSender {
  @override
  final String instanceId;
  @override
  final String? instanceName;
  @override
  final String keyId;
  @override
  final String? peerId;

  factory _$ReceivedPackageSender(
          [void Function(ReceivedPackageSenderBuilder)? updates]) =>
      (ReceivedPackageSenderBuilder()..update(updates))._build();

  _$ReceivedPackageSender._(
      {required this.instanceId,
      this.instanceName,
      required this.keyId,
      this.peerId})
      : super._();
  @override
  ReceivedPackageSender rebuild(
          void Function(ReceivedPackageSenderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceivedPackageSenderBuilder toBuilder() =>
      ReceivedPackageSenderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceivedPackageSender &&
        instanceId == other.instanceId &&
        instanceName == other.instanceName &&
        keyId == other.keyId &&
        peerId == other.peerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceName.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, peerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceivedPackageSender')
          ..add('instanceId', instanceId)
          ..add('instanceName', instanceName)
          ..add('keyId', keyId)
          ..add('peerId', peerId))
        .toString();
  }
}

class ReceivedPackageSenderBuilder
    implements Builder<ReceivedPackageSender, ReceivedPackageSenderBuilder> {
  _$ReceivedPackageSender? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _instanceName;
  String? get instanceName => _$this._instanceName;
  set instanceName(String? instanceName) => _$this._instanceName = instanceName;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  String? _peerId;
  String? get peerId => _$this._peerId;
  set peerId(String? peerId) => _$this._peerId = peerId;

  ReceivedPackageSenderBuilder() {
    ReceivedPackageSender._defaults(this);
  }

  ReceivedPackageSenderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _instanceName = $v.instanceName;
      _keyId = $v.keyId;
      _peerId = $v.peerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceivedPackageSender other) {
    _$v = other as _$ReceivedPackageSender;
  }

  @override
  void update(void Function(ReceivedPackageSenderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceivedPackageSender build() => _build();

  _$ReceivedPackageSender _build() {
    final _$result = _$v ??
        _$ReceivedPackageSender._(
          instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId, r'ReceivedPackageSender', 'instanceId'),
          instanceName: instanceName,
          keyId: BuiltValueNullFieldError.checkNotNull(
              keyId, r'ReceivedPackageSender', 'keyId'),
          peerId: peerId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
