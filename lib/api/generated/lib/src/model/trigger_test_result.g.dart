// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TriggerTestResult extends TriggerTestResult {
  @override
  final String ruleId;
  @override
  final DateTime? evaluatedFrom;
  @override
  final BuiltList<Record> matches;
  @override
  final bool? truncated;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final int? matchCount;
  @override
  final bool? simulated;
  @override
  final int? wouldFire;
  @override
  final int? wouldSuppress;
  @override
  final bool? truncatedByRetention;
  @override
  final bool? enrich;
  @override
  final BuiltList<TriggerTestResultWarningsInner>? warnings;
  @override
  final bool? approximate;
  @override
  final String? approximateReason;
  @override
  final BuiltList<TriggerTestResultWindowEvaluationsInner>? windowEvaluations;

  factory _$TriggerTestResult([
    void Function(TriggerTestResultBuilder)? updates,
  ]) => (TriggerTestResultBuilder()..update(updates))._build();

  _$TriggerTestResult._({
    required this.ruleId,
    this.evaluatedFrom,
    required this.matches,
    this.truncated,
    this.fromSeq,
    this.toSeq,
    this.matchCount,
    this.simulated,
    this.wouldFire,
    this.wouldSuppress,
    this.truncatedByRetention,
    this.enrich,
    this.warnings,
    this.approximate,
    this.approximateReason,
    this.windowEvaluations,
  }) : super._();
  @override
  TriggerTestResult rebuild(void Function(TriggerTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TriggerTestResultBuilder toBuilder() =>
      TriggerTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TriggerTestResult &&
        ruleId == other.ruleId &&
        evaluatedFrom == other.evaluatedFrom &&
        matches == other.matches &&
        truncated == other.truncated &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        matchCount == other.matchCount &&
        simulated == other.simulated &&
        wouldFire == other.wouldFire &&
        wouldSuppress == other.wouldSuppress &&
        truncatedByRetention == other.truncatedByRetention &&
        enrich == other.enrich &&
        warnings == other.warnings &&
        approximate == other.approximate &&
        approximateReason == other.approximateReason &&
        windowEvaluations == other.windowEvaluations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, evaluatedFrom.hashCode);
    _$hash = $jc(_$hash, matches.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, matchCount.hashCode);
    _$hash = $jc(_$hash, simulated.hashCode);
    _$hash = $jc(_$hash, wouldFire.hashCode);
    _$hash = $jc(_$hash, wouldSuppress.hashCode);
    _$hash = $jc(_$hash, truncatedByRetention.hashCode);
    _$hash = $jc(_$hash, enrich.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, approximate.hashCode);
    _$hash = $jc(_$hash, approximateReason.hashCode);
    _$hash = $jc(_$hash, windowEvaluations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TriggerTestResult')
          ..add('ruleId', ruleId)
          ..add('evaluatedFrom', evaluatedFrom)
          ..add('matches', matches)
          ..add('truncated', truncated)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('matchCount', matchCount)
          ..add('simulated', simulated)
          ..add('wouldFire', wouldFire)
          ..add('wouldSuppress', wouldSuppress)
          ..add('truncatedByRetention', truncatedByRetention)
          ..add('enrich', enrich)
          ..add('warnings', warnings)
          ..add('approximate', approximate)
          ..add('approximateReason', approximateReason)
          ..add('windowEvaluations', windowEvaluations))
        .toString();
  }
}

