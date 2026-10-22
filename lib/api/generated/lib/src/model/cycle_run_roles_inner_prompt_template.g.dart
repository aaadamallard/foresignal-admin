// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_run_roles_inner_prompt_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CycleRunRolesInnerPromptTemplate
    extends CycleRunRolesInnerPromptTemplate {
  @override
  final String id;
  @override
  final String version;

  factory _$CycleRunRolesInnerPromptTemplate(
          [void Function(CycleRunRolesInnerPromptTemplateBuilder)? updates]) =>
      (CycleRunRolesInnerPromptTemplateBuilder()..update(updates))._build();

  _$CycleRunRolesInnerPromptTemplate._(
      {required this.id, required this.version})
      : super._();
  @override
  CycleRunRolesInnerPromptTemplate rebuild(
          void Function(CycleRunRolesInnerPromptTemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CycleRunRolesInnerPromptTemplateBuilder toBuilder() =>
      CycleRunRolesInnerPromptTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CycleRunRolesInnerPromptTemplate &&
        id == other.id &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CycleRunRolesInnerPromptTemplate')
          ..add('id', id)
          ..add('version', version))
        .toString();
  }
}

class CycleRunRolesInnerPromptTemplateBuilder
    implements
        Builder<CycleRunRolesInnerPromptTemplate,
            CycleRunRolesInnerPromptTemplateBuilder> {
  _$CycleRunRolesInnerPromptTemplate? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  CycleRunRolesInnerPromptTemplateBuilder() {
    CycleRunRolesInnerPromptTemplate._defaults(this);
  }

  CycleRunRolesInnerPromptTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CycleRunRolesInnerPromptTemplate other) {
    _$v = other as _$CycleRunRolesInnerPromptTemplate;
  }

  @override
  void update(void Function(CycleRunRolesInnerPromptTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CycleRunRolesInnerPromptTemplate build() => _build();

  _$CycleRunRolesInnerPromptTemplate _build() {
    final _$result = _$v ??
        _$CycleRunRolesInnerPromptTemplate._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CycleRunRolesInnerPromptTemplate', 'id'),
          version: BuiltValueNullFieldError.checkNotNull(
              version, r'CycleRunRolesInnerPromptTemplate', 'version'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
