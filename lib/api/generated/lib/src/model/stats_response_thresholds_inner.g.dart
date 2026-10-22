// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_response_thresholds_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatsResponseThresholdsInner extends StatsResponseThresholdsInner {
  @override
  final num threshold;
  @override
  final num areaKm2;

  factory _$StatsResponseThresholdsInner(
          [void Function(StatsResponseThresholdsInnerBuilder)? updates]) =>
      (StatsResponseThresholdsInnerBuilder()..update(updates))._build();

  _$StatsResponseThresholdsInner._(
      {required this.threshold, required this.areaKm2})
      : super._();
  @override
  StatsResponseThresholdsInner rebuild(
          void Function(StatsResponseThresholdsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsResponseThresholdsInnerBuilder toBuilder() =>
      StatsResponseThresholdsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsResponseThresholdsInner &&
        threshold == other.threshold &&
        areaKm2 == other.areaKm2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, areaKm2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsResponseThresholdsInner')
          ..add('threshold', threshold)
          ..add('areaKm2', areaKm2))
        .toString();
  }
}

class StatsResponseThresholdsInnerBuilder
    implements
        Builder<StatsResponseThresholdsInner,
            StatsResponseThresholdsInnerBuilder> {
  _$StatsResponseThresholdsInner? _$v;

  num? _threshold;
  num? get threshold => _$this._threshold;
  set threshold(num? threshold) => _$this._threshold = threshold;

  num? _areaKm2;
  num? get areaKm2 => _$this._areaKm2;
  set areaKm2(num? areaKm2) => _$this._areaKm2 = areaKm2;

  StatsResponseThresholdsInnerBuilder() {
    StatsResponseThresholdsInner._defaults(this);
  }

  StatsResponseThresholdsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threshold = $v.threshold;
      _areaKm2 = $v.areaKm2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsResponseThresholdsInner other) {
    _$v = other as _$StatsResponseThresholdsInner;
  }

  @override
  void update(void Function(StatsResponseThresholdsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsResponseThresholdsInner build() => _build();

  _$StatsResponseThresholdsInner _build() {
    final _$result = _$v ??
        _$StatsResponseThresholdsInner._(
          threshold: BuiltValueNullFieldError.checkNotNull(
              threshold, r'StatsResponseThresholdsInner', 'threshold'),
          areaKm2: BuiltValueNullFieldError.checkNotNull(
              areaKm2, r'StatsResponseThresholdsInner', 'areaKm2'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
