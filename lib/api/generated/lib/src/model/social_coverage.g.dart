// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_coverage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialCoverage extends SocialCoverage {
  @override
  final String platform;
  @override
  final String? regionCode;
  @override
  final DateTime since;
  @override
  final DateTime until;
  @override
  final BuiltList<SocialCoverageBucket> buckets;
  @override
  final num completeShare;
  @override
  final num? baselinePostsPerHour;
  @override
  final bool absenceOk;
  @override
  final String? reason;

  factory _$SocialCoverage([void Function(SocialCoverageBuilder)? updates]) =>
      (SocialCoverageBuilder()..update(updates))._build();

  _$SocialCoverage._({
    required this.platform,
    this.regionCode,
    required this.since,
    required this.until,
    required this.buckets,
    required this.completeShare,
    this.baselinePostsPerHour,
    required this.absenceOk,
    this.reason,
  }) : super._();
  @override
  SocialCoverage rebuild(void Function(SocialCoverageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCoverageBuilder toBuilder() => SocialCoverageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCoverage &&
        platform == other.platform &&
        regionCode == other.regionCode &&
        since == other.since &&
        until == other.until &&
        buckets == other.buckets &&
        completeShare == other.completeShare &&
        baselinePostsPerHour == other.baselinePostsPerHour &&
        absenceOk == other.absenceOk &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, until.hashCode);
    _$hash = $jc(_$hash, buckets.hashCode);
    _$hash = $jc(_$hash, completeShare.hashCode);
    _$hash = $jc(_$hash, baselinePostsPerHour.hashCode);
    _$hash = $jc(_$hash, absenceOk.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCoverage')
          ..add('platform', platform)
          ..add('regionCode', regionCode)
          ..add('since', since)
          ..add('until', until)
          ..add('buckets', buckets)
          ..add('completeShare', completeShare)
          ..add('baselinePostsPerHour', baselinePostsPerHour)
          ..add('absenceOk', absenceOk)
          ..add('reason', reason))
        .toString();
  }
}

class SocialCoverageBuilder
    implements Builder<SocialCoverage, SocialCoverageBuilder> {
  _$SocialCoverage? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  DateTime? _until;
  DateTime? get until => _$this._until;
  set until(DateTime? until) => _$this._until = until;

  ListBuilder<SocialCoverageBucket>? _buckets;
  ListBuilder<SocialCoverageBucket> get buckets =>
      _$this._buckets ??= ListBuilder<SocialCoverageBucket>();
  set buckets(ListBuilder<SocialCoverageBucket>? buckets) =>
      _$this._buckets = buckets;

  num? _completeShare;
  num? get completeShare => _$this._completeShare;
  set completeShare(num? completeShare) =>
      _$this._completeShare = completeShare;

  num? _baselinePostsPerHour;
  num? get baselinePostsPerHour => _$this._baselinePostsPerHour;
  set baselinePostsPerHour(num? baselinePostsPerHour) =>
      _$this._baselinePostsPerHour = baselinePostsPerHour;

  bool? _absenceOk;
  bool? get absenceOk => _$this._absenceOk;
  set absenceOk(bool? absenceOk) => _$this._absenceOk = absenceOk;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SocialCoverageBuilder() {
    SocialCoverage._defaults(this);
  }

  SocialCoverageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _regionCode = $v.regionCode;
      _since = $v.since;
      _until = $v.until;
      _buckets = $v.buckets.toBuilder();
      _completeShare = $v.completeShare;
      _baselinePostsPerHour = $v.baselinePostsPerHour;
      _absenceOk = $v.absenceOk;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCoverage other) {
    _$v = other as _$SocialCoverage;
  }

  @override
  void update(void Function(SocialCoverageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCoverage build() => _build();

  _$SocialCoverage _build() {
    _$SocialCoverage _$result;
    try {
      _$result =
          _$v ??
          _$SocialCoverage._(
            platform: BuiltValueNullFieldError.checkNotNull(
              platform,
              r'SocialCoverage',
              'platform',
            ),
            regionCode: regionCode,
            since: BuiltValueNullFieldError.checkNotNull(
              since,
              r'SocialCoverage',
              'since',
            ),
            until: BuiltValueNullFieldError.checkNotNull(
              until,
              r'SocialCoverage',
              'until',
            ),
            buckets: buckets.build(),
            completeShare: BuiltValueNullFieldError.checkNotNull(
              completeShare,
              r'SocialCoverage',
              'completeShare',
            ),
            baselinePostsPerHour: baselinePostsPerHour,
            absenceOk: BuiltValueNullFieldError.checkNotNull(
              absenceOk,
              r'SocialCoverage',
              'absenceOk',
            ),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buckets';
        buckets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialCoverage',
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
