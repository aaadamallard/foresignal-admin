// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_social_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationSocialSection extends SituationSocialSection {
  @override
  final BuiltList<SituationSocialSectionNarrativesInner> narratives;
  @override
  final int socialEvidenceGroups;
  @override
  final SituationSocialSectionAttentionGap? attentionGap;
  @override
  final bool socialCoverageOk;
  @override
  final DateTime? updatedAt;

  factory _$SituationSocialSection(
          [void Function(SituationSocialSectionBuilder)? updates]) =>
      (SituationSocialSectionBuilder()..update(updates))._build();

  _$SituationSocialSection._(
      {required this.narratives,
      required this.socialEvidenceGroups,
      this.attentionGap,
      required this.socialCoverageOk,
      this.updatedAt})
      : super._();
  @override
  SituationSocialSection rebuild(
          void Function(SituationSocialSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationSocialSectionBuilder toBuilder() =>
      SituationSocialSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationSocialSection &&
        narratives == other.narratives &&
        socialEvidenceGroups == other.socialEvidenceGroups &&
        attentionGap == other.attentionGap &&
        socialCoverageOk == other.socialCoverageOk &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narratives.hashCode);
    _$hash = $jc(_$hash, socialEvidenceGroups.hashCode);
    _$hash = $jc(_$hash, attentionGap.hashCode);
    _$hash = $jc(_$hash, socialCoverageOk.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationSocialSection')
          ..add('narratives', narratives)
          ..add('socialEvidenceGroups', socialEvidenceGroups)
          ..add('attentionGap', attentionGap)
          ..add('socialCoverageOk', socialCoverageOk)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SituationSocialSectionBuilder
    implements Builder<SituationSocialSection, SituationSocialSectionBuilder> {
  _$SituationSocialSection? _$v;

  ListBuilder<SituationSocialSectionNarrativesInner>? _narratives;
  ListBuilder<SituationSocialSectionNarrativesInner> get narratives =>
      _$this._narratives ??=
          ListBuilder<SituationSocialSectionNarrativesInner>();
  set narratives(
          ListBuilder<SituationSocialSectionNarrativesInner>? narratives) =>
      _$this._narratives = narratives;

  int? _socialEvidenceGroups;
  int? get socialEvidenceGroups => _$this._socialEvidenceGroups;
  set socialEvidenceGroups(int? socialEvidenceGroups) =>
      _$this._socialEvidenceGroups = socialEvidenceGroups;

  SituationSocialSectionAttentionGapBuilder? _attentionGap;
  SituationSocialSectionAttentionGapBuilder get attentionGap =>
      _$this._attentionGap ??= SituationSocialSectionAttentionGapBuilder();
  set attentionGap(SituationSocialSectionAttentionGapBuilder? attentionGap) =>
      _$this._attentionGap = attentionGap;

  bool? _socialCoverageOk;
  bool? get socialCoverageOk => _$this._socialCoverageOk;
  set socialCoverageOk(bool? socialCoverageOk) =>
      _$this._socialCoverageOk = socialCoverageOk;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SituationSocialSectionBuilder() {
    SituationSocialSection._defaults(this);
  }

  SituationSocialSectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narratives = $v.narratives.toBuilder();
      _socialEvidenceGroups = $v.socialEvidenceGroups;
      _attentionGap = $v.attentionGap?.toBuilder();
      _socialCoverageOk = $v.socialCoverageOk;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationSocialSection other) {
    _$v = other as _$SituationSocialSection;
  }

  @override
  void update(void Function(SituationSocialSectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationSocialSection build() => _build();

  _$SituationSocialSection _build() {
    _$SituationSocialSection _$result;
    try {
      _$result = _$v ??
          _$SituationSocialSection._(
            narratives: narratives.build(),
            socialEvidenceGroups: BuiltValueNullFieldError.checkNotNull(
                socialEvidenceGroups,
                r'SituationSocialSection',
                'socialEvidenceGroups'),
            attentionGap: _attentionGap?.build(),
            socialCoverageOk: BuiltValueNullFieldError.checkNotNull(
                socialCoverageOk,
                r'SituationSocialSection',
                'socialCoverageOk'),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'narratives';
        narratives.build();

        _$failedField = 'attentionGap';
        _attentionGap?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationSocialSection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
