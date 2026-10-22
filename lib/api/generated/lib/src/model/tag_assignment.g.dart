// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_assignment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagAssignment extends TagAssignment {
  @override
  final String tagId;
  @override
  final Tag? tag;
  @override
  final String objectRef;
  @override
  final PrincipalSummary? assignedBy;
  @override
  final DateTime assignedAt;

  factory _$TagAssignment([void Function(TagAssignmentBuilder)? updates]) =>
      (TagAssignmentBuilder()..update(updates))._build();

  _$TagAssignment._(
      {required this.tagId,
      this.tag,
      required this.objectRef,
      this.assignedBy,
      required this.assignedAt})
      : super._();
  @override
  TagAssignment rebuild(void Function(TagAssignmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagAssignmentBuilder toBuilder() => TagAssignmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagAssignment &&
        tagId == other.tagId &&
        tag == other.tag &&
        objectRef == other.objectRef &&
        assignedBy == other.assignedBy &&
        assignedAt == other.assignedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tagId.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, objectRef.hashCode);
    _$hash = $jc(_$hash, assignedBy.hashCode);
    _$hash = $jc(_$hash, assignedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagAssignment')
          ..add('tagId', tagId)
          ..add('tag', tag)
          ..add('objectRef', objectRef)
          ..add('assignedBy', assignedBy)
          ..add('assignedAt', assignedAt))
        .toString();
  }
}

class TagAssignmentBuilder
    implements Builder<TagAssignment, TagAssignmentBuilder> {
  _$TagAssignment? _$v;

  String? _tagId;
  String? get tagId => _$this._tagId;
  set tagId(String? tagId) => _$this._tagId = tagId;

  TagBuilder? _tag;
  TagBuilder get tag => _$this._tag ??= TagBuilder();
  set tag(TagBuilder? tag) => _$this._tag = tag;

  String? _objectRef;
  String? get objectRef => _$this._objectRef;
  set objectRef(String? objectRef) => _$this._objectRef = objectRef;

  PrincipalSummaryBuilder? _assignedBy;
  PrincipalSummaryBuilder get assignedBy =>
      _$this._assignedBy ??= PrincipalSummaryBuilder();
  set assignedBy(PrincipalSummaryBuilder? assignedBy) =>
      _$this._assignedBy = assignedBy;

  DateTime? _assignedAt;
  DateTime? get assignedAt => _$this._assignedAt;
  set assignedAt(DateTime? assignedAt) => _$this._assignedAt = assignedAt;

  TagAssignmentBuilder() {
    TagAssignment._defaults(this);
  }

  TagAssignmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagId = $v.tagId;
      _tag = $v.tag?.toBuilder();
      _objectRef = $v.objectRef;
      _assignedBy = $v.assignedBy?.toBuilder();
      _assignedAt = $v.assignedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagAssignment other) {
    _$v = other as _$TagAssignment;
  }

  @override
  void update(void Function(TagAssignmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagAssignment build() => _build();

  _$TagAssignment _build() {
    _$TagAssignment _$result;
    try {
      _$result = _$v ??
          _$TagAssignment._(
            tagId: BuiltValueNullFieldError.checkNotNull(
                tagId, r'TagAssignment', 'tagId'),
            tag: _tag?.build(),
            objectRef: BuiltValueNullFieldError.checkNotNull(
                objectRef, r'TagAssignment', 'objectRef'),
            assignedBy: _assignedBy?.build(),
            assignedAt: BuiltValueNullFieldError.checkNotNull(
                assignedAt, r'TagAssignment', 'assignedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tag';
        _tag?.build();

        _$failedField = 'assignedBy';
        _assignedBy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TagAssignment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
