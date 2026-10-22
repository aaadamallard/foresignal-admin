// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_manifest_sender.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PackageManifestSender extends PackageManifestSender {
  @override
  final String instanceId;
  @override
  final String? instanceName;
  @override
  final String keyId;

  factory _$PackageManifestSender(
          [void Function(PackageManifestSenderBuilder)? updates]) =>
      (PackageManifestSenderBuilder()..update(updates))._build();

  _$PackageManifestSender._(
      {required this.instanceId, this.instanceName, required this.keyId})
      : super._();
  @override
  PackageManifestSender rebuild(
          void Function(PackageManifestSenderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackageManifestSenderBuilder toBuilder() =>
      PackageManifestSenderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackageManifestSender &&
        instanceId == other.instanceId &&
        instanceName == other.instanceName &&
        keyId == other.keyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceName.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PackageManifestSender')
          ..add('instanceId', instanceId)
          ..add('instanceName', instanceName)
          ..add('keyId', keyId))
        .toString();
  }
}

class PackageManifestSenderBuilder
    implements Builder<PackageManifestSender, PackageManifestSenderBuilder> {
  _$PackageManifestSender? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _instanceName;
  String? get instanceName => _$this._instanceName;
  set instanceName(String? instanceName) => _$this._instanceName = instanceName;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  PackageManifestSenderBuilder() {
    PackageManifestSender._defaults(this);
  }

  PackageManifestSenderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _instanceName = $v.instanceName;
      _keyId = $v.keyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackageManifestSender other) {
    _$v = other as _$PackageManifestSender;
  }

  @override
  void update(void Function(PackageManifestSenderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackageManifestSender build() => _build();

  _$PackageManifestSender _build() {
    final _$result = _$v ??
        _$PackageManifestSender._(
          instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId, r'PackageManifestSender', 'instanceId'),
          instanceName: instanceName,
          keyId: BuiltValueNullFieldError.checkNotNull(
              keyId, r'PackageManifestSender', 'keyId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
