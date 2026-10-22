// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intelligence_event_evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelligenceEventEvidence extends IntelligenceEventEvidence {
  @override
  final int memberCount;
  @override
  final BuiltList<String>? signalFamilies;
  @override
  final BuiltList<IntelEventMember> members;

  factory _$IntelligenceEventEvidence([
    void Function(IntelligenceEventEvidenceBuilder)? updates,
  ]) => (IntelligenceEventEvidenceBuilder()..update(updates))._build();

  _$IntelligenceEventEvidence._({
    required this.memberCount,
    this.signalFamilies,
    required this.members,
  }) : super._();
  @override
  IntelligenceEventEvidence rebuild(
    void Function(IntelligenceEventEvidenceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelligenceEventEvidenceBuilder toBuilder() =>
      IntelligenceEventEvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelligenceEventEvidence &&
        memberCount == other.memberCount &&
        signalFamilies == other.signalFamilies &&
        members == other.members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, memberCount.hashCode);
    _$hash = $jc(_$hash, signalFamilies.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelligenceEventEvidence')
          ..add('memberCount', memberCount)
          ..add('signalFamilies', signalFamilies)
          ..add('members', members))
        .toString();
  }
}

class IntelligenceEventEvidenceBuilder
    implements
        Builder<IntelligenceEventEvidence, IntelligenceEventEvidenceBuilder> {
  _$IntelligenceEventEvidence? _$v;

  int? _memberCount;
  int? get memberCount => _$this._memberCount;
  set memberCount(int? memberCount) => _$this._memberCount = memberCount;

  ListBuilder<String>? _signalFamilies;
  ListBuilder<String> get signalFamilies =>
      _$this._signalFamilies ??= ListBuilder<String>();
  set signalFamilies(ListBuilder<String>? signalFamilies) =>
      _$this._signalFamilies = signalFamilies;

  ListBuilder<IntelEventMember>? _members;
  ListBuilder<IntelEventMember> get members =>
      _$this._members ??= ListBuilder<IntelEventMember>();
  set members(ListBuilder<IntelEventMember>? members) =>
      _$this._members = members;

  IntelligenceEventEvidenceBuilder() {
    IntelligenceEventEvidence._defaults(this);
  }

  IntelligenceEventEvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberCount = $v.memberCount;
      _signalFamilies = $v.signalFamilies?.toBuilder();
      _members = $v.members.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelligenceEventEvidence other) {
    _$v = other as _$IntelligenceEventEvidence;
  }

  @override
  void update(void Function(IntelligenceEventEvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelligenceEventEvidence build() => _build();

  _$IntelligenceEventEvidence _build() {
    _$IntelligenceEventEvidence _$result;
    try {
      _$result =
          _$v ??
          _$IntelligenceEventEvidence._(
            memberCount: BuiltValueNullFieldError.checkNotNull(
              memberCount,
              r'IntelligenceEventEvidence',
              'memberCount',
            ),
            signalFamilies: _signalFamilies?.build(),
            members: members.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signalFamilies';
        _signalFamilies?.build();
        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelligenceEventEvidence',
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
