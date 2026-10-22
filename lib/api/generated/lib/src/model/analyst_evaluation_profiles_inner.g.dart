// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_evaluation_profiles_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystEvaluationProfilesInner extends AnalystEvaluationProfilesInner {
  @override
  final String profileId;
  @override
  final BuiltMap<String, int> runsByStatus;
  @override
  final num? noopShare;
  @override
  final BuiltList<AnalystEvaluationProfilesInnerTokensPerDayInner>?
  tokensPerDay;
  @override
  final num? proposalAcceptanceRate;
  @override
  final num? notesDismissedShare;
  @override
  final num? usefulRatio;
  @override
  final num? wrongRatio;
  @override
  final num? citationsDroppedPerRun;

  factory _$AnalystEvaluationProfilesInner([
    void Function(AnalystEvaluationProfilesInnerBuilder)? updates,
  ]) => (AnalystEvaluationProfilesInnerBuilder()..update(updates))._build();

  _$AnalystEvaluationProfilesInner._({
    required this.profileId,
    required this.runsByStatus,
    this.noopShare,
    this.tokensPerDay,
    this.proposalAcceptanceRate,
    this.notesDismissedShare,
    this.usefulRatio,
    this.wrongRatio,
    this.citationsDroppedPerRun,
  }) : super._();
  @override
  AnalystEvaluationProfilesInner rebuild(
    void Function(AnalystEvaluationProfilesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalystEvaluationProfilesInnerBuilder toBuilder() =>
      AnalystEvaluationProfilesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystEvaluationProfilesInner &&
        profileId == other.profileId &&
        runsByStatus == other.runsByStatus &&
        noopShare == other.noopShare &&
        tokensPerDay == other.tokensPerDay &&
        proposalAcceptanceRate == other.proposalAcceptanceRate &&
        notesDismissedShare == other.notesDismissedShare &&
        usefulRatio == other.usefulRatio &&
        wrongRatio == other.wrongRatio &&
        citationsDroppedPerRun == other.citationsDroppedPerRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, runsByStatus.hashCode);
    _$hash = $jc(_$hash, noopShare.hashCode);
    _$hash = $jc(_$hash, tokensPerDay.hashCode);
    _$hash = $jc(_$hash, proposalAcceptanceRate.hashCode);
    _$hash = $jc(_$hash, notesDismissedShare.hashCode);
    _$hash = $jc(_$hash, usefulRatio.hashCode);
    _$hash = $jc(_$hash, wrongRatio.hashCode);
    _$hash = $jc(_$hash, citationsDroppedPerRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystEvaluationProfilesInner')
          ..add('profileId', profileId)
          ..add('runsByStatus', runsByStatus)
          ..add('noopShare', noopShare)
          ..add('tokensPerDay', tokensPerDay)
          ..add('proposalAcceptanceRate', proposalAcceptanceRate)
          ..add('notesDismissedShare', notesDismissedShare)
          ..add('usefulRatio', usefulRatio)
          ..add('wrongRatio', wrongRatio)
          ..add('citationsDroppedPerRun', citationsDroppedPerRun))
        .toString();
  }
}

class AnalystEvaluationProfilesInnerBuilder
    implements
        Builder<
          AnalystEvaluationProfilesInner,
          AnalystEvaluationProfilesInnerBuilder
        > {
  _$AnalystEvaluationProfilesInner? _$v;

  String? _profileId;
  String? get profileId => _$this._profileId;
  set profileId(String? profileId) => _$this._profileId = profileId;

  MapBuilder<String, int>? _runsByStatus;
  MapBuilder<String, int> get runsByStatus =>
      _$this._runsByStatus ??= MapBuilder<String, int>();
  set runsByStatus(MapBuilder<String, int>? runsByStatus) =>
      _$this._runsByStatus = runsByStatus;

  num? _noopShare;
  num? get noopShare => _$this._noopShare;
  set noopShare(num? noopShare) => _$this._noopShare = noopShare;

  ListBuilder<AnalystEvaluationProfilesInnerTokensPerDayInner>? _tokensPerDay;
  ListBuilder<AnalystEvaluationProfilesInnerTokensPerDayInner>
  get tokensPerDay => _$this._tokensPerDay ??=
      ListBuilder<AnalystEvaluationProfilesInnerTokensPerDayInner>();
  set tokensPerDay(
    ListBuilder<AnalystEvaluationProfilesInnerTokensPerDayInner>? tokensPerDay,
  ) => _$this._tokensPerDay = tokensPerDay;

  num? _proposalAcceptanceRate;
  num? get proposalAcceptanceRate => _$this._proposalAcceptanceRate;
  set proposalAcceptanceRate(num? proposalAcceptanceRate) =>
      _$this._proposalAcceptanceRate = proposalAcceptanceRate;

  num? _notesDismissedShare;
  num? get notesDismissedShare => _$this._notesDismissedShare;
  set notesDismissedShare(num? notesDismissedShare) =>
      _$this._notesDismissedShare = notesDismissedShare;

  num? _usefulRatio;
  num? get usefulRatio => _$this._usefulRatio;
  set usefulRatio(num? usefulRatio) => _$this._usefulRatio = usefulRatio;

  num? _wrongRatio;
  num? get wrongRatio => _$this._wrongRatio;
  set wrongRatio(num? wrongRatio) => _$this._wrongRatio = wrongRatio;

  num? _citationsDroppedPerRun;
  num? get citationsDroppedPerRun => _$this._citationsDroppedPerRun;
  set citationsDroppedPerRun(num? citationsDroppedPerRun) =>
      _$this._citationsDroppedPerRun = citationsDroppedPerRun;

  AnalystEvaluationProfilesInnerBuilder() {
    AnalystEvaluationProfilesInner._defaults(this);
  }

  AnalystEvaluationProfilesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profileId = $v.profileId;
      _runsByStatus = $v.runsByStatus.toBuilder();
      _noopShare = $v.noopShare;
      _tokensPerDay = $v.tokensPerDay?.toBuilder();
      _proposalAcceptanceRate = $v.proposalAcceptanceRate;
      _notesDismissedShare = $v.notesDismissedShare;
      _usefulRatio = $v.usefulRatio;
      _wrongRatio = $v.wrongRatio;
      _citationsDroppedPerRun = $v.citationsDroppedPerRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystEvaluationProfilesInner other) {
    _$v = other as _$AnalystEvaluationProfilesInner;
  }

  @override
  void update(void Function(AnalystEvaluationProfilesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystEvaluationProfilesInner build() => _build();

  _$AnalystEvaluationProfilesInner _build() {
    _$AnalystEvaluationProfilesInner _$result;
    try {
      _$result =
          _$v ??
          _$AnalystEvaluationProfilesInner._(
            profileId: BuiltValueNullFieldError.checkNotNull(
              profileId,
              r'AnalystEvaluationProfilesInner',
              'profileId',
            ),
            runsByStatus: runsByStatus.build(),
            noopShare: noopShare,
            tokensPerDay: _tokensPerDay?.build(),
            proposalAcceptanceRate: proposalAcceptanceRate,
            notesDismissedShare: notesDismissedShare,
            usefulRatio: usefulRatio,
            wrongRatio: wrongRatio,
            citationsDroppedPerRun: citationsDroppedPerRun,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'runsByStatus';
        runsByStatus.build();

        _$failedField = 'tokensPerDay';
        _tokensPerDay?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalystEvaluationProfilesInner',
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
