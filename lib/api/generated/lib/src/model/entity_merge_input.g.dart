// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_merge_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityMergeInput extends EntityMergeInput {
  @override
  final String otherId;

  factory _$EntityMergeInput([
    void Function(EntityMergeInputBuilder)? updates,
  ]) => (EntityMergeInputBuilder()..update(updates))._build();

  _$EntityMergeInput._({required this.otherId}) : super._();
  @override
  EntityMergeInput rebuild(void Function(EntityMergeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityMergeInputBuilder toBuilder() =>
      EntityMergeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityMergeInput && otherId == other.otherId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, otherId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'EntityMergeInput',
    )..add('otherId', otherId)).toString();
  }
}

class EntityMergeInputBuilder
    implements Builder<EntityMergeInput, EntityMergeInputBuilder> {
  _$EntityMergeInput? _$v;

  String? _otherId;
  String? get otherId => _$this._otherId;
  set otherId(String? otherId) => _$this._otherId = otherId;

  EntityMergeInputBuilder() {
    EntityMergeInput._defaults(this);
  }

  EntityMergeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _otherId = $v.otherId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityMergeInput other) {
    _$v = other as _$EntityMergeInput;
  }

  @override
  void update(void Function(EntityMergeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityMergeInput build() => _build();

  _$EntityMergeInput _build() {
    final _$result =
        _$v ??
        _$EntityMergeInput._(
          otherId: BuiltValueNullFieldError.checkNotNull(
            otherId,
            r'EntityMergeInput',
            'otherId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
