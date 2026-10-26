// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_ref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleRef extends RoleRef {
  @override
  final String id;
  @override
  final String name;

  factory _$RoleRef([void Function(RoleRefBuilder)? updates]) =>
      (RoleRefBuilder()..update(updates))._build();

  _$RoleRef._({required this.id, required this.name}) : super._();
  @override
  RoleRef rebuild(void Function(RoleRefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleRefBuilder toBuilder() => RoleRefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleRef && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoleRef')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class RoleRefBuilder implements Builder<RoleRef, RoleRefBuilder> {
  _$RoleRef? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  RoleRefBuilder() {
    RoleRef._defaults(this);
  }

  RoleRefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleRef other) {
    _$v = other as _$RoleRef;
  }

  @override
  void update(void Function(RoleRefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleRef build() => _build();

  _$RoleRef _build() {
    final _$result =
        _$v ??
        _$RoleRef._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'RoleRef', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'RoleRef', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
