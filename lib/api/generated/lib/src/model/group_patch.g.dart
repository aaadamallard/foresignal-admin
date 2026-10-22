// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupPatch extends GroupPatch {
  @override
  final String? name;
  @override
  final String? description;

  factory _$GroupPatch([void Function(GroupPatchBuilder)? updates]) =>
      (GroupPatchBuilder()..update(updates))._build();

  _$GroupPatch._({this.name, this.description}) : super._();
  @override
  GroupPatch rebuild(void Function(GroupPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupPatchBuilder toBuilder() => GroupPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupPatch &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupPatch')
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GroupPatchBuilder implements Builder<GroupPatch, GroupPatchBuilder> {
  _$GroupPatch? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GroupPatchBuilder() {
    GroupPatch._defaults(this);
  }

  GroupPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupPatch other) {
    _$v = other as _$GroupPatch;
  }

  @override
  void update(void Function(GroupPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupPatch build() => _build();

  _$GroupPatch _build() {
    final _$result = _$v ??
        _$GroupPatch._(
          name: name,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
