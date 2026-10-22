// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_time_stats_groups_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LeadTimeStatsGroupsInnerFoundByEnum
_$leadTimeStatsGroupsInnerFoundByEnum_organic =
    const LeadTimeStatsGroupsInnerFoundByEnum._('organic');
const LeadTimeStatsGroupsInnerFoundByEnum
_$leadTimeStatsGroupsInnerFoundByEnum_cue =
    const LeadTimeStatsGroupsInnerFoundByEnum._('cue');

LeadTimeStatsGroupsInnerFoundByEnum
_$leadTimeStatsGroupsInnerFoundByEnumValueOf(String name) {
  switch (name) {
    case 'organic':
      return _$leadTimeStatsGroupsInnerFoundByEnum_organic;
    case 'cue':
      return _$leadTimeStatsGroupsInnerFoundByEnum_cue;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LeadTimeStatsGroupsInnerFoundByEnum>
_$leadTimeStatsGroupsInnerFoundByEnumValues =
    BuiltSet<LeadTimeStatsGroupsInnerFoundByEnum>(
      const <LeadTimeStatsGroupsInnerFoundByEnum>[
        _$leadTimeStatsGroupsInnerFoundByEnum_organic,
        _$leadTimeStatsGroupsInnerFoundByEnum_cue,
      ],
    );

Serializer<LeadTimeStatsGroupsInnerFoundByEnum>
_$leadTimeStatsGroupsInnerFoundByEnumSerializer =
    _$LeadTimeStatsGroupsInnerFoundByEnumSerializer();

class _$LeadTimeStatsGroupsInnerFoundByEnumSerializer
    implements PrimitiveSerializer<LeadTimeStatsGroupsInnerFoundByEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'organic': 'organic',
    'cue': 'cue',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'organic': 'organic',
    'cue': 'cue',
  };

  @override
  final Iterable<Type> types = const <Type>[
    LeadTimeStatsGroupsInnerFoundByEnum,
  ];
  @override
  final String wireName = 'LeadTimeStatsGroupsInnerFoundByEnum';

  @override
  Object serialize(
    Serializers serializers,
    LeadTimeStatsGroupsInnerFoundByEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LeadTimeStatsGroupsInnerFoundByEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LeadTimeStatsGroupsInnerFoundByEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LeadTimeStatsGroupsInner extends LeadTimeStatsGroupsInner {
  @override
  final String claimType;
  @override
  final String platform;
  @override
  final String? regionCode;
  @override
  final LeadTimeStatsGroupsInnerFoundByEnum foundBy;
  @override
  final int comparisons;
  @override
  final int outOfSample;
  @override
  final LeadTimeSummary overPhysical;
  @override
  final LeadTimeSummary overNews;
  @override
  final LeadTimeSummary overOfficial;
  @override
  final LeadTimeSummary? outOfSampleOverPhysical;

  factory _$LeadTimeStatsGroupsInner([
    void Function(LeadTimeStatsGroupsInnerBuilder)? updates,
  ]) => (LeadTimeStatsGroupsInnerBuilder()..update(updates))._build();

  _$LeadTimeStatsGroupsInner._({
    required this.claimType,
    required this.platform,
    this.regionCode,
    required this.foundBy,
    required this.comparisons,
    required this.outOfSample,
    required this.overPhysical,
    required this.overNews,
    required this.overOfficial,
    this.outOfSampleOverPhysical,
  }) : super._();
  @override
  LeadTimeStatsGroupsInner rebuild(
    void Function(LeadTimeStatsGroupsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LeadTimeStatsGroupsInnerBuilder toBuilder() =>
      LeadTimeStatsGroupsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeadTimeStatsGroupsInner &&
        claimType == other.claimType &&
        platform == other.platform &&
        regionCode == other.regionCode &&
        foundBy == other.foundBy &&
        comparisons == other.comparisons &&
        outOfSample == other.outOfSample &&
        overPhysical == other.overPhysical &&
        overNews == other.overNews &&
        overOfficial == other.overOfficial &&
        outOfSampleOverPhysical == other.outOfSampleOverPhysical;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, claimType.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, foundBy.hashCode);
    _$hash = $jc(_$hash, comparisons.hashCode);
    _$hash = $jc(_$hash, outOfSample.hashCode);
    _$hash = $jc(_$hash, overPhysical.hashCode);
    _$hash = $jc(_$hash, overNews.hashCode);
    _$hash = $jc(_$hash, overOfficial.hashCode);
    _$hash = $jc(_$hash, outOfSampleOverPhysical.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeadTimeStatsGroupsInner')
          ..add('claimType', claimType)
          ..add('platform', platform)
          ..add('regionCode', regionCode)
          ..add('foundBy', foundBy)
          ..add('comparisons', comparisons)
          ..add('outOfSample', outOfSample)
          ..add('overPhysical', overPhysical)
          ..add('overNews', overNews)
          ..add('overOfficial', overOfficial)
          ..add('outOfSampleOverPhysical', outOfSampleOverPhysical))
        .toString();
  }
}

class LeadTimeStatsGroupsInnerBuilder
    implements
        Builder<LeadTimeStatsGroupsInner, LeadTimeStatsGroupsInnerBuilder> {
  _$LeadTimeStatsGroupsInner? _$v;

  String? _claimType;
  String? get claimType => _$this._claimType;
  set claimType(String? claimType) => _$this._claimType = claimType;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  LeadTimeStatsGroupsInnerFoundByEnum? _foundBy;
  LeadTimeStatsGroupsInnerFoundByEnum? get foundBy => _$this._foundBy;
  set foundBy(LeadTimeStatsGroupsInnerFoundByEnum? foundBy) =>
      _$this._foundBy = foundBy;

  int? _comparisons;
  int? get comparisons => _$this._comparisons;
  set comparisons(int? comparisons) => _$this._comparisons = comparisons;

  int? _outOfSample;
  int? get outOfSample => _$this._outOfSample;
  set outOfSample(int? outOfSample) => _$this._outOfSample = outOfSample;

  LeadTimeSummaryBuilder? _overPhysical;
  LeadTimeSummaryBuilder get overPhysical =>
      _$this._overPhysical ??= LeadTimeSummaryBuilder();
  set overPhysical(LeadTimeSummaryBuilder? overPhysical) =>
      _$this._overPhysical = overPhysical;

  LeadTimeSummaryBuilder? _overNews;
  LeadTimeSummaryBuilder get overNews =>
      _$this._overNews ??= LeadTimeSummaryBuilder();
  set overNews(LeadTimeSummaryBuilder? overNews) => _$this._overNews = overNews;

  LeadTimeSummaryBuilder? _overOfficial;
  LeadTimeSummaryBuilder get overOfficial =>
      _$this._overOfficial ??= LeadTimeSummaryBuilder();
  set overOfficial(LeadTimeSummaryBuilder? overOfficial) =>
      _$this._overOfficial = overOfficial;

  LeadTimeSummaryBuilder? _outOfSampleOverPhysical;
  LeadTimeSummaryBuilder get outOfSampleOverPhysical =>
      _$this._outOfSampleOverPhysical ??= LeadTimeSummaryBuilder();
  set outOfSampleOverPhysical(
    LeadTimeSummaryBuilder? outOfSampleOverPhysical,
  ) => _$this._outOfSampleOverPhysical = outOfSampleOverPhysical;

  LeadTimeStatsGroupsInnerBuilder() {
    LeadTimeStatsGroupsInner._defaults(this);
  }

  LeadTimeStatsGroupsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claimType = $v.claimType;
      _platform = $v.platform;
      _regionCode = $v.regionCode;
      _foundBy = $v.foundBy;
      _comparisons = $v.comparisons;
      _outOfSample = $v.outOfSample;
      _overPhysical = $v.overPhysical.toBuilder();
      _overNews = $v.overNews.toBuilder();
      _overOfficial = $v.overOfficial.toBuilder();
      _outOfSampleOverPhysical = $v.outOfSampleOverPhysical?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeadTimeStatsGroupsInner other) {
    _$v = other as _$LeadTimeStatsGroupsInner;
  }

  @override
  void update(void Function(LeadTimeStatsGroupsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeadTimeStatsGroupsInner build() => _build();

  _$LeadTimeStatsGroupsInner _build() {
    _$LeadTimeStatsGroupsInner _$result;
    try {
      _$result =
          _$v ??
          _$LeadTimeStatsGroupsInner._(
            claimType: BuiltValueNullFieldError.checkNotNull(
              claimType,
              r'LeadTimeStatsGroupsInner',
              'claimType',
            ),
            platform: BuiltValueNullFieldError.checkNotNull(
              platform,
              r'LeadTimeStatsGroupsInner',
              'platform',
            ),
            regionCode: regionCode,
            foundBy: BuiltValueNullFieldError.checkNotNull(
              foundBy,
              r'LeadTimeStatsGroupsInner',
              'foundBy',
            ),
            comparisons: BuiltValueNullFieldError.checkNotNull(
              comparisons,
              r'LeadTimeStatsGroupsInner',
              'comparisons',
            ),
            outOfSample: BuiltValueNullFieldError.checkNotNull(
              outOfSample,
              r'LeadTimeStatsGroupsInner',
              'outOfSample',
            ),
            overPhysical: overPhysical.build(),
            overNews: overNews.build(),
            overOfficial: overOfficial.build(),
            outOfSampleOverPhysical: _outOfSampleOverPhysical?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'overPhysical';
        overPhysical.build();
        _$failedField = 'overNews';
        overNews.build();
        _$failedField = 'overOfficial';
        overOfficial.build();
        _$failedField = 'outOfSampleOverPhysical';
        _outOfSampleOverPhysical?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LeadTimeStatsGroupsInner',
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
