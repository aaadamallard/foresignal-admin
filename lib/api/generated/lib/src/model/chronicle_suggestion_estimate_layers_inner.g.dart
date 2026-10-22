// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_suggestion_estimate_layers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSuggestionEstimateLayersInner
    extends ChronicleSuggestionEstimateLayersInner {
  @override
  final String name;
  @override
  final num? rowsPerDay;
  @override
  final num? bytesPerDay;

  factory _$ChronicleSuggestionEstimateLayersInner([
    void Function(ChronicleSuggestionEstimateLayersInnerBuilder)? updates,
  ]) => (ChronicleSuggestionEstimateLayersInnerBuilder()..update(updates))
      ._build();

  _$ChronicleSuggestionEstimateLayersInner._({
    required this.name,
    this.rowsPerDay,
    this.bytesPerDay,
  }) : super._();
  @override
  ChronicleSuggestionEstimateLayersInner rebuild(
    void Function(ChronicleSuggestionEstimateLayersInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSuggestionEstimateLayersInnerBuilder toBuilder() =>
      ChronicleSuggestionEstimateLayersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSuggestionEstimateLayersInner &&
        name == other.name &&
        rowsPerDay == other.rowsPerDay &&
        bytesPerDay == other.bytesPerDay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, rowsPerDay.hashCode);
    _$hash = $jc(_$hash, bytesPerDay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ChronicleSuggestionEstimateLayersInner',
          )
          ..add('name', name)
          ..add('rowsPerDay', rowsPerDay)
          ..add('bytesPerDay', bytesPerDay))
        .toString();
  }
}

class ChronicleSuggestionEstimateLayersInnerBuilder
    implements
        Builder<
          ChronicleSuggestionEstimateLayersInner,
          ChronicleSuggestionEstimateLayersInnerBuilder
        > {
  _$ChronicleSuggestionEstimateLayersInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _rowsPerDay;
  num? get rowsPerDay => _$this._rowsPerDay;
  set rowsPerDay(num? rowsPerDay) => _$this._rowsPerDay = rowsPerDay;

  num? _bytesPerDay;
  num? get bytesPerDay => _$this._bytesPerDay;
  set bytesPerDay(num? bytesPerDay) => _$this._bytesPerDay = bytesPerDay;

  ChronicleSuggestionEstimateLayersInnerBuilder() {
    ChronicleSuggestionEstimateLayersInner._defaults(this);
  }

  ChronicleSuggestionEstimateLayersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _rowsPerDay = $v.rowsPerDay;
      _bytesPerDay = $v.bytesPerDay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSuggestionEstimateLayersInner other) {
    _$v = other as _$ChronicleSuggestionEstimateLayersInner;
  }

  @override
  void update(
    void Function(ChronicleSuggestionEstimateLayersInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSuggestionEstimateLayersInner build() => _build();

  _$ChronicleSuggestionEstimateLayersInner _build() {
    final _$result =
        _$v ??
        _$ChronicleSuggestionEstimateLayersInner._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ChronicleSuggestionEstimateLayersInner',
            'name',
          ),
          rowsPerDay: rowsPerDay,
          bytesPerDay: bytesPerDay,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
