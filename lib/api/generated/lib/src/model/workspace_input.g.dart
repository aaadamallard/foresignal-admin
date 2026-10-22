// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WorkspaceInputMembersEnum _$workspaceInputMembersEnum_viewer =
    const WorkspaceInputMembersEnum._('viewer');
const WorkspaceInputMembersEnum _$workspaceInputMembersEnum_editor =
    const WorkspaceInputMembersEnum._('editor');

WorkspaceInputMembersEnum _$workspaceInputMembersEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$workspaceInputMembersEnum_viewer;
    case 'editor':
      return _$workspaceInputMembersEnum_editor;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WorkspaceInputMembersEnum> _$workspaceInputMembersEnumValues =
    BuiltSet<WorkspaceInputMembersEnum>(const <WorkspaceInputMembersEnum>[
      _$workspaceInputMembersEnum_viewer,
      _$workspaceInputMembersEnum_editor,
    ]);

Serializer<WorkspaceInputMembersEnum> _$workspaceInputMembersEnumSerializer =
    _$WorkspaceInputMembersEnumSerializer();

class _$WorkspaceInputMembersEnumSerializer
    implements PrimitiveSerializer<WorkspaceInputMembersEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'editor': 'editor',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'editor': 'editor',
  };

  @override
  final Iterable<Type> types = const <Type>[WorkspaceInputMembersEnum];
  @override
  final String wireName = 'WorkspaceInputMembersEnum';

  @override
  Object serialize(
    Serializers serializers,
    WorkspaceInputMembersEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WorkspaceInputMembersEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WorkspaceInputMembersEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WorkspaceInput extends WorkspaceInput {
  @override
  final String name;
  @override
  final BuiltMap<String, WorkspaceInputMembersEnum>? members;
  @override
  final WorkspaceContext? context;
  @override
  final BuiltMap<String, JsonObject?>? layout;
  @override
  final BuiltList<String>? savedViewIds;
  @override
  final String? investigationId;
  @override
  final bool? private;

  factory _$WorkspaceInput([void Function(WorkspaceInputBuilder)? updates]) =>
      (WorkspaceInputBuilder()..update(updates))._build();

  _$WorkspaceInput._({
    required this.name,
    this.members,
    this.context,
    this.layout,
    this.savedViewIds,
    this.investigationId,
    this.private,
  }) : super._();
  @override
  WorkspaceInput rebuild(void Function(WorkspaceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspaceInputBuilder toBuilder() => WorkspaceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceInput &&
        name == other.name &&
        members == other.members &&
        context == other.context &&
        layout == other.layout &&
        savedViewIds == other.savedViewIds &&
        investigationId == other.investigationId &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, layout.hashCode);
    _$hash = $jc(_$hash, savedViewIds.hashCode);
    _$hash = $jc(_$hash, investigationId.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspaceInput')
          ..add('name', name)
          ..add('members', members)
          ..add('context', context)
          ..add('layout', layout)
          ..add('savedViewIds', savedViewIds)
          ..add('investigationId', investigationId)
          ..add('private', private))
        .toString();
  }
}

class WorkspaceInputBuilder
    implements Builder<WorkspaceInput, WorkspaceInputBuilder> {
  _$WorkspaceInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MapBuilder<String, WorkspaceInputMembersEnum>? _members;
  MapBuilder<String, WorkspaceInputMembersEnum> get members =>
      _$this._members ??= MapBuilder<String, WorkspaceInputMembersEnum>();
  set members(MapBuilder<String, WorkspaceInputMembersEnum>? members) =>
      _$this._members = members;

  WorkspaceContextBuilder? _context;
  WorkspaceContextBuilder get context =>
      _$this._context ??= WorkspaceContextBuilder();
  set context(WorkspaceContextBuilder? context) => _$this._context = context;

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

  WorkspaceInputBuilder() {
    WorkspaceInput._defaults(this);
  }

  WorkspaceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _members = $v.members?.toBuilder();
      _context = $v.context?.toBuilder();
      _layout = $v.layout?.toBuilder();
      _savedViewIds = $v.savedViewIds?.toBuilder();
      _investigationId = $v.investigationId;
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspaceInput other) {
    _$v = other as _$WorkspaceInput;
  }

  @override
  void update(void Function(WorkspaceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceInput build() => _build();

  _$WorkspaceInput _build() {
    _$WorkspaceInput _$result;
    try {
      _$result =
          _$v ??
          _$WorkspaceInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'WorkspaceInput',
              'name',
            ),
            members: _members?.build(),
            context: _context?.build(),
            layout: _layout?.build(),
            savedViewIds: _savedViewIds?.build(),
            investigationId: investigationId,
            private: private,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        _members?.build();
        _$failedField = 'context';
        _context?.build();
        _$failedField = 'layout';
        _layout?.build();
        _$failedField = 'savedViewIds';
        _savedViewIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WorkspaceInput',
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
