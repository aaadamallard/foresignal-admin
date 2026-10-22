// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_lead_times.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialLeadTimes extends SocialLeadTimes {
  @override
  final DateTime socialFirst;
  @override
  final DateTime? physicalFirst;
  @override
  final DateTime? newsFirst;
  @override
  final DateTime? officialFirst;
  @override
  final num? leadOverPhysicalSeconds;
  @override
  final num? leadOverNewsSeconds;
  @override
  final num? leadOverOfficialSeconds;

  factory _$SocialLeadTimes([void Function(SocialLeadTimesBuilder)? updates]) =>
      (SocialLeadTimesBuilder()..update(updates))._build();

  _$SocialLeadTimes._(
      {required this.socialFirst,
      this.physicalFirst,
      this.newsFirst,
      this.officialFirst,
      this.leadOverPhysicalSeconds,
      this.leadOverNewsSeconds,
      this.leadOverOfficialSeconds})
      : super._();
  @override
  SocialLeadTimes rebuild(void Function(SocialLeadTimesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialLeadTimesBuilder toBuilder() => SocialLeadTimesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialLeadTimes &&
        socialFirst == other.socialFirst &&
        physicalFirst == other.physicalFirst &&
        newsFirst == other.newsFirst &&
        officialFirst == other.officialFirst &&
        leadOverPhysicalSeconds == other.leadOverPhysicalSeconds &&
        leadOverNewsSeconds == other.leadOverNewsSeconds &&
        leadOverOfficialSeconds == other.leadOverOfficialSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, socialFirst.hashCode);
    _$hash = $jc(_$hash, physicalFirst.hashCode);
    _$hash = $jc(_$hash, newsFirst.hashCode);
    _$hash = $jc(_$hash, officialFirst.hashCode);
    _$hash = $jc(_$hash, leadOverPhysicalSeconds.hashCode);
    _$hash = $jc(_$hash, leadOverNewsSeconds.hashCode);
    _$hash = $jc(_$hash, leadOverOfficialSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialLeadTimes')
          ..add('socialFirst', socialFirst)
          ..add('physicalFirst', physicalFirst)
          ..add('newsFirst', newsFirst)
          ..add('officialFirst', officialFirst)
          ..add('leadOverPhysicalSeconds', leadOverPhysicalSeconds)
          ..add('leadOverNewsSeconds', leadOverNewsSeconds)
          ..add('leadOverOfficialSeconds', leadOverOfficialSeconds))
        .toString();
  }
}

class SocialLeadTimesBuilder
    implements Builder<SocialLeadTimes, SocialLeadTimesBuilder> {
  _$SocialLeadTimes? _$v;

  DateTime? _socialFirst;
  DateTime? get socialFirst => _$this._socialFirst;
  set socialFirst(DateTime? socialFirst) => _$this._socialFirst = socialFirst;

  DateTime? _physicalFirst;
  DateTime? get physicalFirst => _$this._physicalFirst;
  set physicalFirst(DateTime? physicalFirst) =>
      _$this._physicalFirst = physicalFirst;

  DateTime? _newsFirst;
  DateTime? get newsFirst => _$this._newsFirst;
  set newsFirst(DateTime? newsFirst) => _$this._newsFirst = newsFirst;

  DateTime? _officialFirst;
  DateTime? get officialFirst => _$this._officialFirst;
  set officialFirst(DateTime? officialFirst) =>
      _$this._officialFirst = officialFirst;

  num? _leadOverPhysicalSeconds;
  num? get leadOverPhysicalSeconds => _$this._leadOverPhysicalSeconds;
  set leadOverPhysicalSeconds(num? leadOverPhysicalSeconds) =>
      _$this._leadOverPhysicalSeconds = leadOverPhysicalSeconds;

  num? _leadOverNewsSeconds;
  num? get leadOverNewsSeconds => _$this._leadOverNewsSeconds;
  set leadOverNewsSeconds(num? leadOverNewsSeconds) =>
      _$this._leadOverNewsSeconds = leadOverNewsSeconds;

  num? _leadOverOfficialSeconds;
  num? get leadOverOfficialSeconds => _$this._leadOverOfficialSeconds;
  set leadOverOfficialSeconds(num? leadOverOfficialSeconds) =>
      _$this._leadOverOfficialSeconds = leadOverOfficialSeconds;

  SocialLeadTimesBuilder() {
    SocialLeadTimes._defaults(this);
  }

  SocialLeadTimesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _socialFirst = $v.socialFirst;
      _physicalFirst = $v.physicalFirst;
      _newsFirst = $v.newsFirst;
      _officialFirst = $v.officialFirst;
      _leadOverPhysicalSeconds = $v.leadOverPhysicalSeconds;
      _leadOverNewsSeconds = $v.leadOverNewsSeconds;
      _leadOverOfficialSeconds = $v.leadOverOfficialSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialLeadTimes other) {
    _$v = other as _$SocialLeadTimes;
  }

  @override
  void update(void Function(SocialLeadTimesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialLeadTimes build() => _build();

  _$SocialLeadTimes _build() {
    final _$result = _$v ??
        _$SocialLeadTimes._(
          socialFirst: BuiltValueNullFieldError.checkNotNull(
              socialFirst, r'SocialLeadTimes', 'socialFirst'),
          physicalFirst: physicalFirst,
          newsFirst: newsFirst,
          officialFirst: officialFirst,
          leadOverPhysicalSeconds: leadOverPhysicalSeconds,
          leadOverNewsSeconds: leadOverNewsSeconds,
          leadOverOfficialSeconds: leadOverOfficialSeconds,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
