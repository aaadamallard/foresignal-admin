// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motion_spec.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MotionSpec extends MotionSpec {
  @override
  final String speedField;
  @override
  final String speedUnit;
  @override
  final String? courseField;

  factory _$MotionSpec([void Function(MotionSpecBuilder)? updates]) =>
      (MotionSpecBuilder()..update(updates))._build();

  _$MotionSpec._(
      {required this.speedField, required this.speedUnit, this.courseField})
      : super._();
  @override
  MotionSpec rebuild(void Function(MotionSpecBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MotionSpecBuilder toBuilder() => MotionSpecBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MotionSpec &&
        speedField == other.speedField &&
        speedUnit == other.speedUnit &&
        courseField == other.courseField;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speedField.hashCode);
    _$hash = $jc(_$hash, speedUnit.hashCode);
    _$hash = $jc(_$hash, courseField.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MotionSpec')
          ..add('speedField', speedField)
          ..add('speedUnit', speedUnit)
          ..add('courseField', courseField))
        .toString();
  }
}

class MotionSpecBuilder implements Builder<MotionSpec, MotionSpecBuilder> {
  _$MotionSpec? _$v;

  String? _speedField;
  String? get speedField => _$this._speedField;
  set speedField(String? speedField) => _$this._speedField = speedField;

  String? _speedUnit;
  String? get speedUnit => _$this._speedUnit;
  set speedUnit(String? speedUnit) => _$this._speedUnit = speedUnit;

  String? _courseField;
  String? get courseField => _$this._courseField;
  set courseField(String? courseField) => _$this._courseField = courseField;

  MotionSpecBuilder() {
    MotionSpec._defaults(this);
  }

  MotionSpecBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speedField = $v.speedField;
      _speedUnit = $v.speedUnit;
      _courseField = $v.courseField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MotionSpec other) {
    _$v = other as _$MotionSpec;
  }

  @override
  void update(void Function(MotionSpecBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MotionSpec build() => _build();

  _$MotionSpec _build() {
    final _$result = _$v ??
        _$MotionSpec._(
          speedField: BuiltValueNullFieldError.checkNotNull(
              speedField, r'MotionSpec', 'speedField'),
          speedUnit: BuiltValueNullFieldError.checkNotNull(
              speedUnit, r'MotionSpec', 'speedUnit'),
          courseField: courseField,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
