// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidence_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvidenceGroup extends EvidenceGroup {
  @override
  final String id;
  @override
  final String canonicalEventId;
  @override
  final String originatorRoot;
  @override
  final int memberCount;
  @override
  final int firstSeq;

  factory _$EvidenceGroup([void Function(EvidenceGroupBuilder)? updates]) =>
      (EvidenceGroupBuilder()..update(updates))._build();

  _$EvidenceGroup._({
    required this.id,
    required this.canonicalEventId,
    required this.originatorRoot,
    required this.memberCount,
    required this.firstSeq,
  }) : super._();
  @override
  EvidenceGroup rebuild(void Function(EvidenceGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvidenceGroupBuilder toBuilder() => EvidenceGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvidenceGroup &&
        id == other.id &&
        canonicalEventId == other.canonicalEventId &&
        originatorRoot == other.originatorRoot &&
        memberCount == other.memberCount &&
        firstSeq == other.firstSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, canonicalEventId.hashCode);
    _$hash = $jc(_$hash, originatorRoot.hashCode);
    _$hash = $jc(_$hash, memberCount.hashCode);
    _$hash = $jc(_$hash, firstSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EvidenceGroup')
          ..add('id', id)
          ..add('canonicalEventId', canonicalEventId)
          ..add('originatorRoot', originatorRoot)
          ..add('memberCount', memberCount)
          ..add('firstSeq', firstSeq))
        .toString();
  }
}

class EvidenceGroupBuilder
    implements Builder<EvidenceGroup, EvidenceGroupBuilder> {
  _$EvidenceGroup? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _canonicalEventId;
  String? get canonicalEventId => _$this._canonicalEventId;
  set canonicalEventId(String? canonicalEventId) =>
      _$this._canonicalEventId = canonicalEventId;

  String? _originatorRoot;
  String? get originatorRoot => _$this._originatorRoot;
  set originatorRoot(String? originatorRoot) =>
      _$this._originatorRoot = originatorRoot;

  int? _memberCount;
  int? get memberCount => _$this._memberCount;
  set memberCount(int? memberCount) => _$this._memberCount = memberCount;

  int? _firstSeq;
  int? get firstSeq => _$this._firstSeq;
  set firstSeq(int? firstSeq) => _$this._firstSeq = firstSeq;

  EvidenceGroupBuilder() {
    EvidenceGroup._defaults(this);
  }

  EvidenceGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _canonicalEventId = $v.canonicalEventId;
      _originatorRoot = $v.originatorRoot;
      _memberCount = $v.memberCount;
      _firstSeq = $v.firstSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvidenceGroup other) {
    _$v = other as _$EvidenceGroup;
  }

  @override
  void update(void Function(EvidenceGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvidenceGroup build() => _build();

  _$EvidenceGroup _build() {
    final _$result =
        _$v ??
        _$EvidenceGroup._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'EvidenceGroup', 'id'),
          canonicalEventId: BuiltValueNullFieldError.checkNotNull(
            canonicalEventId,
            r'EvidenceGroup',
            'canonicalEventId',
          ),
          originatorRoot: BuiltValueNullFieldError.checkNotNull(
            originatorRoot,
            r'EvidenceGroup',
            'originatorRoot',
          ),
          memberCount: BuiltValueNullFieldError.checkNotNull(
            memberCount,
            r'EvidenceGroup',
            'memberCount',
          ),
          firstSeq: BuiltValueNullFieldError.checkNotNull(
            firstSeq,
            r'EvidenceGroup',
            'firstSeq',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
