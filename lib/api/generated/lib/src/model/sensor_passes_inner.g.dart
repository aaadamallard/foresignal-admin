// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_passes_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SensorPassesInner extends SensorPassesInner {
  @override
  final DateTime aos;
  @override
  final DateTime? tca;
  @override
  final DateTime los;
  @override
  final num maxElevationDeg;

  factory _$SensorPassesInner([
    void Function(SensorPassesInnerBuilder)? updates,
  ]) => (SensorPassesInnerBuilder()..update(updates))._build();

  _$SensorPassesInner._({
    required this.aos,
    this.tca,
    required this.los,
    required this.maxElevationDeg,
  }) : super._();
  @override
  SensorPassesInner rebuild(void Function(SensorPassesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SensorPassesInnerBuilder toBuilder() =>
      SensorPassesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SensorPassesInner &&
        aos == other.aos &&
        tca == other.tca &&
        los == other.los &&
        maxElevationDeg == other.maxElevationDeg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, aos.hashCode);
    _$hash = $jc(_$hash, tca.hashCode);
    _$hash = $jc(_$hash, los.hashCode);
    _$hash = $jc(_$hash, maxElevationDeg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SensorPassesInner')
          ..add('aos', aos)
          ..add('tca', tca)
          ..add('los', los)
          ..add('maxElevationDeg', maxElevationDeg))
        .toString();
  }
}

class SensorPassesInnerBuilder
    implements Builder<SensorPassesInner, SensorPassesInnerBuilder> {
  _$SensorPassesInner? _$v;

  DateTime? _aos;
  DateTime? get aos => _$this._aos;
  set aos(DateTime? aos) => _$this._aos = aos;

  DateTime? _tca;
  DateTime? get tca => _$this._tca;
  set tca(DateTime? tca) => _$this._tca = tca;

  DateTime? _los;
  DateTime? get los => _$this._los;
  set los(DateTime? los) => _$this._los = los;

  num? _maxElevationDeg;
  num? get maxElevationDeg => _$this._maxElevationDeg;
  set maxElevationDeg(num? maxElevationDeg) =>
      _$this._maxElevationDeg = maxElevationDeg;

  SensorPassesInnerBuilder() {
    SensorPassesInner._defaults(this);
  }

  SensorPassesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aos = $v.aos;
      _tca = $v.tca;
      _los = $v.los;
      _maxElevationDeg = $v.maxElevationDeg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SensorPassesInner other) {
    _$v = other as _$SensorPassesInner;
  }

  @override
  void update(void Function(SensorPassesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SensorPassesInner build() => _build();

  _$SensorPassesInner _build() {
    final _$result =
        _$v ??
        _$SensorPassesInner._(
          aos: BuiltValueNullFieldError.checkNotNull(
            aos,
            r'SensorPassesInner',
            'aos',
          ),
          tca: tca,
          los: BuiltValueNullFieldError.checkNotNull(
            los,
            r'SensorPassesInner',
            'los',
          ),
          maxElevationDeg: BuiltValueNullFieldError.checkNotNull(
            maxElevationDeg,
            r'SensorPassesInner',
            'maxElevationDeg',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
