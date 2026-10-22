// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_volume_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialVolumePoint extends SocialVolumePoint {
  @override
  final DateTime t;
  @override
  final num observed;
  @override
  final num? baseline;
  @override
  final num? mad;
  @override
  final num? velocityRatio;
  @override
  final num? zRobust;
  @override
  final bool complete;

  factory _$SocialVolumePoint([
    void Function(SocialVolumePointBuilder)? updates,
  ]) => (SocialVolumePointBuilder()..update(updates))._build();

  _$SocialVolumePoint._({
    required this.t,
    required this.observed,
    this.baseline,
    this.mad,
    this.velocityRatio,
    this.zRobust,
    required this.complete,
  }) : super._();
  @override
  SocialVolumePoint rebuild(void Function(SocialVolumePointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialVolumePointBuilder toBuilder() =>
      SocialVolumePointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVolumePoint &&
        t == other.t &&
        observed == other.observed &&
        baseline == other.baseline &&
        mad == other.mad &&
        velocityRatio == other.velocityRatio &&
        zRobust == other.zRobust &&
        complete == other.complete;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, observed.hashCode);
    _$hash = $jc(_$hash, baseline.hashCode);
    _$hash = $jc(_$hash, mad.hashCode);
    _$hash = $jc(_$hash, velocityRatio.hashCode);
    _$hash = $jc(_$hash, zRobust.hashCode);
    _$hash = $jc(_$hash, complete.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialVolumePoint')
          ..add('t', t)
          ..add('observed', observed)
          ..add('baseline', baseline)
          ..add('mad', mad)
          ..add('velocityRatio', velocityRatio)
          ..add('zRobust', zRobust)
          ..add('complete', complete))
        .toString();
  }
}

class SocialVolumePointBuilder
    implements Builder<SocialVolumePoint, SocialVolumePointBuilder> {
  _$SocialVolumePoint? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  num? _observed;
  num? get observed => _$this._observed;
  set observed(num? observed) => _$this._observed = observed;

  num? _baseline;
  num? get baseline => _$this._baseline;
  set baseline(num? baseline) => _$this._baseline = baseline;

  num? _mad;
  num? get mad => _$this._mad;
  set mad(num? mad) => _$this._mad = mad;

  num? _velocityRatio;
  num? get velocityRatio => _$this._velocityRatio;
  set velocityRatio(num? velocityRatio) =>
      _$this._velocityRatio = velocityRatio;

  num? _zRobust;
  num? get zRobust => _$this._zRobust;
  set zRobust(num? zRobust) => _$this._zRobust = zRobust;

  bool? _complete;
  bool? get complete => _$this._complete;
  set complete(bool? complete) => _$this._complete = complete;

  SocialVolumePointBuilder() {
    SocialVolumePoint._defaults(this);
  }

  SocialVolumePointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _observed = $v.observed;
      _baseline = $v.baseline;
      _mad = $v.mad;
      _velocityRatio = $v.velocityRatio;
      _zRobust = $v.zRobust;
      _complete = $v.complete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVolumePoint other) {
    _$v = other as _$SocialVolumePoint;
  }

  @override
  void update(void Function(SocialVolumePointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialVolumePoint build() => _build();

  _$SocialVolumePoint _build() {
    final _$result =
        _$v ??
        _$SocialVolumePoint._(
          t: BuiltValueNullFieldError.checkNotNull(
            t,
            r'SocialVolumePoint',
            't',
          ),
          observed: BuiltValueNullFieldError.checkNotNull(
            observed,
            r'SocialVolumePoint',
            'observed',
          ),
          baseline: baseline,
          mad: mad,
          velocityRatio: velocityRatio,
          zRobust: zRobust,
          complete: BuiltValueNullFieldError.checkNotNull(
            complete,
            r'SocialVolumePoint',
            'complete',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
