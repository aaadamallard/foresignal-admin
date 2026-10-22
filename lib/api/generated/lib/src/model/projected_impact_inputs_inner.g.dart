// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projected_impact_inputs_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectedImpactInputsInner extends ProjectedImpactInputsInner {
  @override
  final String name;
  @override
  final JsonObject? value;
  @override
  final String? ref;

  factory _$ProjectedImpactInputsInner([
    void Function(ProjectedImpactInputsInnerBuilder)? updates,
  ]) => (ProjectedImpactInputsInnerBuilder()..update(updates))._build();

  _$ProjectedImpactInputsInner._({required this.name, this.value, this.ref})
    : super._();
  @override
  ProjectedImpactInputsInner rebuild(
    void Function(ProjectedImpactInputsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProjectedImpactInputsInnerBuilder toBuilder() =>
      ProjectedImpactInputsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectedImpactInputsInner &&
        name == other.name &&
        value == other.value &&
        ref == other.ref;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectedImpactInputsInner')
          ..add('name', name)
          ..add('value', value)
          ..add('ref', ref))
        .toString();
  }
}

class ProjectedImpactInputsInnerBuilder
    implements
        Builder<ProjectedImpactInputsInner, ProjectedImpactInputsInnerBuilder> {
  _$ProjectedImpactInputsInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ProjectedImpactInputsInnerBuilder() {
    ProjectedImpactInputsInner._defaults(this);
  }

  ProjectedImpactInputsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _ref = $v.ref;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectedImpactInputsInner other) {
    _$v = other as _$ProjectedImpactInputsInner;
  }

  @override
  void update(void Function(ProjectedImpactInputsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectedImpactInputsInner build() => _build();

  _$ProjectedImpactInputsInner _build() {
    final _$result =
        _$v ??
        _$ProjectedImpactInputsInner._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ProjectedImpactInputsInner',
            'name',
          ),
          value: value,
          ref: ref,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
