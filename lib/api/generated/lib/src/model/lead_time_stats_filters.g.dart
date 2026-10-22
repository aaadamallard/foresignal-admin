// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_time_stats_filters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LeadTimeStatsFiltersFoundByEnum
_$leadTimeStatsFiltersFoundByEnum_organic =
    const LeadTimeStatsFiltersFoundByEnum._('organic');
const LeadTimeStatsFiltersFoundByEnum _$leadTimeStatsFiltersFoundByEnum_cue =
    const LeadTimeStatsFiltersFoundByEnum._('cue');

LeadTimeStatsFiltersFoundByEnum _$leadTimeStatsFiltersFoundByEnumValueOf(
  String name,
) {
  switch (name) {
    case 'organic':
      return _$leadTimeStatsFiltersFoundByEnum_organic;
    case 'cue':
      return _$leadTimeStatsFiltersFoundByEnum_cue;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LeadTimeStatsFiltersFoundByEnum>
_$leadTimeStatsFiltersFoundByEnumValues =
    BuiltSet<LeadTimeStatsFiltersFoundByEnum>(
      const <LeadTimeStatsFiltersFoundByEnum>[
        _$leadTimeStatsFiltersFoundByEnum_organic,
        _$leadTimeStatsFiltersFoundByEnum_cue,
      ],
    );

Serializer<LeadTimeStatsFiltersFoundByEnum>
_$leadTimeStatsFiltersFoundByEnumSerializer =
    _$LeadTimeStatsFiltersFoundByEnumSerializer();

class _$LeadTimeStatsFiltersFoundByEnumSerializer
    implements PrimitiveSerializer<LeadTimeStatsFiltersFoundByEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'organic': 'organic',
    'cue': 'cue',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'organic': 'organic',
    'cue': 'cue',
  };

  @override
  final Iterable<Type> types = const <Type>[LeadTimeStatsFiltersFoundByEnum];
  @override
  final String wireName = 'LeadTimeStatsFiltersFoundByEnum';

  @override
  Object serialize(
    Serializers serializers,
    LeadTimeStatsFiltersFoundByEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LeadTimeStatsFiltersFoundByEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LeadTimeStatsFiltersFoundByEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LeadTimeStatsFilters extends LeadTimeStatsFilters {
  @override
  final String? claimType;
  @override
  final String? platform;
  @override
  final String? region;
  @override
  final LeadTimeStatsFiltersFoundByEnum? foundBy;
  @override
  final DateTime? since;

  factory _$LeadTimeStatsFilters([
    void Function(LeadTimeStatsFiltersBuilder)? updates,
  ]) => (LeadTimeStatsFiltersBuilder()..update(updates))._build();

  _$LeadTimeStatsFilters._({
    this.claimType,
    this.platform,
    this.region,
    this.foundBy,
    this.since,
  }) : super._();
  @override
  LeadTimeStatsFilters rebuild(
    void Function(LeadTimeStatsFiltersBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LeadTimeStatsFiltersBuilder toBuilder() =>
      LeadTimeStatsFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeadTimeStatsFilters &&
        claimType == other.claimType &&
        platform == other.platform &&
        region == other.region &&
        foundBy == other.foundBy &&
        since == other.since;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, claimType.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, foundBy.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeadTimeStatsFilters')
          ..add('claimType', claimType)
          ..add('platform', platform)
          ..add('region', region)
          ..add('foundBy', foundBy)
          ..add('since', since))
        .toString();
  }
}

class LeadTimeStatsFiltersBuilder
    implements Builder<LeadTimeStatsFilters, LeadTimeStatsFiltersBuilder> {
  _$LeadTimeStatsFilters? _$v;

  String? _claimType;
  String? get claimType => _$this._claimType;
  set claimType(String? claimType) => _$this._claimType = claimType;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  LeadTimeStatsFiltersFoundByEnum? _foundBy;
  LeadTimeStatsFiltersFoundByEnum? get foundBy => _$this._foundBy;
  set foundBy(LeadTimeStatsFiltersFoundByEnum? foundBy) =>
      _$this._foundBy = foundBy;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  LeadTimeStatsFiltersBuilder() {
    LeadTimeStatsFilters._defaults(this);
  }

  LeadTimeStatsFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claimType = $v.claimType;
      _platform = $v.platform;
      _region = $v.region;
      _foundBy = $v.foundBy;
      _since = $v.since;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeadTimeStatsFilters other) {
    _$v = other as _$LeadTimeStatsFilters;
  }

  @override
  void update(void Function(LeadTimeStatsFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeadTimeStatsFilters build() => _build();

  _$LeadTimeStatsFilters _build() {
    final _$result =
        _$v ??
        _$LeadTimeStatsFilters._(
          claimType: claimType,
          platform: platform,
          region: region,
          foundBy: foundBy,
          since: since,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
