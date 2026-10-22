// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_salt_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkSaltStatus extends NetworkSaltStatus {
  @override
  final String networkId;
  @override
  final String saltId;
  @override
  final DateTime createdAt;
  @override
  final DateTime rotatesAt;

  factory _$NetworkSaltStatus(
          [void Function(NetworkSaltStatusBuilder)? updates]) =>
      (NetworkSaltStatusBuilder()..update(updates))._build();

  _$NetworkSaltStatus._(
      {required this.networkId,
      required this.saltId,
      required this.createdAt,
      required this.rotatesAt})
      : super._();
  @override
  NetworkSaltStatus rebuild(void Function(NetworkSaltStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkSaltStatusBuilder toBuilder() =>
      NetworkSaltStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkSaltStatus &&
        networkId == other.networkId &&
        saltId == other.saltId &&
        createdAt == other.createdAt &&
        rotatesAt == other.rotatesAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkId.hashCode);
    _$hash = $jc(_$hash, saltId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, rotatesAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NetworkSaltStatus')
          ..add('networkId', networkId)
          ..add('saltId', saltId)
          ..add('createdAt', createdAt)
          ..add('rotatesAt', rotatesAt))
        .toString();
  }
}

class NetworkSaltStatusBuilder
    implements Builder<NetworkSaltStatus, NetworkSaltStatusBuilder> {
  _$NetworkSaltStatus? _$v;

  String? _networkId;
  String? get networkId => _$this._networkId;
  set networkId(String? networkId) => _$this._networkId = networkId;

  String? _saltId;
  String? get saltId => _$this._saltId;
  set saltId(String? saltId) => _$this._saltId = saltId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _rotatesAt;
  DateTime? get rotatesAt => _$this._rotatesAt;
  set rotatesAt(DateTime? rotatesAt) => _$this._rotatesAt = rotatesAt;

  NetworkSaltStatusBuilder() {
    NetworkSaltStatus._defaults(this);
  }

  NetworkSaltStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkId = $v.networkId;
      _saltId = $v.saltId;
      _createdAt = $v.createdAt;
      _rotatesAt = $v.rotatesAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkSaltStatus other) {
    _$v = other as _$NetworkSaltStatus;
  }

  @override
  void update(void Function(NetworkSaltStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkSaltStatus build() => _build();

  _$NetworkSaltStatus _build() {
    final _$result = _$v ??
        _$NetworkSaltStatus._(
          networkId: BuiltValueNullFieldError.checkNotNull(
              networkId, r'NetworkSaltStatus', 'networkId'),
          saltId: BuiltValueNullFieldError.checkNotNull(
              saltId, r'NetworkSaltStatus', 'saltId'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'NetworkSaltStatus', 'createdAt'),
          rotatesAt: BuiltValueNullFieldError.checkNotNull(
              rotatesAt, r'NetworkSaltStatus', 'rotatesAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
