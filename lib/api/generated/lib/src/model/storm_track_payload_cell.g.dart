// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_track_payload_cell.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StormTrackPayloadCell extends StormTrackPayloadCell {
  @override
  final num? maxDbz;
  @override
  final num? areaKm2;
  @override
  final num? meshMaxMm;
  @override
  final num? flashRate;

  factory _$StormTrackPayloadCell([
    void Function(StormTrackPayloadCellBuilder)? updates,
  ]) => (StormTrackPayloadCellBuilder()..update(updates))._build();

  _$StormTrackPayloadCell._({
    this.maxDbz,
    this.areaKm2,
    this.meshMaxMm,
    this.flashRate,
  }) : super._();
  @override
  StormTrackPayloadCell rebuild(
    void Function(StormTrackPayloadCellBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StormTrackPayloadCellBuilder toBuilder() =>
      StormTrackPayloadCellBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormTrackPayloadCell &&
        maxDbz == other.maxDbz &&
        areaKm2 == other.areaKm2 &&
        meshMaxMm == other.meshMaxMm &&
        flashRate == other.flashRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxDbz.hashCode);
    _$hash = $jc(_$hash, areaKm2.hashCode);
    _$hash = $jc(_$hash, meshMaxMm.hashCode);
    _$hash = $jc(_$hash, flashRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StormTrackPayloadCell')
          ..add('maxDbz', maxDbz)
          ..add('areaKm2', areaKm2)
          ..add('meshMaxMm', meshMaxMm)
          ..add('flashRate', flashRate))
        .toString();
  }
}

class StormTrackPayloadCellBuilder
    implements Builder<StormTrackPayloadCell, StormTrackPayloadCellBuilder> {
  _$StormTrackPayloadCell? _$v;

  num? _maxDbz;
  num? get maxDbz => _$this._maxDbz;
  set maxDbz(num? maxDbz) => _$this._maxDbz = maxDbz;

  num? _areaKm2;
  num? get areaKm2 => _$this._areaKm2;
  set areaKm2(num? areaKm2) => _$this._areaKm2 = areaKm2;

  num? _meshMaxMm;
  num? get meshMaxMm => _$this._meshMaxMm;
  set meshMaxMm(num? meshMaxMm) => _$this._meshMaxMm = meshMaxMm;

  num? _flashRate;
  num? get flashRate => _$this._flashRate;
  set flashRate(num? flashRate) => _$this._flashRate = flashRate;

  StormTrackPayloadCellBuilder() {
    StormTrackPayloadCell._defaults(this);
  }

  StormTrackPayloadCellBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxDbz = $v.maxDbz;
      _areaKm2 = $v.areaKm2;
      _meshMaxMm = $v.meshMaxMm;
      _flashRate = $v.flashRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StormTrackPayloadCell other) {
    _$v = other as _$StormTrackPayloadCell;
  }

  @override
  void update(void Function(StormTrackPayloadCellBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormTrackPayloadCell build() => _build();

  _$StormTrackPayloadCell _build() {
    final _$result =
        _$v ??
        _$StormTrackPayloadCell._(
          maxDbz: maxDbz,
          areaKm2: areaKm2,
          meshMaxMm: meshMaxMm,
          flashRate: flashRate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
