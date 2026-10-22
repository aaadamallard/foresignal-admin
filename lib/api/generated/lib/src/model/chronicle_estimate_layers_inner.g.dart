// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_estimate_layers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleEstimateLayersInner extends ChronicleEstimateLayersInner {
  @override
  final String layerId;
  @override
  final String? name;
  @override
  final CaptureMode? capture;
  @override
  final num rowsPerDay;
  @override
  final num bytesPerDay;
  @override
  final String? basis;

  factory _$ChronicleEstimateLayersInner(
          [void Function(ChronicleEstimateLayersInnerBuilder)? updates]) =>
      (ChronicleEstimateLayersInnerBuilder()..update(updates))._build();

  _$ChronicleEstimateLayersInner._(
      {required this.layerId,
      this.name,
      this.capture,
      required this.rowsPerDay,
      required this.bytesPerDay,
      this.basis})
      : super._();
  @override
  ChronicleEstimateLayersInner rebuild(
          void Function(ChronicleEstimateLayersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleEstimateLayersInnerBuilder toBuilder() =>
      ChronicleEstimateLayersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleEstimateLayersInner &&
        layerId == other.layerId &&
        name == other.name &&
        capture == other.capture &&
        rowsPerDay == other.rowsPerDay &&
        bytesPerDay == other.bytesPerDay &&
        basis == other.basis;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, layerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, capture.hashCode);
    _$hash = $jc(_$hash, rowsPerDay.hashCode);
    _$hash = $jc(_$hash, bytesPerDay.hashCode);
    _$hash = $jc(_$hash, basis.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleEstimateLayersInner')
          ..add('layerId', layerId)
          ..add('name', name)
          ..add('capture', capture)
          ..add('rowsPerDay', rowsPerDay)
          ..add('bytesPerDay', bytesPerDay)
          ..add('basis', basis))
        .toString();
  }
}

class ChronicleEstimateLayersInnerBuilder
    implements
        Builder<ChronicleEstimateLayersInner,
            ChronicleEstimateLayersInnerBuilder> {
  _$ChronicleEstimateLayersInner? _$v;

  String? _layerId;
  String? get layerId => _$this._layerId;
  set layerId(String? layerId) => _$this._layerId = layerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CaptureModeBuilder? _capture;
  CaptureModeBuilder get capture => _$this._capture ??= CaptureModeBuilder();
  set capture(CaptureModeBuilder? capture) => _$this._capture = capture;

  num? _rowsPerDay;
  num? get rowsPerDay => _$this._rowsPerDay;
  set rowsPerDay(num? rowsPerDay) => _$this._rowsPerDay = rowsPerDay;

  num? _bytesPerDay;
  num? get bytesPerDay => _$this._bytesPerDay;
  set bytesPerDay(num? bytesPerDay) => _$this._bytesPerDay = bytesPerDay;

  String? _basis;
  String? get basis => _$this._basis;
  set basis(String? basis) => _$this._basis = basis;

  ChronicleEstimateLayersInnerBuilder() {
    ChronicleEstimateLayersInner._defaults(this);
  }

  ChronicleEstimateLayersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _layerId = $v.layerId;
      _name = $v.name;
      _capture = $v.capture?.toBuilder();
      _rowsPerDay = $v.rowsPerDay;
      _bytesPerDay = $v.bytesPerDay;
      _basis = $v.basis;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleEstimateLayersInner other) {
    _$v = other as _$ChronicleEstimateLayersInner;
  }

  @override
  void update(void Function(ChronicleEstimateLayersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleEstimateLayersInner build() => _build();

  _$ChronicleEstimateLayersInner _build() {
    _$ChronicleEstimateLayersInner _$result;
    try {
      _$result = _$v ??
          _$ChronicleEstimateLayersInner._(
            layerId: BuiltValueNullFieldError.checkNotNull(
                layerId, r'ChronicleEstimateLayersInner', 'layerId'),
            name: name,
            capture: _capture?.build(),
            rowsPerDay: BuiltValueNullFieldError.checkNotNull(
                rowsPerDay, r'ChronicleEstimateLayersInner', 'rowsPerDay'),
            bytesPerDay: BuiltValueNullFieldError.checkNotNull(
                bytesPerDay, r'ChronicleEstimateLayersInner', 'bytesPerDay'),
            basis: basis,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capture';
        _capture?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleEstimateLayersInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
