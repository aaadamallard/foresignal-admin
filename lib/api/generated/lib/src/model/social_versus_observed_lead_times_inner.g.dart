// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_versus_observed_lead_times_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialVersusObservedLeadTimesInner
    extends SocialVersusObservedLeadTimesInner {
  @override
  final String claimType;
  @override
  final String platform;
  @override
  final String? regionCode;
  @override
  final LeadTimeSummary overPhysical;

  factory _$SocialVersusObservedLeadTimesInner(
          [void Function(SocialVersusObservedLeadTimesInnerBuilder)?
              updates]) =>
      (SocialVersusObservedLeadTimesInnerBuilder()..update(updates))._build();

  _$SocialVersusObservedLeadTimesInner._(
      {required this.claimType,
      required this.platform,
      this.regionCode,
      required this.overPhysical})
      : super._();
  @override
  SocialVersusObservedLeadTimesInner rebuild(
          void Function(SocialVersusObservedLeadTimesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialVersusObservedLeadTimesInnerBuilder toBuilder() =>
      SocialVersusObservedLeadTimesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVersusObservedLeadTimesInner &&
        claimType == other.claimType &&
        platform == other.platform &&
        regionCode == other.regionCode &&
        overPhysical == other.overPhysical;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, claimType.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, overPhysical.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialVersusObservedLeadTimesInner')
          ..add('claimType', claimType)
          ..add('platform', platform)
          ..add('regionCode', regionCode)
          ..add('overPhysical', overPhysical))
        .toString();
  }
}

class SocialVersusObservedLeadTimesInnerBuilder
    implements
        Builder<SocialVersusObservedLeadTimesInner,
            SocialVersusObservedLeadTimesInnerBuilder> {
  _$SocialVersusObservedLeadTimesInner? _$v;

  String? _claimType;
  String? get claimType => _$this._claimType;
  set claimType(String? claimType) => _$this._claimType = claimType;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  LeadTimeSummaryBuilder? _overPhysical;
  LeadTimeSummaryBuilder get overPhysical =>
      _$this._overPhysical ??= LeadTimeSummaryBuilder();
  set overPhysical(LeadTimeSummaryBuilder? overPhysical) =>
      _$this._overPhysical = overPhysical;

  SocialVersusObservedLeadTimesInnerBuilder() {
    SocialVersusObservedLeadTimesInner._defaults(this);
  }

  SocialVersusObservedLeadTimesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claimType = $v.claimType;
      _platform = $v.platform;
      _regionCode = $v.regionCode;
      _overPhysical = $v.overPhysical.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVersusObservedLeadTimesInner other) {
    _$v = other as _$SocialVersusObservedLeadTimesInner;
  }

  @override
  void update(
      void Function(SocialVersusObservedLeadTimesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialVersusObservedLeadTimesInner build() => _build();

  _$SocialVersusObservedLeadTimesInner _build() {
    _$SocialVersusObservedLeadTimesInner _$result;
    try {
      _$result = _$v ??
          _$SocialVersusObservedLeadTimesInner._(
            claimType: BuiltValueNullFieldError.checkNotNull(
                claimType, r'SocialVersusObservedLeadTimesInner', 'claimType'),
            platform: BuiltValueNullFieldError.checkNotNull(
                platform, r'SocialVersusObservedLeadTimesInner', 'platform'),
            regionCode: regionCode,
            overPhysical: overPhysical.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'overPhysical';
        overPhysical.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialVersusObservedLeadTimesInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
