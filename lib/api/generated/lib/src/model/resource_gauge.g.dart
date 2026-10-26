// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_gauge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceGauge extends ResourceGauge {
  @override
  final int? totalBytes;
  @override
  final int? usedBytes;
  @override
  final int? freeBytes;
  @override
  final num? usedPercent;
  @override
  final String status;

  factory _$ResourceGauge([void Function(ResourceGaugeBuilder)? updates]) =>
      (ResourceGaugeBuilder()..update(updates))._build();

  _$ResourceGauge._({
    this.totalBytes,
    this.usedBytes,
    this.freeBytes,
    this.usedPercent,
    required this.status,
  }) : super._();
  @override
  ResourceGauge rebuild(void Function(ResourceGaugeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceGaugeBuilder toBuilder() => ResourceGaugeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceGauge &&
        totalBytes == other.totalBytes &&
        usedBytes == other.usedBytes &&
        freeBytes == other.freeBytes &&
        usedPercent == other.usedPercent &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalBytes.hashCode);
    _$hash = $jc(_$hash, usedBytes.hashCode);
    _$hash = $jc(_$hash, freeBytes.hashCode);
    _$hash = $jc(_$hash, usedPercent.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceGauge')
          ..add('totalBytes', totalBytes)
          ..add('usedBytes', usedBytes)
          ..add('freeBytes', freeBytes)
          ..add('usedPercent', usedPercent)
          ..add('status', status))
        .toString();
  }
}

class ResourceGaugeBuilder
    implements Builder<ResourceGauge, ResourceGaugeBuilder> {
  _$ResourceGauge? _$v;

  int? _totalBytes;
  int? get totalBytes => _$this._totalBytes;
  set totalBytes(int? totalBytes) => _$this._totalBytes = totalBytes;

  int? _usedBytes;
  int? get usedBytes => _$this._usedBytes;
  set usedBytes(int? usedBytes) => _$this._usedBytes = usedBytes;

  int? _freeBytes;
  int? get freeBytes => _$this._freeBytes;
  set freeBytes(int? freeBytes) => _$this._freeBytes = freeBytes;

  num? _usedPercent;
  num? get usedPercent => _$this._usedPercent;
  set usedPercent(num? usedPercent) => _$this._usedPercent = usedPercent;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ResourceGaugeBuilder() {
    ResourceGauge._defaults(this);
  }

  ResourceGaugeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalBytes = $v.totalBytes;
      _usedBytes = $v.usedBytes;
      _freeBytes = $v.freeBytes;
      _usedPercent = $v.usedPercent;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceGauge other) {
    _$v = other as _$ResourceGauge;
  }

  @override
  void update(void Function(ResourceGaugeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceGauge build() => _build();

  _$ResourceGauge _build() {
    final _$result =
        _$v ??
        _$ResourceGauge._(
          totalBytes: totalBytes,
          usedBytes: usedBytes,
          freeBytes: freeBytes,
          usedPercent: usedPercent,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'ResourceGauge',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