class TriggerTestResultBuilder
    implements Builder<TriggerTestResult, TriggerTestResultBuilder> {
  _$TriggerTestResult? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  DateTime? _evaluatedFrom;
  DateTime? get evaluatedFrom => _$this._evaluatedFrom;
  set evaluatedFrom(DateTime? evaluatedFrom) =>
      _$this._evaluatedFrom = evaluatedFrom;

  ListBuilder<Record>? _matches;
  ListBuilder<Record> get matches => _$this._matches ??= ListBuilder<Record>();
  set matches(ListBuilder<Record>? matches) => _$this._matches = matches;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  int? _matchCount;
  int? get matchCount => _$this._matchCount;
  set matchCount(int? matchCount) => _$this._matchCount = matchCount;

  bool? _simulated;
  bool? get simulated => _$this._simulated;
  set simulated(bool? simulated) => _$this._simulated = simulated;

  int? _wouldFire;
  int? get wouldFire => _$this._wouldFire;
  set wouldFire(int? wouldFire) => _$this._wouldFire = wouldFire;

  int? _wouldSuppress;
  int? get wouldSuppress => _$this._wouldSuppress;
  set wouldSuppress(int? wouldSuppress) =>
      _$this._wouldSuppress = wouldSuppress;

  bool? _truncatedByRetention;
  bool? get truncatedByRetention => _$this._truncatedByRetention;
  set truncatedByRetention(bool? truncatedByRetention) =>
      _$this._truncatedByRetention = truncatedByRetention;

  bool? _enrich;
  bool? get enrich => _$this._enrich;
  set enrich(bool? enrich) => _$this._enrich = enrich;

  ListBuilder<TriggerTestResultWarningsInner>? _warnings;
  ListBuilder<TriggerTestResultWarningsInner> get warnings =>
      _$this._warnings ??= ListBuilder<TriggerTestResultWarningsInner>();
  set warnings(ListBuilder<TriggerTestResultWarningsInner>? warnings) =>
      _$this._warnings = warnings;

  bool? _approximate;
  bool? get approximate => _$this._approximate;
  set approximate(bool? approximate) => _$this._approximate = approximate;

  String? _approximateReason;
  String? get approximateReason => _$this._approximateReason;
  set approximateReason(String? approximateReason) =>
      _$this._approximateReason = approximateReason;

  ListBuilder<TriggerTestResultWindowEvaluationsInner>? _windowEvaluations;
  ListBuilder<TriggerTestResultWindowEvaluationsInner> get windowEvaluations =>
      _$this._windowEvaluations ??=
          ListBuilder<TriggerTestResultWindowEvaluationsInner>();
  set windowEvaluations(
    ListBuilder<TriggerTestResultWindowEvaluationsInner>? windowEvaluations,
  ) => _$this._windowEvaluations = windowEvaluations;

  TriggerTestResultBuilder() {
    TriggerTestResult._defaults(this);
  }

  TriggerTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _evaluatedFrom = $v.evaluatedFrom;
      _matches = $v.matches.toBuilder();
      _truncated = $v.truncated;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _matchCount = $v.matchCount;
      _simulated = $v.simulated;
      _wouldFire = $v.wouldFire;
      _wouldSuppress = $v.wouldSuppress;
      _truncatedByRetention = $v.truncatedByRetention;
      _enrich = $v.enrich;
      _warnings = $v.warnings?.toBuilder();
      _approximate = $v.approximate;
      _approximateReason = $v.approximateReason;
      _windowEvaluations = $v.windowEvaluations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TriggerTestResult other) {
    _$v = other as _$TriggerTestResult;
  }

  @override
  void update(void Function(TriggerTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TriggerTestResult build() => _build();

  _$TriggerTestResult _build() {
    _$TriggerTestResult _$result;
    try {
      _$result =
          _$v ??
          _$TriggerTestResult._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'TriggerTestResult',
              'ruleId',
            ),
            evaluatedFrom: evaluatedFrom,
            matches: matches.build(),
            truncated: truncated,
            fromSeq: fromSeq,
            toSeq: toSeq,
            matchCount: matchCount,
            simulated: simulated,
            wouldFire: wouldFire,
            wouldSuppress: wouldSuppress,
            truncatedByRetention: truncatedByRetention,
            enrich: enrich,
            warnings: _warnings?.build(),
            approximate: approximate,
            approximateReason: approximateReason,
            windowEvaluations: _windowEvaluations?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matches';
        matches.build();

        _$failedField = 'warnings';
        _warnings?.build();

        _$failedField = 'windowEvaluations';
        _windowEvaluations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TriggerTestResult',
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
