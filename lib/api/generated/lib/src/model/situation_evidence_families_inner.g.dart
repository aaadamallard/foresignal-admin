// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_evidence_families_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationEvidenceFamiliesInner extends SituationEvidenceFamiliesInner {
  @override
  final String family;
  @override
  final int count;
  @override
  final int? coreCount;
  @override
  final BuiltList<SituationMember> members;
  @override
  final bool? more;

  factory _$SituationEvidenceFamiliesInner(
          [void Function(SituationEvidenceFamiliesInnerBuilder)? updates]) =>
      (SituationEvidenceFamiliesInnerBuilder()..update(updates))._build();

  _$SituationEvidenceFamiliesInner._(
      {required this.family,
      required this.count,
      this.coreCount,
      required this.members,
      this.more})
      : super._();
  @override
  SituationEvidenceFamiliesInner rebuild(
          void Function(SituationEvidenceFamiliesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationEvidenceFamiliesInnerBuilder toBuilder() =>
      SituationEvidenceFamiliesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationEvidenceFamiliesInner &&
        family == other.family &&
        count == other.count &&
        coreCount == other.coreCount &&
        members == other.members &&
        more == other.more;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, coreCount.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, more.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationEvidenceFamiliesInner')
          ..add('family', family)
          ..add('count', count)
          ..add('coreCount', coreCount)
          ..add('members', members)
          ..add('more', more))
        .toString();
  }
}

class SituationEvidenceFamiliesInnerBuilder
    implements
        Builder<SituationEvidenceFamiliesInner,
            SituationEvidenceFamiliesInnerBuilder> {
  _$SituationEvidenceFamiliesInner? _$v;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _coreCount;
  int? get coreCount => _$this._coreCount;
  set coreCount(int? coreCount) => _$this._coreCount = coreCount;

  ListBuilder<SituationMember>? _members;
  ListBuilder<SituationMember> get members =>
      _$this._members ??= ListBuilder<SituationMember>();
  set members(ListBuilder<SituationMember>? members) =>
      _$this._members = members;

  bool? _more;
  bool? get more => _$this._more;
  set more(bool? more) => _$this._more = more;

  SituationEvidenceFamiliesInnerBuilder() {
    SituationEvidenceFamiliesInner._defaults(this);
  }

  SituationEvidenceFamiliesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _family = $v.family;
      _count = $v.count;
      _coreCount = $v.coreCount;
      _members = $v.members.toBuilder();
      _more = $v.more;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationEvidenceFamiliesInner other) {
    _$v = other as _$SituationEvidenceFamiliesInner;
  }

  @override
  void update(void Function(SituationEvidenceFamiliesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationEvidenceFamiliesInner build() => _build();

  _$SituationEvidenceFamiliesInner _build() {
    _$SituationEvidenceFamiliesInner _$result;
    try {
      _$result = _$v ??
          _$SituationEvidenceFamiliesInner._(
            family: BuiltValueNullFieldError.checkNotNull(
                family, r'SituationEvidenceFamiliesInner', 'family'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'SituationEvidenceFamiliesInner', 'count'),
            coreCount: coreCount,
            members: members.build(),
            more: more,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationEvidenceFamiliesInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
