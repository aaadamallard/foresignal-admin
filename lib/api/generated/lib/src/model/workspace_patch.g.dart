// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WorkspacePatchMembersEnum _$workspacePatchMembersEnum_viewer =
    const WorkspacePatchMembersEnum._('viewer');
const WorkspacePatchMembersEnum _$workspacePatchMembersEnum_editor =
    const WorkspacePatchMembersEnum._('editor');

WorkspacePatchMembersEnum _$workspacePatchMembersEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$workspacePatchMembersEnum_viewer;
    case 'editor':
      return _$workspacePatchMembersEnum_editor;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WorkspacePatchMembersEnum> _$workspacePatchMembersEnumValues =
    BuiltSet<WorkspacePatchMembersEnum>(const <WorkspacePatchMembersEnum>[
      _$workspacePatchMembersEnum_viewer,
      _$workspacePatchMembersEnum_editor,
    ]);

Serializer<WorkspacePatchMembersEnum> _$workspacePatchMembersEnumSerializer =
    _$WorkspacePatchMembersEnumSerializer();

class _$WorkspacePatchMembersEnumSerializer
    implements PrimitiveSerializer<WorkspacePatchMembersEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'editor': 'editor',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'editor': 'editor',
  };

  @override
  final Iterable<Type> types = const <Type>[WorkspacePatchMembersEnum];
  @override
  final String wireName = 'WorkspacePatchMembersEnum';

  @override
  Object serialize(
    Serializers serializers,
    WorkspacePatchMembersEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WorkspacePatchMembersEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WorkspacePatchMembersEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WorkspacePatch extends WorkspacePatch {
  @override
  final String? name;
  @override
  final BuiltMap<String, WorkspacePatchMembersEnum>? members;
  @override
  final BuiltList<String>? savedViewIds;
  @override
  final String? investigationId;
  @override
  final bool? private;

  factory _$WorkspacePatch([void Function(WorkspacePatchBuilder)? updates]) =>
      (WorkspacePatchBuilder()..update(updates))._build();

  _$WorkspacePatch._({
    this.name,
    this.members,
    this.savedViewIds,
    this.investigationId,
    this.private,
  }) : super._();
  @override
  WorkspacePatch rebuild(void Function(WorkspacePatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspacePatchBuilder toBuilder() => WorkspacePatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspacePatch &&
        name == other.name &&
        members == other.members &&
        savedViewIds == other.savedViewIds &&
        investigationId == other.investigationId &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, savedViewIds.hashCode);
    _$hash = $jc(_$hash, investigationId.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspacePatch')
          ..add('name', name)
          ..add('members', members)
          ..add('savedViewIds', savedViewIds)
          ..add('investigationId', investigationId)
          ..add('private', private))
        .toString();
  }
}

class WorkspacePatchBuilder
    implements Builder<WorkspacePatch, WorkspacePatchBuilder> {
  _$WorkspacePatch? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MapBuilder<String, WorkspacePatchMembersEnum>? _members;
  MapBuilder<String, WorkspacePatchMembersEnum> get members =>
      _$this._members ??= MapBuilder<String, WorkspacePatchMembersEnum>();
  set members(MapBuilder<String, WorkspacePatchMembersEnum>? members) =>
      _$this._members = members;

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

  WorkspacePatchBuilder() {
    WorkspacePatch._defaults(this);
  }

  WorkspacePatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _members = $v.members?.toBuilder();
      _savedViewIds = $v.savedViewIds?.toBuilder();
      _investigationId = $v.investigationId;
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspacePatch other) {
    _$v = other as _$WorkspacePatch;
  }

  @override
  void update(void Function(WorkspacePatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspacePatch build() => _build();

  _$WorkspacePatch _build() {
    _$WorkspacePatch _$result;
    try {
      _$result =
          _$v ??
          _$WorkspacePatch._(
            name: name,
            members: _members?.build(),
            savedViewIds: _savedViewIds?.build(),
            investigationId: investigationId,
            private: private,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        _members?.build();
        _$failedField = 'savedViewIds';
        _savedViewIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WorkspacePatch',
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
