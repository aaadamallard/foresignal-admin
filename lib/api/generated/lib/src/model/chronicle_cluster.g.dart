// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_cluster.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleCluster extends ChronicleCluster {
  @override
  final String id;
  @override
  final BuiltList<ChronicleClusterMembersInner> members;
  @override
  final int visibleMembers;
  @override
  final int opaqueMembers;
  @override
  final DateTime updatedAt;

  factory _$ChronicleCluster(
          [void Function(ChronicleClusterBuilder)? updates]) =>
      (ChronicleClusterBuilder()..update(updates))._build();

  _$ChronicleCluster._(
      {required this.id,
      required this.members,
      required this.visibleMembers,
      required this.opaqueMembers,
      required this.updatedAt})
      : super._();
  @override
  ChronicleCluster rebuild(void Function(ChronicleClusterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleClusterBuilder toBuilder() =>
      ChronicleClusterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleCluster &&
        id == other.id &&
        members == other.members &&
        visibleMembers == other.visibleMembers &&
        opaqueMembers == other.opaqueMembers &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, visibleMembers.hashCode);
    _$hash = $jc(_$hash, opaqueMembers.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleCluster')
          ..add('id', id)
          ..add('members', members)
          ..add('visibleMembers', visibleMembers)
          ..add('opaqueMembers', opaqueMembers)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ChronicleClusterBuilder
    implements Builder<ChronicleCluster, ChronicleClusterBuilder> {
  _$ChronicleCluster? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<ChronicleClusterMembersInner>? _members;
  ListBuilder<ChronicleClusterMembersInner> get members =>
      _$this._members ??= ListBuilder<ChronicleClusterMembersInner>();
  set members(ListBuilder<ChronicleClusterMembersInner>? members) =>
      _$this._members = members;

  int? _visibleMembers;
  int? get visibleMembers => _$this._visibleMembers;
  set visibleMembers(int? visibleMembers) =>
      _$this._visibleMembers = visibleMembers;

  int? _opaqueMembers;
  int? get opaqueMembers => _$this._opaqueMembers;
  set opaqueMembers(int? opaqueMembers) =>
      _$this._opaqueMembers = opaqueMembers;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ChronicleClusterBuilder() {
    ChronicleCluster._defaults(this);
  }

  ChronicleClusterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _members = $v.members.toBuilder();
      _visibleMembers = $v.visibleMembers;
      _opaqueMembers = $v.opaqueMembers;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleCluster other) {
    _$v = other as _$ChronicleCluster;
  }

  @override
  void update(void Function(ChronicleClusterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleCluster build() => _build();

  _$ChronicleCluster _build() {
    _$ChronicleCluster _$result;
    try {
      _$result = _$v ??
          _$ChronicleCluster._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ChronicleCluster', 'id'),
            members: members.build(),
            visibleMembers: BuiltValueNullFieldError.checkNotNull(
                visibleMembers, r'ChronicleCluster', 'visibleMembers'),
            opaqueMembers: BuiltValueNullFieldError.checkNotNull(
                opaqueMembers, r'ChronicleCluster', 'opaqueMembers'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'ChronicleCluster', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleCluster', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
