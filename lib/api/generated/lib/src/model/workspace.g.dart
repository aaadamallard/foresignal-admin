// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WorkspaceMembersEnum _$workspaceMembersEnum_viewer =
    const WorkspaceMembersEnum._('viewer');
const WorkspaceMembersEnum _$workspaceMembersEnum_editor =
    const WorkspaceMembersEnum._('editor');

WorkspaceMembersEnum _$workspaceMembersEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$workspaceMembersEnum_viewer;
    case 'editor':
      return _$workspaceMembersEnum_editor;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WorkspaceMembersEnum> _$workspaceMembersEnumValues =
    BuiltSet<WorkspaceMembersEnum>(const <WorkspaceMembersEnum>[
      _$workspaceMembersEnum_viewer,
      _$workspaceMembersEnum_editor,
    ]);

const WorkspaceCallerRoleEnum _$workspaceCallerRoleEnum_owner =
    const WorkspaceCallerRoleEnum._('owner');
const WorkspaceCallerRoleEnum _$workspaceCallerRoleEnum_editor =
    const WorkspaceCallerRoleEnum._('editor');
const WorkspaceCallerRoleEnum _$workspaceCallerRoleEnum_viewer =
    const WorkspaceCallerRoleEnum._('viewer');

WorkspaceCallerRoleEnum _$workspaceCallerRoleEnumValueOf(String name) {
  switch (name) {
    case 'owner':
      return _$workspaceCallerRoleEnum_owner;
    case 'editor':
      return _$workspaceCallerRoleEnum_editor;
    case 'viewer':
      return _$workspaceCallerRoleEnum_viewer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WorkspaceCallerRoleEnum> _$workspaceCallerRoleEnumValues =
    BuiltSet<WorkspaceCallerRoleEnum>(const <WorkspaceCallerRoleEnum>[
      _$workspaceCallerRoleEnum_owner,
      _$workspaceCallerRoleEnum_editor,
      _$workspaceCallerRoleEnum_viewer,
    ]);

Serializer<WorkspaceMembersEnum> _$workspaceMembersEnumSerializer =
    _$WorkspaceMembersEnumSerializer();
Serializer<WorkspaceCallerRoleEnum> _$workspaceCallerRoleEnumSerializer =
    _$WorkspaceCallerRoleEnumSerializer();

class _$WorkspaceMembersEnumSerializer
    implements PrimitiveSerializer<WorkspaceMembersEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'editor': 'editor',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'editor': 'editor',
  };

  @override
  final Iterable<Type> types = const <Type>[WorkspaceMembersEnum];
  @override
  final String wireName = 'WorkspaceMembersEnum';

  @override
  Object serialize(
    Serializers serializers,
    WorkspaceMembersEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WorkspaceMembersEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WorkspaceMembersEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WorkspaceCallerRoleEnumSerializer
    implements PrimitiveSerializer<WorkspaceCallerRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'owner': 'owner',
    'editor': 'editor',
    'viewer': 'viewer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'owner': 'owner',
    'editor': 'editor',
    'viewer': 'viewer',
  };

  @override
  final Iterable<Type> types = const <Type>[WorkspaceCallerRoleEnum];
  @override
  final String wireName = 'WorkspaceCallerRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    WorkspaceCallerRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WorkspaceCallerRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WorkspaceCallerRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Workspace extends Workspace {
  @override
  final String id;
  @override
  final String? ref;
  @override
  final String name;
  @override
  final String owner;
  @override
  final BuiltMap<String, WorkspaceMembersEnum> members;
  @override
  final WorkspaceCallerRoleEnum? callerRole;
  @override
  final WorkspaceContext context;
  @override
  final int contextVersion;
  @override
  final BuiltMap<String, JsonObject?>? layout;
  @override
  final BuiltList<String>? savedViewIds;
  @override
  final String? investigationId;
  @override
  final bool private;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Workspace([void Function(WorkspaceBuilder)? updates]) =>
      (WorkspaceBuilder()..update(updates))._build();

  _$Workspace._({
    required this.id,
    this.ref,
    required this.name,
    required this.owner,
    required this.members,
    this.callerRole,
    required this.context,
    required this.contextVersion,
    this.layout,
    this.savedViewIds,
    this.investigationId,
    required this.private,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  Workspace rebuild(void Function(WorkspaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspaceBuilder toBuilder() => WorkspaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Workspace &&
        id == other.id &&
        ref == other.ref &&
        name == other.name &&
        owner == other.owner &&
        members == other.members &&
        callerRole == other.callerRole &&
        context == other.context &&
        contextVersion == other.contextVersion &&
        layout == other.layout &&
        savedViewIds == other.savedViewIds &&
        investigationId == other.investigationId &&
        private == other.private &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, callerRole.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, contextVersion.hashCode);
    _$hash = $jc(_$hash, layout.hashCode);
    _$hash = $jc(_$hash, savedViewIds.hashCode);
    _$hash = $jc(_$hash, investigationId.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Workspace')
          ..add('id', id)
          ..add('ref', ref)
          ..add('name', name)
          ..add('owner', owner)
          ..add('members', members)
          ..add('callerRole', callerRole)
          ..add('context', context)
          ..add('contextVersion', contextVersion)
          ..add('layout', layout)
          ..add('savedViewIds', savedViewIds)
          ..add('investigationId', investigationId)
          ..add('private', private)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class WorkspaceBuilder implements Builder<Workspace, WorkspaceBuilder> {
  _$Workspace? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  MapBuilder<String, WorkspaceMembersEnum>? _members;
  MapBuilder<String, WorkspaceMembersEnum> get members =>
      _$this._members ??= MapBuilder<String, WorkspaceMembersEnum>();
  set members(MapBuilder<String, WorkspaceMembersEnum>? members) =>
      _$this._members = members;

  WorkspaceCallerRoleEnum? _callerRole;
  WorkspaceCallerRoleEnum? get callerRole => _$this._callerRole;
  set callerRole(WorkspaceCallerRoleEnum? callerRole) =>
      _$this._callerRole = callerRole;

  WorkspaceContextBuilder? _context;
  WorkspaceContextBuilder get context =>
      _$this._context ??= WorkspaceContextBuilder();
  set context(WorkspaceContextBuilder? context) => _$this._context = context;

  int? _contextVersion;
  int? get contextVersion => _$this._contextVersion;
  set contextVersion(int? contextVersion) =>
      _$this._contextVersion = contextVersion;

  MapBuilder<String, JsonObject?>? _layout;
  MapBuilder<String, JsonObject?> get layout =>
      _$this._layout ??= MapBuilder<String, JsonObject?>();
  set layout(MapBuilder<String, JsonObject?>? layout) =>
      _$this._layout = layout;

  ListBuilder<String>? _savedViewIds;
  ListBuilder<String> get savedViewIds =>
      _$this._savedViewIds ??= ListBuilder<String>();
  set savedViewIds(ListBuilder<String>? savedViewIds) =>
      _$this._savedViewIds = savedViewIds;

  String? _investigationId;
  String? get investigationId => _$this._investigationId;
  set investigationId(String? investigationId) =>
      _$this._investigationId = investigationId;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  WorkspaceBuilder() {
    Workspace._defaults(this);
  }

  WorkspaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _name = $v.name;
      _owner = $v.owner;
      _members = $v.members.toBuilder();
      _callerRole = $v.callerRole;
      _context = $v.context.toBuilder();
      _contextVersion = $v.contextVersion;
      _layout = $v.layout?.toBuilder();
      _savedViewIds = $v.savedViewIds?.toBuilder();
      _investigationId = $v.investigationId;
      _private = $v.private;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Workspace other) {
    _$v = other as _$Workspace;
  }

  @override
  void update(void Function(WorkspaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Workspace build() => _build();

  _$Workspace _build() {
    _$Workspace _$result;
    try {
      _$result =
          _$v ??
          _$Workspace._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Workspace', 'id'),
            ref: ref,
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Workspace',
              'name',
            ),
            owner: BuiltValueNullFieldError.checkNotNull(
              owner,
              r'Workspace',
              'owner',
            ),
            members: members.build(),
            callerRole: callerRole,
            context: context.build(),
            contextVersion: BuiltValueNullFieldError.checkNotNull(
              contextVersion,
              r'Workspace',
              'contextVersion',
            ),
            layout: _layout?.build(),
            savedViewIds: _savedViewIds?.build(),
            investigationId: investigationId,
            private: BuiltValueNullFieldError.checkNotNull(
              private,
              r'Workspace',
              'private',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Workspace',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'Workspace',
              'updatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        members.build();

        _$failedField = 'context';
        context.build();

        _$failedField = 'layout';
        _layout?.build();
        _$failedField = 'savedViewIds';
        _savedViewIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Workspace',
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
