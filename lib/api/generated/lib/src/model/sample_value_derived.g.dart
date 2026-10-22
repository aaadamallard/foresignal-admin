// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_value_derived.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SampleValueDerived extends SampleValueDerived {
  @override
  final num? speedMs;
  @override
  final int? fromDeg;
  @override
  final String? compass;

  factory _$SampleValueDerived([
    void Function(SampleValueDerivedBuilder)? updates,
  ]) => (SampleValueDerivedBuilder()..update(updates))._build();

  _$SampleValueDerived._({this.speedMs, this.fromDeg, this.compass})
    : super._();
  @override
  SampleValueDerived rebuild(
    void Function(SampleValueDerivedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SampleValueDerivedBuilder toBuilder() =>
      SampleValueDerivedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleValueDerived &&
        speedMs == other.speedMs &&
        fromDeg == other.fromDeg &&
        compass == other.compass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speedMs.hashCode);
    _$hash = $jc(_$hash, fromDeg.hashCode);
    _$hash = $jc(_$hash, compass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleValueDerived')
          ..add('speedMs', speedMs)
          ..add('fromDeg', fromDeg)
          ..add('compass', compass))
        .toString();
  }
}

class SampleValueDerivedBuilder
    implements Builder<SampleValueDerived, SampleValueDerivedBuilder> {
  _$SampleValueDerived? _$v;

  num? _speedMs;
  num? get speedMs => _$this._speedMs;
  set speedMs(num? speedMs) => _$this._speedMs = speedMs;

  int? _fromDeg;
  int? get fromDeg => _$this._fromDeg;
  set fromDeg(int? fromDeg) => _$this._fromDeg = fromDeg;

  String? _compass;
  String? get compass => _$this._compass;
  set compass(String? compass) => _$this._compass = compass;

  SampleValueDerivedBuilder() {
    SampleValueDerived._defaults(this);
  }

  SampleValueDerivedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speedMs = $v.speedMs;
      _fromDeg = $v.fromDeg;
      _compass = $v.compass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleValueDerived other) {
    _$v = other as _$SampleValueDerived;
  }

  @override
  void update(void Function(SampleValueDerivedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleValueDerived build() => _build();

  _$SampleValueDerived _build() {
    final _$result =
        _$v ??
        _$SampleValueDerived._(
          speedMs: speedMs,
          fromDeg: fromDeg,
          compass: compass,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
