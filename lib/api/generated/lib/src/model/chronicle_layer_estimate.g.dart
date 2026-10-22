// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_layer_estimate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleLayerEstimate extends ChronicleLayerEstimate {
  @override
  final num rowsPerDay;
  @override
  final num bytesPerDay;
  @override
  final String? basis;

  factory _$ChronicleLayerEstimate(
          [void Function(ChronicleLayerEstimateBuilder)? updates]) =>
      (ChronicleLayerEstimateBuilder()..update(updates))._build();

  _$ChronicleLayerEstimate._(
      {required this.rowsPerDay, required this.bytesPerDay, this.basis})
      : super._();
  @override
  ChronicleLayerEstimate rebuild(
          void Function(ChronicleLayerEstimateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleLayerEstimateBuilder toBuilder() =>
      ChronicleLayerEstimateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleLayerEstimate &&
        rowsPerDay == other.rowsPerDay &&
        bytesPerDay == other.bytesPerDay &&
        basis == other.basis;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rowsPerDay.hashCode);
    _$hash = $jc(_$hash, bytesPerDay.hashCode);
    _$hash = $jc(_$hash, basis.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleLayerEstimate')
          ..add('rowsPerDay', rowsPerDay)
          ..add('bytesPerDay', bytesPerDay)
          ..add('basis', basis))
        .toString();
  }
}

class ChronicleLayerEstimateBuilder
    implements Builder<ChronicleLayerEstimate, ChronicleLayerEstimateBuilder> {
  _$ChronicleLayerEstimate? _$v;

  num? _rowsPerDay;
  num? get rowsPerDay => _$this._rowsPerDay;
  set rowsPerDay(num? rowsPerDay) => _$this._rowsPerDay = rowsPerDay;

  num? _bytesPerDay;
  num? get bytesPerDay => _$this._bytesPerDay;
  set bytesPerDay(num? bytesPerDay) => _$this._bytesPerDay = bytesPerDay;

  String? _basis;
  String? get basis => _$this._basis;
  set basis(String? basis) => _$this._basis = basis;

  ChronicleLayerEstimateBuilder() {
    ChronicleLayerEstimate._defaults(this);
  }

  ChronicleLayerEstimateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rowsPerDay = $v.rowsPerDay;
      _bytesPerDay = $v.bytesPerDay;
      _basis = $v.basis;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleLayerEstimate other) {
    _$v = other as _$ChronicleLayerEstimate;
  }

  @override
  void update(void Function(ChronicleLayerEstimateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleLayerEstimate build() => _build();

  _$ChronicleLayerEstimate _build() {
    final _$result = _$v ??
        _$ChronicleLayerEstimate._(
          rowsPerDay: BuiltValueNullFieldError.checkNotNull(
              rowsPerDay, r'ChronicleLayerEstimate', 'rowsPerDay'),
          bytesPerDay: BuiltValueNullFieldError.checkNotNull(
              bytesPerDay, r'ChronicleLayerEstimate', 'bytesPerDay'),
          basis: basis,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
