// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_rasters_caches_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemRastersCachesValue extends SystemRastersCachesValue {
  @override
  final int? sizeBytes;
  @override
  final int? maxBytes;
  @override
  final num? hitRate;
  @override
  final num? evictionRate;

  factory _$SystemRastersCachesValue([
    void Function(SystemRastersCachesValueBuilder)? updates,
  ]) => (SystemRastersCachesValueBuilder()..update(updates))._build();

  _$SystemRastersCachesValue._({
    this.sizeBytes,
    this.maxBytes,
    this.hitRate,
    this.evictionRate,
  }) : super._();
  @override
  SystemRastersCachesValue rebuild(
    void Function(SystemRastersCachesValueBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemRastersCachesValueBuilder toBuilder() =>
      SystemRastersCachesValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemRastersCachesValue &&
        sizeBytes == other.sizeBytes &&
        maxBytes == other.maxBytes &&
        hitRate == other.hitRate &&
        evictionRate == other.evictionRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jc(_$hash, maxBytes.hashCode);
    _$hash = $jc(_$hash, hitRate.hashCode);
    _$hash = $jc(_$hash, evictionRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemRastersCachesValue')
          ..add('sizeBytes', sizeBytes)
          ..add('maxBytes', maxBytes)
          ..add('hitRate', hitRate)
          ..add('evictionRate', evictionRate))
        .toString();
  }
}

class SystemRastersCachesValueBuilder
    implements
        Builder<SystemRastersCachesValue, SystemRastersCachesValueBuilder> {
  _$SystemRastersCachesValue? _$v;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  int? _maxBytes;
  int? get maxBytes => _$this._maxBytes;
  set maxBytes(int? maxBytes) => _$this._maxBytes = maxBytes;

  num? _hitRate;
  num? get hitRate => _$this._hitRate;
  set hitRate(num? hitRate) => _$this._hitRate = hitRate;

  num? _evictionRate;
  num? get evictionRate => _$this._evictionRate;
  set evictionRate(num? evictionRate) => _$this._evictionRate = evictionRate;

  SystemRastersCachesValueBuilder() {
    SystemRastersCachesValue._defaults(this);
  }

  SystemRastersCachesValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sizeBytes = $v.sizeBytes;
      _maxBytes = $v.maxBytes;
      _hitRate = $v.hitRate;
      _evictionRate = $v.evictionRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemRastersCachesValue other) {
    _$v = other as _$SystemRastersCachesValue;
  }

  @override
  void update(void Function(SystemRastersCachesValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemRastersCachesValue build() => _build();

  _$SystemRastersCachesValue _build() {
    final _$result =
        _$v ??
        _$SystemRastersCachesValue._(
          sizeBytes: sizeBytes,
          maxBytes: maxBytes,
          hitRate: hitRate,
          evictionRate: evictionRate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
