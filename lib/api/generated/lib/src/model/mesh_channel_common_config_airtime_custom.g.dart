// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mesh_channel_common_config_airtime_custom.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MeshChannelCommonConfigAirtimeCustom
    extends MeshChannelCommonConfigAirtimeCustom {
  @override
  final int? spreadingFactor;
  @override
  final num? bandwidthKhz;
  @override
  final int? codingRate;
  @override
  final int? preambleSymbols;

  factory _$MeshChannelCommonConfigAirtimeCustom([
    void Function(MeshChannelCommonConfigAirtimeCustomBuilder)? updates,
  ]) =>
      (MeshChannelCommonConfigAirtimeCustomBuilder()..update(updates))._build();

  _$MeshChannelCommonConfigAirtimeCustom._({
    this.spreadingFactor,
    this.bandwidthKhz,
    this.codingRate,
    this.preambleSymbols,
  }) : super._();
  @override
  MeshChannelCommonConfigAirtimeCustom rebuild(
    void Function(MeshChannelCommonConfigAirtimeCustomBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MeshChannelCommonConfigAirtimeCustomBuilder toBuilder() =>
      MeshChannelCommonConfigAirtimeCustomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeshChannelCommonConfigAirtimeCustom &&
        spreadingFactor == other.spreadingFactor &&
        bandwidthKhz == other.bandwidthKhz &&
        codingRate == other.codingRate &&
        preambleSymbols == other.preambleSymbols;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spreadingFactor.hashCode);
    _$hash = $jc(_$hash, bandwidthKhz.hashCode);
    _$hash = $jc(_$hash, codingRate.hashCode);
    _$hash = $jc(_$hash, preambleSymbols.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeshChannelCommonConfigAirtimeCustom')
          ..add('spreadingFactor', spreadingFactor)
          ..add('bandwidthKhz', bandwidthKhz)
          ..add('codingRate', codingRate)
          ..add('preambleSymbols', preambleSymbols))
        .toString();
  }
}

class MeshChannelCommonConfigAirtimeCustomBuilder
    implements
        Builder<
          MeshChannelCommonConfigAirtimeCustom,
          MeshChannelCommonConfigAirtimeCustomBuilder
        > {
  _$MeshChannelCommonConfigAirtimeCustom? _$v;

  int? _spreadingFactor;
  int? get spreadingFactor => _$this._spreadingFactor;
  set spreadingFactor(int? spreadingFactor) =>
      _$this._spreadingFactor = spreadingFactor;

  num? _bandwidthKhz;
  num? get bandwidthKhz => _$this._bandwidthKhz;
  set bandwidthKhz(num? bandwidthKhz) => _$this._bandwidthKhz = bandwidthKhz;

  int? _codingRate;
  int? get codingRate => _$this._codingRate;
  set codingRate(int? codingRate) => _$this._codingRate = codingRate;

  int? _preambleSymbols;
  int? get preambleSymbols => _$this._preambleSymbols;
  set preambleSymbols(int? preambleSymbols) =>
      _$this._preambleSymbols = preambleSymbols;

  MeshChannelCommonConfigAirtimeCustomBuilder() {
    MeshChannelCommonConfigAirtimeCustom._defaults(this);
  }

  MeshChannelCommonConfigAirtimeCustomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spreadingFactor = $v.spreadingFactor;
      _bandwidthKhz = $v.bandwidthKhz;
      _codingRate = $v.codingRate;
      _preambleSymbols = $v.preambleSymbols;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeshChannelCommonConfigAirtimeCustom other) {
    _$v = other as _$MeshChannelCommonConfigAirtimeCustom;
  }

  @override
  void update(
    void Function(MeshChannelCommonConfigAirtimeCustomBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MeshChannelCommonConfigAirtimeCustom build() => _build();

  _$MeshChannelCommonConfigAirtimeCustom _build() {
    final _$result =
        _$v ??
        _$MeshChannelCommonConfigAirtimeCustom._(
          spreadingFactor: spreadingFactor,
          bandwidthKhz: bandwidthKhz,
          codingRate: codingRate,
          preambleSymbols: preambleSymbols,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
