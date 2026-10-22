// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettings extends SocialSettings {
  @override
  final BuiltList<String>? languages;
  @override
  final num? minRegionBaseline;
  @override
  final SocialSettingsVelocity? velocity;
  @override
  final int? llmClaimMinPosts;
  @override
  final int? llmClaimMinEvidenceGroups;
  @override
  final bool? keepMedia;
  @override
  final SocialSettingsTrackRecord? trackRecord;
  @override
  final SocialSettingsCompare? compare;
  @override
  final SocialSettingsAttentionGap? attentionGap;
  @override
  final SocialSettingsCues? cues;

  factory _$SocialSettings([void Function(SocialSettingsBuilder)? updates]) =>
      (SocialSettingsBuilder()..update(updates))._build();

  _$SocialSettings._(
      {this.languages,
      this.minRegionBaseline,
      this.velocity,
      this.llmClaimMinPosts,
      this.llmClaimMinEvidenceGroups,
      this.keepMedia,
      this.trackRecord,
      this.compare,
      this.attentionGap,
      this.cues})
      : super._();
  @override
  SocialSettings rebuild(void Function(SocialSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialSettingsBuilder toBuilder() => SocialSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettings &&
        languages == other.languages &&
        minRegionBaseline == other.minRegionBaseline &&
        velocity == other.velocity &&
        llmClaimMinPosts == other.llmClaimMinPosts &&
        llmClaimMinEvidenceGroups == other.llmClaimMinEvidenceGroups &&
        keepMedia == other.keepMedia &&
        trackRecord == other.trackRecord &&
        compare == other.compare &&
        attentionGap == other.attentionGap &&
        cues == other.cues;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, minRegionBaseline.hashCode);
    _$hash = $jc(_$hash, velocity.hashCode);
    _$hash = $jc(_$hash, llmClaimMinPosts.hashCode);
    _$hash = $jc(_$hash, llmClaimMinEvidenceGroups.hashCode);
    _$hash = $jc(_$hash, keepMedia.hashCode);
    _$hash = $jc(_$hash, trackRecord.hashCode);
    _$hash = $jc(_$hash, compare.hashCode);
    _$hash = $jc(_$hash, attentionGap.hashCode);
    _$hash = $jc(_$hash, cues.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettings')
          ..add('languages', languages)
          ..add('minRegionBaseline', minRegionBaseline)
          ..add('velocity', velocity)
          ..add('llmClaimMinPosts', llmClaimMinPosts)
          ..add('llmClaimMinEvidenceGroups', llmClaimMinEvidenceGroups)
          ..add('keepMedia', keepMedia)
          ..add('trackRecord', trackRecord)
          ..add('compare', compare)
          ..add('attentionGap', attentionGap)
          ..add('cues', cues))
        .toString();
  }
}

class SocialSettingsBuilder
    implements Builder<SocialSettings, SocialSettingsBuilder> {
  _$SocialSettings? _$v;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  num? _minRegionBaseline;
  num? get minRegionBaseline => _$this._minRegionBaseline;
  set minRegionBaseline(num? minRegionBaseline) =>
      _$this._minRegionBaseline = minRegionBaseline;

  SocialSettingsVelocityBuilder? _velocity;
  SocialSettingsVelocityBuilder get velocity =>
      _$this._velocity ??= SocialSettingsVelocityBuilder();
  set velocity(SocialSettingsVelocityBuilder? velocity) =>
      _$this._velocity = velocity;

  int? _llmClaimMinPosts;
  int? get llmClaimMinPosts => _$this._llmClaimMinPosts;
  set llmClaimMinPosts(int? llmClaimMinPosts) =>
      _$this._llmClaimMinPosts = llmClaimMinPosts;

  int? _llmClaimMinEvidenceGroups;
  int? get llmClaimMinEvidenceGroups => _$this._llmClaimMinEvidenceGroups;
  set llmClaimMinEvidenceGroups(int? llmClaimMinEvidenceGroups) =>
      _$this._llmClaimMinEvidenceGroups = llmClaimMinEvidenceGroups;

  bool? _keepMedia;
  bool? get keepMedia => _$this._keepMedia;
  set keepMedia(bool? keepMedia) => _$this._keepMedia = keepMedia;

  SocialSettingsTrackRecordBuilder? _trackRecord;
  SocialSettingsTrackRecordBuilder get trackRecord =>
      _$this._trackRecord ??= SocialSettingsTrackRecordBuilder();
  set trackRecord(SocialSettingsTrackRecordBuilder? trackRecord) =>
      _$this._trackRecord = trackRecord;

  SocialSettingsCompareBuilder? _compare;
  SocialSettingsCompareBuilder get compare =>
      _$this._compare ??= SocialSettingsCompareBuilder();
  set compare(SocialSettingsCompareBuilder? compare) =>
      _$this._compare = compare;

  SocialSettingsAttentionGapBuilder? _attentionGap;
  SocialSettingsAttentionGapBuilder get attentionGap =>
      _$this._attentionGap ??= SocialSettingsAttentionGapBuilder();
  set attentionGap(SocialSettingsAttentionGapBuilder? attentionGap) =>
      _$this._attentionGap = attentionGap;

  SocialSettingsCuesBuilder? _cues;
  SocialSettingsCuesBuilder get cues =>
      _$this._cues ??= SocialSettingsCuesBuilder();
  set cues(SocialSettingsCuesBuilder? cues) => _$this._cues = cues;

  SocialSettingsBuilder() {
    SocialSettings._defaults(this);
  }

  SocialSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _languages = $v.languages?.toBuilder();
      _minRegionBaseline = $v.minRegionBaseline;
      _velocity = $v.velocity?.toBuilder();
      _llmClaimMinPosts = $v.llmClaimMinPosts;
      _llmClaimMinEvidenceGroups = $v.llmClaimMinEvidenceGroups;
      _keepMedia = $v.keepMedia;
      _trackRecord = $v.trackRecord?.toBuilder();
      _compare = $v.compare?.toBuilder();
      _attentionGap = $v.attentionGap?.toBuilder();
      _cues = $v.cues?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettings other) {
    _$v = other as _$SocialSettings;
  }

  @override
  void update(void Function(SocialSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettings build() => _build();

  _$SocialSettings _build() {
    _$SocialSettings _$result;
    try {
      _$result = _$v ??
          _$SocialSettings._(
            languages: _languages?.build(),
            minRegionBaseline: minRegionBaseline,
            velocity: _velocity?.build(),
            llmClaimMinPosts: llmClaimMinPosts,
            llmClaimMinEvidenceGroups: llmClaimMinEvidenceGroups,
            keepMedia: keepMedia,
            trackRecord: _trackRecord?.build(),
            compare: _compare?.build(),
            attentionGap: _attentionGap?.build(),
            cues: _cues?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'velocity';
        _velocity?.build();

        _$failedField = 'trackRecord';
        _trackRecord?.build();
        _$failedField = 'compare';
        _compare?.build();
        _$failedField = 'attentionGap';
        _attentionGap?.build();
        _$failedField = 'cues';
        _cues?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
