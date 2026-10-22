// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationEvidence extends SituationEvidence {
  @override
  final SituationEvidenceMemberCounts memberCounts;
  @override
  final BuiltList<SituationEvidenceFamiliesInner> families;
  @override
  final SituationEvidenceCorroboration corroboration;

  factory _$SituationEvidence([
    void Function(SituationEvidenceBuilder)? updates,
  ]) => (SituationEvidenceBuilder()..update(updates))._build();

  _$SituationEvidence._({
    required this.memberCounts,
    required this.families,
    required this.corroboration,
  }) : super._();
  @override
  SituationEvidence rebuild(void Function(SituationEvidenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationEvidenceBuilder toBuilder() =>
      SituationEvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationEvidence &&
        memberCounts == other.memberCounts &&
        families == other.families &&
        corroboration == other.corroboration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, memberCounts.hashCode);
    _$hash = $jc(_$hash, families.hashCode);
    _$hash = $jc(_$hash, corroboration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationEvidence')
          ..add('memberCounts', memberCounts)
          ..add('families', families)
          ..add('corroboration', corroboration))
        .toString();
  }
}

class SituationEvidenceBuilder
    implements Builder<SituationEvidence, SituationEvidenceBuilder> {
  _$SituationEvidence? _$v;

  SituationEvidenceMemberCountsBuilder? _memberCounts;
  SituationEvidenceMemberCountsBuilder get memberCounts =>
      _$this._memberCounts ??= SituationEvidenceMemberCountsBuilder();
  set memberCounts(SituationEvidenceMemberCountsBuilder? memberCounts) =>
      _$this._memberCounts = memberCounts;

  ListBuilder<SituationEvidenceFamiliesInner>? _families;
  ListBuilder<SituationEvidenceFamiliesInner> get families =>
      _$this._families ??= ListBuilder<SituationEvidenceFamiliesInner>();
  set families(ListBuilder<SituationEvidenceFamiliesInner>? families) =>
      _$this._families = families;

  SituationEvidenceCorroborationBuilder? _corroboration;
  SituationEvidenceCorroborationBuilder get corroboration =>
      _$this._corroboration ??= SituationEvidenceCorroborationBuilder();
  set corroboration(SituationEvidenceCorroborationBuilder? corroboration) =>
      _$this._corroboration = corroboration;

  SituationEvidenceBuilder() {
    SituationEvidence._defaults(this);
  }

  SituationEvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberCounts = $v.memberCounts.toBuilder();
      _families = $v.families.toBuilder();
      _corroboration = $v.corroboration.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationEvidence other) {
    _$v = other as _$SituationEvidence;
  }

  @override
  void update(void Function(SituationEvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationEvidence build() => _build();

  _$SituationEvidence _build() {
    _$SituationEvidence _$result;
    try {
      _$result =
          _$v ??
          _$SituationEvidence._(
            memberCounts: memberCounts.build(),
            families: families.build(),
            corroboration: corroboration.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memberCounts';
        memberCounts.build();
        _$failedField = 'families';
        families.build();
        _$failedField = 'corroboration';
        corroboration.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationEvidence',
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
