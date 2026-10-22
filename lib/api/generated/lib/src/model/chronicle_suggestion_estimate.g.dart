// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_suggestion_estimate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSuggestionEstimate extends ChronicleSuggestionEstimate {
  @override
  final num? totalRowsPerDay;
  @override
  final num? totalBytesPerDay;
  @override
  final BuiltList<ChronicleSuggestionEstimateLayersInner>? layers;

  factory _$ChronicleSuggestionEstimate(
          [void Function(ChronicleSuggestionEstimateBuilder)? updates]) =>
      (ChronicleSuggestionEstimateBuilder()..update(updates))._build();

  _$ChronicleSuggestionEstimate._(
      {this.totalRowsPerDay, this.totalBytesPerDay, this.layers})
      : super._();
  @override
  ChronicleSuggestionEstimate rebuild(
          void Function(ChronicleSuggestionEstimateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSuggestionEstimateBuilder toBuilder() =>
      ChronicleSuggestionEstimateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSuggestionEstimate &&
        totalRowsPerDay == other.totalRowsPerDay &&
        totalBytesPerDay == other.totalBytesPerDay &&
        layers == other.layers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalRowsPerDay.hashCode);
    _$hash = $jc(_$hash, totalBytesPerDay.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSuggestionEstimate')
          ..add('totalRowsPerDay', totalRowsPerDay)
          ..add('totalBytesPerDay', totalBytesPerDay)
          ..add('layers', layers))
        .toString();
  }
}

class ChronicleSuggestionEstimateBuilder
    implements
        Builder<ChronicleSuggestionEstimate,
            ChronicleSuggestionEstimateBuilder> {
  _$ChronicleSuggestionEstimate? _$v;

  num? _totalRowsPerDay;
  num? get totalRowsPerDay => _$this._totalRowsPerDay;
  set totalRowsPerDay(num? totalRowsPerDay) =>
      _$this._totalRowsPerDay = totalRowsPerDay;

  num? _totalBytesPerDay;
  num? get totalBytesPerDay => _$this._totalBytesPerDay;
  set totalBytesPerDay(num? totalBytesPerDay) =>
      _$this._totalBytesPerDay = totalBytesPerDay;

  ListBuilder<ChronicleSuggestionEstimateLayersInner>? _layers;
  ListBuilder<ChronicleSuggestionEstimateLayersInner> get layers =>
      _$this._layers ??= ListBuilder<ChronicleSuggestionEstimateLayersInner>();
  set layers(ListBuilder<ChronicleSuggestionEstimateLayersInner>? layers) =>
      _$this._layers = layers;

  ChronicleSuggestionEstimateBuilder() {
    ChronicleSuggestionEstimate._defaults(this);
  }

  ChronicleSuggestionEstimateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalRowsPerDay = $v.totalRowsPerDay;
      _totalBytesPerDay = $v.totalBytesPerDay;
      _layers = $v.layers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSuggestionEstimate other) {
    _$v = other as _$ChronicleSuggestionEstimate;
  }

  @override
  void update(void Function(ChronicleSuggestionEstimateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSuggestionEstimate build() => _build();

  _$ChronicleSuggestionEstimate _build() {
    _$ChronicleSuggestionEstimate _$result;
    try {
      _$result = _$v ??
          _$ChronicleSuggestionEstimate._(
            totalRowsPerDay: totalRowsPerDay,
            totalBytesPerDay: totalBytesPerDay,
            layers: _layers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'layers';
        _layers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleSuggestionEstimate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
