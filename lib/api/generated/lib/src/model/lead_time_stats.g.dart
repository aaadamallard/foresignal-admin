// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_time_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeadTimeStats extends LeadTimeStats {
  @override
  final DateTime generatedAt;
  @override
  final DateTime trainingCutoff;
  @override
  final LeadTimeStatsFilters? filters;
  @override
  final BuiltList<LeadTimeStatsGroupsInner> groups;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$LeadTimeStats([void Function(LeadTimeStatsBuilder)? updates]) =>
      (LeadTimeStatsBuilder()..update(updates))._build();

  _$LeadTimeStats._({
    required this.generatedAt,
    required this.trainingCutoff,
    this.filters,
    required this.groups,
    this.caveats,
  }) : super._();
  @override
  LeadTimeStats rebuild(void Function(LeadTimeStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeadTimeStatsBuilder toBuilder() => LeadTimeStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeadTimeStats &&
        generatedAt == other.generatedAt &&
        trainingCutoff == other.trainingCutoff &&
        filters == other.filters &&
        groups == other.groups &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, trainingCutoff.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeadTimeStats')
          ..add('generatedAt', generatedAt)
          ..add('trainingCutoff', trainingCutoff)
          ..add('filters', filters)
          ..add('groups', groups)
          ..add('caveats', caveats))
        .toString();
  }
}

class LeadTimeStatsBuilder
    implements Builder<LeadTimeStats, LeadTimeStatsBuilder> {
  _$LeadTimeStats? _$v;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  DateTime? _trainingCutoff;
  DateTime? get trainingCutoff => _$this._trainingCutoff;
  set trainingCutoff(DateTime? trainingCutoff) =>
      _$this._trainingCutoff = trainingCutoff;

  LeadTimeStatsFiltersBuilder? _filters;
  LeadTimeStatsFiltersBuilder get filters =>
      _$this._filters ??= LeadTimeStatsFiltersBuilder();
  set filters(LeadTimeStatsFiltersBuilder? filters) =>
      _$this._filters = filters;

  ListBuilder<LeadTimeStatsGroupsInner>? _groups;
  ListBuilder<LeadTimeStatsGroupsInner> get groups =>
      _$this._groups ??= ListBuilder<LeadTimeStatsGroupsInner>();
  set groups(ListBuilder<LeadTimeStatsGroupsInner>? groups) =>
      _$this._groups = groups;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  LeadTimeStatsBuilder() {
    LeadTimeStats._defaults(this);
  }

  LeadTimeStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generatedAt = $v.generatedAt;
      _trainingCutoff = $v.trainingCutoff;
      _filters = $v.filters?.toBuilder();
      _groups = $v.groups.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeadTimeStats other) {
    _$v = other as _$LeadTimeStats;
  }

  @override
  void update(void Function(LeadTimeStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeadTimeStats build() => _build();

  _$LeadTimeStats _build() {
    _$LeadTimeStats _$result;
    try {
      _$result =
          _$v ??
          _$LeadTimeStats._(
            generatedAt: BuiltValueNullFieldError.checkNotNull(
              generatedAt,
              r'LeadTimeStats',
              'generatedAt',
            ),
            trainingCutoff: BuiltValueNullFieldError.checkNotNull(
              trainingCutoff,
              r'LeadTimeStats',
              'trainingCutoff',
            ),
            filters: _filters?.build(),
            groups: groups.build(),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'groups';
        groups.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LeadTimeStats',
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
