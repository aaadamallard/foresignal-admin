// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_versus_observed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialVersusObserved extends SocialVersusObserved {
  @override
  final BuiltMap<String, int> narrativesByStatus;
  @override
  final BuiltList<SocialVersusObservedNarrativesInner> narratives;
  @override
  final BuiltList<String>? attentionGapFindingIds;
  @override
  final BuiltList<SocialVersusObservedLeadTimesInner>? leadTimes;
  @override
  final BuiltList<String>? mediaReuseFindingIds;
  @override
  final BuiltList<String>? coordinationFindingIds;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$SocialVersusObserved([
    void Function(SocialVersusObservedBuilder)? updates,
  ]) => (SocialVersusObservedBuilder()..update(updates))._build();

  _$SocialVersusObserved._({
    required this.narrativesByStatus,
    required this.narratives,
    this.attentionGapFindingIds,
    this.leadTimes,
    this.mediaReuseFindingIds,
    this.coordinationFindingIds,
    this.caveats,
  }) : super._();
  @override
  SocialVersusObserved rebuild(
    void Function(SocialVersusObservedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialVersusObservedBuilder toBuilder() =>
      SocialVersusObservedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVersusObserved &&
        narrativesByStatus == other.narrativesByStatus &&
        narratives == other.narratives &&
        attentionGapFindingIds == other.attentionGapFindingIds &&
        leadTimes == other.leadTimes &&
        mediaReuseFindingIds == other.mediaReuseFindingIds &&
        coordinationFindingIds == other.coordinationFindingIds &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narrativesByStatus.hashCode);
    _$hash = $jc(_$hash, narratives.hashCode);
    _$hash = $jc(_$hash, attentionGapFindingIds.hashCode);
    _$hash = $jc(_$hash, leadTimes.hashCode);
    _$hash = $jc(_$hash, mediaReuseFindingIds.hashCode);
    _$hash = $jc(_$hash, coordinationFindingIds.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialVersusObserved')
          ..add('narrativesByStatus', narrativesByStatus)
          ..add('narratives', narratives)
          ..add('attentionGapFindingIds', attentionGapFindingIds)
          ..add('leadTimes', leadTimes)
          ..add('mediaReuseFindingIds', mediaReuseFindingIds)
          ..add('coordinationFindingIds', coordinationFindingIds)
          ..add('caveats', caveats))
        .toString();
  }
}

class SocialVersusObservedBuilder
    implements Builder<SocialVersusObserved, SocialVersusObservedBuilder> {
  _$SocialVersusObserved? _$v;

  MapBuilder<String, int>? _narrativesByStatus;
  MapBuilder<String, int> get narrativesByStatus =>
      _$this._narrativesByStatus ??= MapBuilder<String, int>();
  set narrativesByStatus(MapBuilder<String, int>? narrativesByStatus) =>
      _$this._narrativesByStatus = narrativesByStatus;

  ListBuilder<SocialVersusObservedNarrativesInner>? _narratives;
  ListBuilder<SocialVersusObservedNarrativesInner> get narratives =>
      _$this._narratives ??= ListBuilder<SocialVersusObservedNarrativesInner>();
  set narratives(
    ListBuilder<SocialVersusObservedNarrativesInner>? narratives,
  ) => _$this._narratives = narratives;

  ListBuilder<String>? _attentionGapFindingIds;
  ListBuilder<String> get attentionGapFindingIds =>
      _$this._attentionGapFindingIds ??= ListBuilder<String>();
  set attentionGapFindingIds(ListBuilder<String>? attentionGapFindingIds) =>
      _$this._attentionGapFindingIds = attentionGapFindingIds;

  ListBuilder<SocialVersusObservedLeadTimesInner>? _leadTimes;
  ListBuilder<SocialVersusObservedLeadTimesInner> get leadTimes =>
      _$this._leadTimes ??= ListBuilder<SocialVersusObservedLeadTimesInner>();
  set leadTimes(ListBuilder<SocialVersusObservedLeadTimesInner>? leadTimes) =>
      _$this._leadTimes = leadTimes;

  ListBuilder<String>? _mediaReuseFindingIds;
  ListBuilder<String> get mediaReuseFindingIds =>
      _$this._mediaReuseFindingIds ??= ListBuilder<String>();
  set mediaReuseFindingIds(ListBuilder<String>? mediaReuseFindingIds) =>
      _$this._mediaReuseFindingIds = mediaReuseFindingIds;

  ListBuilder<String>? _coordinationFindingIds;
  ListBuilder<String> get coordinationFindingIds =>
      _$this._coordinationFindingIds ??= ListBuilder<String>();
  set coordinationFindingIds(ListBuilder<String>? coordinationFindingIds) =>
      _$this._coordinationFindingIds = coordinationFindingIds;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  SocialVersusObservedBuilder() {
    SocialVersusObserved._defaults(this);
  }

  SocialVersusObservedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narrativesByStatus = $v.narrativesByStatus.toBuilder();
      _narratives = $v.narratives.toBuilder();
      _attentionGapFindingIds = $v.attentionGapFindingIds?.toBuilder();
      _leadTimes = $v.leadTimes?.toBuilder();
      _mediaReuseFindingIds = $v.mediaReuseFindingIds?.toBuilder();
      _coordinationFindingIds = $v.coordinationFindingIds?.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVersusObserved other) {
    _$v = other as _$SocialVersusObserved;
  }

  @override
  void update(void Function(SocialVersusObservedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialVersusObserved build() => _build();

  _$SocialVersusObserved _build() {
    _$SocialVersusObserved _$result;
    try {
      _$result =
          _$v ??
          _$SocialVersusObserved._(
            narrativesByStatus: narrativesByStatus.build(),
            narratives: narratives.build(),
            attentionGapFindingIds: _attentionGapFindingIds?.build(),
            leadTimes: _leadTimes?.build(),
            mediaReuseFindingIds: _mediaReuseFindingIds?.build(),
            coordinationFindingIds: _coordinationFindingIds?.build(),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'narrativesByStatus';
        narrativesByStatus.build();
        _$failedField = 'narratives';
        narratives.build();
        _$failedField = 'attentionGapFindingIds';
        _attentionGapFindingIds?.build();
        _$failedField = 'leadTimes';
        _leadTimes?.build();
        _$failedField = 'mediaReuseFindingIds';
        _mediaReuseFindingIds?.build();
        _$failedField = 'coordinationFindingIds';
        _coordinationFindingIds?.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialVersusObserved',
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
