// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_track_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettingsTrackRecord extends SocialSettingsTrackRecord {
  @override
  final int? minAssessed;
  @override
  final num? gradeEShare;
  @override
  final num? gradeDShare;
  @override
  final BuiltList<SocialSettingsTrackRecordOverridesInner>? overrides;

  factory _$SocialSettingsTrackRecord(
          [void Function(SocialSettingsTrackRecordBuilder)? updates]) =>
      (SocialSettingsTrackRecordBuilder()..update(updates))._build();

  _$SocialSettingsTrackRecord._(
      {this.minAssessed, this.gradeEShare, this.gradeDShare, this.overrides})
      : super._();
  @override
  SocialSettingsTrackRecord rebuild(
          void Function(SocialSettingsTrackRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialSettingsTrackRecordBuilder toBuilder() =>
      SocialSettingsTrackRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsTrackRecord &&
        minAssessed == other.minAssessed &&
        gradeEShare == other.gradeEShare &&
        gradeDShare == other.gradeDShare &&
        overrides == other.overrides;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minAssessed.hashCode);
    _$hash = $jc(_$hash, gradeEShare.hashCode);
    _$hash = $jc(_$hash, gradeDShare.hashCode);
    _$hash = $jc(_$hash, overrides.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettingsTrackRecord')
          ..add('minAssessed', minAssessed)
          ..add('gradeEShare', gradeEShare)
          ..add('gradeDShare', gradeDShare)
          ..add('overrides', overrides))
        .toString();
  }
}

class SocialSettingsTrackRecordBuilder
    implements
        Builder<SocialSettingsTrackRecord, SocialSettingsTrackRecordBuilder> {
  _$SocialSettingsTrackRecord? _$v;

  int? _minAssessed;
  int? get minAssessed => _$this._minAssessed;
  set minAssessed(int? minAssessed) => _$this._minAssessed = minAssessed;

  num? _gradeEShare;
  num? get gradeEShare => _$this._gradeEShare;
  set gradeEShare(num? gradeEShare) => _$this._gradeEShare = gradeEShare;

  num? _gradeDShare;
  num? get gradeDShare => _$this._gradeDShare;
  set gradeDShare(num? gradeDShare) => _$this._gradeDShare = gradeDShare;

  ListBuilder<SocialSettingsTrackRecordOverridesInner>? _overrides;
  ListBuilder<SocialSettingsTrackRecordOverridesInner> get overrides =>
      _$this._overrides ??=
          ListBuilder<SocialSettingsTrackRecordOverridesInner>();
  set overrides(
          ListBuilder<SocialSettingsTrackRecordOverridesInner>? overrides) =>
      _$this._overrides = overrides;

  SocialSettingsTrackRecordBuilder() {
    SocialSettingsTrackRecord._defaults(this);
  }

  SocialSettingsTrackRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minAssessed = $v.minAssessed;
      _gradeEShare = $v.gradeEShare;
      _gradeDShare = $v.gradeDShare;
      _overrides = $v.overrides?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsTrackRecord other) {
    _$v = other as _$SocialSettingsTrackRecord;
  }

  @override
  void update(void Function(SocialSettingsTrackRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsTrackRecord build() => _build();

  _$SocialSettingsTrackRecord _build() {
    _$SocialSettingsTrackRecord _$result;
    try {
      _$result = _$v ??
          _$SocialSettingsTrackRecord._(
            minAssessed: minAssessed,
            gradeEShare: gradeEShare,
            gradeDShare: gradeDShare,
            overrides: _overrides?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'overrides';
        _overrides?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialSettingsTrackRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
