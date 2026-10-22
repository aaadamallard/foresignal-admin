// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'declared_observability_kinds_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeclaredObservabilityKindsValue
    extends DeclaredObservabilityKindsValue {
  @override
  final DeclaredObservabilityKindsValueArea area;
  @override
  final BuiltList<DeclaredObservabilityKindsValueThresholdsInner>? thresholds;
  @override
  final String? typicalLatency;
  @override
  final String? notes;

  factory _$DeclaredObservabilityKindsValue(
          [void Function(DeclaredObservabilityKindsValueBuilder)? updates]) =>
      (DeclaredObservabilityKindsValueBuilder()..update(updates))._build();

  _$DeclaredObservabilityKindsValue._(
      {required this.area, this.thresholds, this.typicalLatency, this.notes})
      : super._();
  @override
  DeclaredObservabilityKindsValue rebuild(
          void Function(DeclaredObservabilityKindsValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeclaredObservabilityKindsValueBuilder toBuilder() =>
      DeclaredObservabilityKindsValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeclaredObservabilityKindsValue &&
        area == other.area &&
        thresholds == other.thresholds &&
        typicalLatency == other.typicalLatency &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, thresholds.hashCode);
    _$hash = $jc(_$hash, typicalLatency.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeclaredObservabilityKindsValue')
          ..add('area', area)
          ..add('thresholds', thresholds)
          ..add('typicalLatency', typicalLatency)
          ..add('notes', notes))
        .toString();
  }
}

class DeclaredObservabilityKindsValueBuilder
    implements
        Builder<DeclaredObservabilityKindsValue,
            DeclaredObservabilityKindsValueBuilder> {
  _$DeclaredObservabilityKindsValue? _$v;

  DeclaredObservabilityKindsValueAreaBuilder? _area;
  DeclaredObservabilityKindsValueAreaBuilder get area =>
      _$this._area ??= DeclaredObservabilityKindsValueAreaBuilder();
  set area(DeclaredObservabilityKindsValueAreaBuilder? area) =>
      _$this._area = area;

  ListBuilder<DeclaredObservabilityKindsValueThresholdsInner>? _thresholds;
  ListBuilder<DeclaredObservabilityKindsValueThresholdsInner> get thresholds =>
      _$this._thresholds ??=
          ListBuilder<DeclaredObservabilityKindsValueThresholdsInner>();
  set thresholds(
          ListBuilder<DeclaredObservabilityKindsValueThresholdsInner>?
              thresholds) =>
      _$this._thresholds = thresholds;

  String? _typicalLatency;
  String? get typicalLatency => _$this._typicalLatency;
  set typicalLatency(String? typicalLatency) =>
      _$this._typicalLatency = typicalLatency;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  DeclaredObservabilityKindsValueBuilder() {
    DeclaredObservabilityKindsValue._defaults(this);
  }

  DeclaredObservabilityKindsValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _area = $v.area.toBuilder();
      _thresholds = $v.thresholds?.toBuilder();
      _typicalLatency = $v.typicalLatency;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeclaredObservabilityKindsValue other) {
    _$v = other as _$DeclaredObservabilityKindsValue;
  }

  @override
  void update(void Function(DeclaredObservabilityKindsValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeclaredObservabilityKindsValue build() => _build();

  _$DeclaredObservabilityKindsValue _build() {
    _$DeclaredObservabilityKindsValue _$result;
    try {
      _$result = _$v ??
          _$DeclaredObservabilityKindsValue._(
            area: area.build(),
            thresholds: _thresholds?.build(),
            typicalLatency: typicalLatency,
            notes: notes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        area.build();
        _$failedField = 'thresholds';
        _thresholds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeclaredObservabilityKindsValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
