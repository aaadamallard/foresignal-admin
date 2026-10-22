// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'declared_observability_kinds_value_thresholds_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeclaredObservabilityKindsValueThresholdsInner
    extends DeclaredObservabilityKindsValueThresholdsInner {
  @override
  final String field;
  @override
  final num min;
  @override
  final String? area;

  factory _$DeclaredObservabilityKindsValueThresholdsInner([
    void Function(DeclaredObservabilityKindsValueThresholdsInnerBuilder)?
    updates,
  ]) =>
      (DeclaredObservabilityKindsValueThresholdsInnerBuilder()..update(updates))
          ._build();

  _$DeclaredObservabilityKindsValueThresholdsInner._({
    required this.field,
    required this.min,
    this.area,
  }) : super._();
  @override
  DeclaredObservabilityKindsValueThresholdsInner rebuild(
    void Function(DeclaredObservabilityKindsValueThresholdsInnerBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeclaredObservabilityKindsValueThresholdsInnerBuilder toBuilder() =>
      DeclaredObservabilityKindsValueThresholdsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeclaredObservabilityKindsValueThresholdsInner &&
        field == other.field &&
        min == other.min &&
        area == other.area;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DeclaredObservabilityKindsValueThresholdsInner',
          )
          ..add('field', field)
          ..add('min', min)
          ..add('area', area))
        .toString();
  }
}

class DeclaredObservabilityKindsValueThresholdsInnerBuilder
    implements
        Builder<
          DeclaredObservabilityKindsValueThresholdsInner,
          DeclaredObservabilityKindsValueThresholdsInnerBuilder
        > {
  _$DeclaredObservabilityKindsValueThresholdsInner? _$v;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  num? _min;
  num? get min => _$this._min;
  set min(num? min) => _$this._min = min;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  DeclaredObservabilityKindsValueThresholdsInnerBuilder() {
    DeclaredObservabilityKindsValueThresholdsInner._defaults(this);
  }

  DeclaredObservabilityKindsValueThresholdsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _field = $v.field;
      _min = $v.min;
      _area = $v.area;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeclaredObservabilityKindsValueThresholdsInner other) {
    _$v = other as _$DeclaredObservabilityKindsValueThresholdsInner;
  }

  @override
  void update(
    void Function(DeclaredObservabilityKindsValueThresholdsInnerBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DeclaredObservabilityKindsValueThresholdsInner build() => _build();

  _$DeclaredObservabilityKindsValueThresholdsInner _build() {
    final _$result =
        _$v ??
        _$DeclaredObservabilityKindsValueThresholdsInner._(
          field: BuiltValueNullFieldError.checkNotNull(
            field,
            r'DeclaredObservabilityKindsValueThresholdsInner',
            'field',
          ),
          min: BuiltValueNullFieldError.checkNotNull(
            min,
            r'DeclaredObservabilityKindsValueThresholdsInner',
            'min',
          ),
          area: area,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
