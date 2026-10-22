// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prob_severe_payload_motion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProbSeverePayloadMotion extends ProbSeverePayloadMotion {
  @override
  final num speedKmh;
  @override
  final int bearingDeg;

  factory _$ProbSeverePayloadMotion(
          [void Function(ProbSeverePayloadMotionBuilder)? updates]) =>
      (ProbSeverePayloadMotionBuilder()..update(updates))._build();

  _$ProbSeverePayloadMotion._(
      {required this.speedKmh, required this.bearingDeg})
      : super._();
  @override
  ProbSeverePayloadMotion rebuild(
          void Function(ProbSeverePayloadMotionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProbSeverePayloadMotionBuilder toBuilder() =>
      ProbSeverePayloadMotionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProbSeverePayloadMotion &&
        speedKmh == other.speedKmh &&
        bearingDeg == other.bearingDeg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speedKmh.hashCode);
    _$hash = $jc(_$hash, bearingDeg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProbSeverePayloadMotion')
          ..add('speedKmh', speedKmh)
          ..add('bearingDeg', bearingDeg))
        .toString();
  }
}

class ProbSeverePayloadMotionBuilder
    implements
        Builder<ProbSeverePayloadMotion, ProbSeverePayloadMotionBuilder> {
  _$ProbSeverePayloadMotion? _$v;

  num? _speedKmh;
  num? get speedKmh => _$this._speedKmh;
  set speedKmh(num? speedKmh) => _$this._speedKmh = speedKmh;

  int? _bearingDeg;
  int? get bearingDeg => _$this._bearingDeg;
  set bearingDeg(int? bearingDeg) => _$this._bearingDeg = bearingDeg;

  ProbSeverePayloadMotionBuilder() {
    ProbSeverePayloadMotion._defaults(this);
  }

  ProbSeverePayloadMotionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speedKmh = $v.speedKmh;
      _bearingDeg = $v.bearingDeg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProbSeverePayloadMotion other) {
    _$v = other as _$ProbSeverePayloadMotion;
  }

  @override
  void update(void Function(ProbSeverePayloadMotionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProbSeverePayloadMotion build() => _build();

  _$ProbSeverePayloadMotion _build() {
    final _$result = _$v ??
        _$ProbSeverePayloadMotion._(
          speedKmh: BuiltValueNullFieldError.checkNotNull(
              speedKmh, r'ProbSeverePayloadMotion', 'speedKmh'),
          bearingDeg: BuiltValueNullFieldError.checkNotNull(
              bearingDeg, r'ProbSeverePayloadMotion', 'bearingDeg'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
