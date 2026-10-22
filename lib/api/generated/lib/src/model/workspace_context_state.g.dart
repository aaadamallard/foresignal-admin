// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_context_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkspaceContextState extends WorkspaceContextState {
  @override
  final String workspaceId;
  @override
  final int contextVersion;
  @override
  final WorkspaceContext context;

  factory _$WorkspaceContextState([
    void Function(WorkspaceContextStateBuilder)? updates,
  ]) => (WorkspaceContextStateBuilder()..update(updates))._build();

  _$WorkspaceContextState._({
    required this.workspaceId,
    required this.contextVersion,
    required this.context,
  }) : super._();
  @override
  WorkspaceContextState rebuild(
    void Function(WorkspaceContextStateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WorkspaceContextStateBuilder toBuilder() =>
      WorkspaceContextStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceContextState &&
        workspaceId == other.workspaceId &&
        contextVersion == other.contextVersion &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jc(_$hash, contextVersion.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspaceContextState')
          ..add('workspaceId', workspaceId)
          ..add('contextVersion', contextVersion)
          ..add('context', context))
        .toString();
  }
}

class WorkspaceContextStateBuilder
    implements Builder<WorkspaceContextState, WorkspaceContextStateBuilder> {
  _$WorkspaceContextState? _$v;

  String? _workspaceId;
  String? get workspaceId => _$this._workspaceId;
  set workspaceId(String? workspaceId) => _$this._workspaceId = workspaceId;

  int? _contextVersion;
  int? get contextVersion => _$this._contextVersion;
  set contextVersion(int? contextVersion) =>
      _$this._contextVersion = contextVersion;

  WorkspaceContextBuilder? _context;
  WorkspaceContextBuilder get context =>
      _$this._context ??= WorkspaceContextBuilder();
  set context(WorkspaceContextBuilder? context) => _$this._context = context;

  WorkspaceContextStateBuilder() {
    WorkspaceContextState._defaults(this);
  }

  WorkspaceContextStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workspaceId = $v.workspaceId;
      _contextVersion = $v.contextVersion;
      _context = $v.context.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspaceContextState other) {
    _$v = other as _$WorkspaceContextState;
  }

  @override
  void update(void Function(WorkspaceContextStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceContextState build() => _build();

  _$WorkspaceContextState _build() {
    _$WorkspaceContextState _$result;
    try {
      _$result =
          _$v ??
          _$WorkspaceContextState._(
            workspaceId: BuiltValueNullFieldError.checkNotNull(
              workspaceId,
              r'WorkspaceContextState',
              'workspaceId',
            ),
            contextVersion: BuiltValueNullFieldError.checkNotNull(
              contextVersion,
              r'WorkspaceContextState',
              'contextVersion',
            ),
            context: context.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'context';
        context.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WorkspaceContextState',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
