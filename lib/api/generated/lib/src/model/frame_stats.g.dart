// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frame_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FrameStats extends FrameStats {
  @override
  final num? min;
  @override
  final num? max;
  @override
  final num? mean;
  @override
  final num? coveragePct;
  @override
  final BuiltMap<String, int>? codeCounts;
  @override
  final bool? flagMissing;

  factory _$FrameStats([void Function(FrameStatsBuilder)? updates]) =>
      (FrameStatsBuilder()..update(updates))._build();

  _$FrameStats._({
    this.min,
    this.max,
    this.mean,
    this.coveragePct,
    this.codeCounts,
    this.flagMissing,
  }) : super._();
  @override
  FrameStats rebuild(void Function(FrameStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FrameStatsBuilder toBuilder() => FrameStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FrameStats &&
        min == other.min &&
        max == other.max &&
        mean == other.mean &&
        coveragePct == other.coveragePct &&
        codeCounts == other.codeCounts &&
        flagMissing == other.flagMissing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, mean.hashCode);
    _$hash = $jc(_$hash, coveragePct.hashCode);
    _$hash = $jc(_$hash, codeCounts.hashCode);
    _$hash = $jc(_$hash, flagMissing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FrameStats')
          ..add('min', min)
          ..add('max', max)
          ..add('mean', mean)
          ..add('coveragePct', coveragePct)
          ..add('codeCounts', codeCounts)
          ..add('flagMissing', flagMissing))
        .toString();
  }
}

class FrameStatsBuilder implements Builder<FrameStats, FrameStatsBuilder> {
  _$FrameStats? _$v;

  num? _min;
  num? get min => _$this._min;
  set min(num? min) => _$this._min = min;

  num? _max;
  num? get max => _$this._max;
  set max(num? max) => _$this._max = max;

  num? _mean;
  num? get mean => _$this._mean;
  set mean(num? mean) => _$this._mean = mean;

  num? _coveragePct;
  num? get coveragePct => _$this._coveragePct;
  set coveragePct(num? coveragePct) => _$this._coveragePct = coveragePct;

  MapBuilder<String, int>? _codeCounts;
  MapBuilder<String, int> get codeCounts =>
      _$this._codeCounts ??= MapBuilder<String, int>();
  set codeCounts(MapBuilder<String, int>? codeCounts) =>
      _$this._codeCounts = codeCounts;

  bool? _flagMissing;
  bool? get flagMissing => _$this._flagMissing;
  set flagMissing(bool? flagMissing) => _$this._flagMissing = flagMissing;

  FrameStatsBuilder() {
    FrameStats._defaults(this);
  }

  FrameStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _mean = $v.mean;
      _coveragePct = $v.coveragePct;
      _codeCounts = $v.codeCounts?.toBuilder();
      _flagMissing = $v.flagMissing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FrameStats other) {
    _$v = other as _$FrameStats;
  }

  @override
  void update(void Function(FrameStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FrameStats build() => _build();

  _$FrameStats _build() {
    _$FrameStats _$result;
    try {
      _$result =
          _$v ??
          _$FrameStats._(
            min: min,
            max: max,
            mean: mean,
            coveragePct: coveragePct,
            codeCounts: _codeCounts?.build(),
            flagMissing: flagMissing,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeCounts';
        _codeCounts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FrameStats',
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
