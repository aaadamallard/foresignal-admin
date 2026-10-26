// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_threshold.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceThreshold extends ResourceThreshold {
  @override
  final num? warnFreePercent;
  @override
  final int? warnFreeBytes;
  @override
  final num? criticalFreePercent;
  @override
  final int? criticalFreeBytes;

  factory _$ResourceThreshold([
    void Function(ResourceThresholdBuilder)? updates,
  ]) => (ResourceThresholdBuilder()..update(updates))._build();

  _$ResourceThreshold._({
    this.warnFreePercent,
    this.warnFreeBytes,
    this.criticalFreePercent,
    this.criticalFreeBytes,
  }) : super._();
  @override
  ResourceThreshold rebuild(void Function(ResourceThresholdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceThresholdBuilder toBuilder() =>
      ResourceThresholdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceThreshold &&
        warnFreePercent == other.warnFreePercent &&
        warnFreeBytes == other.warnFreeBytes &&
        criticalFreePercent == other.criticalFreePercent &&
        criticalFreeBytes == other.criticalFreeBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, warnFreePercent.hashCode);
    _$hash = $jc(_$hash, warnFreeBytes.hashCode);
    _$hash = $jc(_$hash, criticalFreePercent.hashCode);
    _$hash = $jc(_$hash, criticalFreeBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceThreshold')
          ..add('warnFreePercent', warnFreePercent)
          ..add('warnFreeBytes', warnFreeBytes)
          ..add('criticalFreePercent', criticalFreePercent)
          ..add('criticalFreeBytes', criticalFreeBytes))
        .toString();
  }
}

class ResourceThresholdBuilder
    implements Builder<ResourceThreshold, ResourceThresholdBuilder> {
  _$ResourceThreshold? _$v;

  num? _warnFreePercent;
  num? get warnFreePercent => _$this._warnFreePercent;
  set warnFreePercent(num? warnFreePercent) =>
      _$this._warnFreePercent = warnFreePercent;

  int? _warnFreeBytes;
  int? get warnFreeBytes => _$this._warnFreeBytes;
  set warnFreeBytes(int? warnFreeBytes) =>
      _$this._warnFreeBytes = warnFreeBytes;

  num? _criticalFreePercent;
  num? get criticalFreePercent => _$this._criticalFreePercent;
  set criticalFreePercent(num? criticalFreePercent) =>
      _$this._criticalFreePercent = criticalFreePercent;

  int? _criticalFreeBytes;
  int? get criticalFreeBytes => _$this._criticalFreeBytes;
  set criticalFreeBytes(int? criticalFreeBytes) =>
      _$this._criticalFreeBytes = criticalFreeBytes;

  ResourceThresholdBuilder() {
    ResourceThreshold._defaults(this);
  }

  ResourceThresholdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _warnFreePercent = $v.warnFreePercent;
      _warnFreeBytes = $v.warnFreeBytes;
      _criticalFreePercent = $v.criticalFreePercent;
      _criticalFreeBytes = $v.criticalFreeBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceThreshold other) {
    _$v = other as _$ResourceThreshold;
  }

  @override
  void update(void Function(ResourceThresholdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceThreshold build() => _build();

  _$ResourceThreshold _build() {
    final _$result =
        _$v ??
        _$ResourceThreshold._(
          warnFreePercent: warnFreePercent,
          warnFreeBytes: warnFreeBytes,
          criticalFreePercent: criticalFreePercent,
          criticalFreeBytes: criticalFreeBytes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
