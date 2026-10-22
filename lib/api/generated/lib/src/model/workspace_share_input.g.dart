// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_share_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkspaceShareInput extends WorkspaceShareInput {
  @override
  final DateTime? expiresAt;
  @override
  final int? maxUses;

  factory _$WorkspaceShareInput([
    void Function(WorkspaceShareInputBuilder)? updates,
  ]) => (WorkspaceShareInputBuilder()..update(updates))._build();

  _$WorkspaceShareInput._({this.expiresAt, this.maxUses}) : super._();
  @override
  WorkspaceShareInput rebuild(
    void Function(WorkspaceShareInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WorkspaceShareInputBuilder toBuilder() =>
      WorkspaceShareInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceShareInput &&
        expiresAt == other.expiresAt &&
        maxUses == other.maxUses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, maxUses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspaceShareInput')
          ..add('expiresAt', expiresAt)
          ..add('maxUses', maxUses))
        .toString();
  }
}

class WorkspaceShareInputBuilder
    implements Builder<WorkspaceShareInput, WorkspaceShareInputBuilder> {
  _$WorkspaceShareInput? _$v;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  int? _maxUses;
  int? get maxUses => _$this._maxUses;
  set maxUses(int? maxUses) => _$this._maxUses = maxUses;

  WorkspaceShareInputBuilder() {
    WorkspaceShareInput._defaults(this);
  }

  WorkspaceShareInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expiresAt = $v.expiresAt;
      _maxUses = $v.maxUses;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspaceShareInput other) {
    _$v = other as _$WorkspaceShareInput;
  }

  @override
  void update(void Function(WorkspaceShareInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceShareInput build() => _build();

  _$WorkspaceShareInput _build() {
    final _$result =
        _$v ?? _$WorkspaceShareInput._(expiresAt: expiresAt, maxUses: maxUses);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
