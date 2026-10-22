// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_threshold.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldThreshold extends FieldThreshold {
  @override
  final String field;
  @override
  final num delta;
  @override
  final bool? angular;

  factory _$FieldThreshold([void Function(FieldThresholdBuilder)? updates]) =>
      (FieldThresholdBuilder()..update(updates))._build();

  _$FieldThreshold._({required this.field, required this.delta, this.angular})
      : super._();
  @override
  FieldThreshold rebuild(void Function(FieldThresholdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldThresholdBuilder toBuilder() => FieldThresholdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldThreshold &&
        field == other.field &&
        delta == other.delta &&
        angular == other.angular;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jc(_$hash, delta.hashCode);
    _$hash = $jc(_$hash, angular.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldThreshold')
          ..add('field', field)
          ..add('delta', delta)
          ..add('angular', angular))
        .toString();
  }
}

class FieldThresholdBuilder
    implements Builder<FieldThreshold, FieldThresholdBuilder> {
  _$FieldThreshold? _$v;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  num? _delta;
  num? get delta => _$this._delta;
  set delta(num? delta) => _$this._delta = delta;

  bool? _angular;
  bool? get angular => _$this._angular;
  set angular(bool? angular) => _$this._angular = angular;

  FieldThresholdBuilder() {
    FieldThreshold._defaults(this);
  }

  FieldThresholdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _field = $v.field;
      _delta = $v.delta;
      _angular = $v.angular;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldThreshold other) {
    _$v = other as _$FieldThreshold;
  }

  @override
  void update(void Function(FieldThresholdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldThreshold build() => _build();

  _$FieldThreshold _build() {
    final _$result = _$v ??
        _$FieldThreshold._(
          field: BuiltValueNullFieldError.checkNotNull(
              field, r'FieldThreshold', 'field'),
          delta: BuiltValueNullFieldError.checkNotNull(
              delta, r'FieldThreshold', 'delta'),
          angular: angular,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
