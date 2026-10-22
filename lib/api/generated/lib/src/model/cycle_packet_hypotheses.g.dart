// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_packet_hypotheses.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CyclePacketHypotheses extends CyclePacketHypotheses {
  @override
  final BuiltList<CyclePacketItem>? revisions;
  @override
  final BuiltList<CyclePacketItem>? bandChanges;
  @override
  final BuiltList<CyclePacketItem>? indicatorsObserved;
  @override
  final BuiltList<CyclePacketItem>? indicatorsAbsent;
  @override
  final BuiltList<CyclePacketItem>? indicatorsUnknownCoverage;
  @override
  final BuiltList<CyclePacketItem>? assumptionsBroken;
  @override
  final BuiltList<CyclePacketItem>? assumptionsQuestioned;
  @override
  final BuiltList<CyclePacketItem>? dueForReview;

  factory _$CyclePacketHypotheses(
          [void Function(CyclePacketHypothesesBuilder)? updates]) =>
      (CyclePacketHypothesesBuilder()..update(updates))._build();

  _$CyclePacketHypotheses._(
      {this.revisions,
      this.bandChanges,
      this.indicatorsObserved,
      this.indicatorsAbsent,
      this.indicatorsUnknownCoverage,
      this.assumptionsBroken,
      this.assumptionsQuestioned,
      this.dueForReview})
      : super._();
  @override
  CyclePacketHypotheses rebuild(
          void Function(CyclePacketHypothesesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CyclePacketHypothesesBuilder toBuilder() =>
      CyclePacketHypothesesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CyclePacketHypotheses &&
        revisions == other.revisions &&
        bandChanges == other.bandChanges &&
        indicatorsObserved == other.indicatorsObserved &&
        indicatorsAbsent == other.indicatorsAbsent &&
        indicatorsUnknownCoverage == other.indicatorsUnknownCoverage &&
        assumptionsBroken == other.assumptionsBroken &&
        assumptionsQuestioned == other.assumptionsQuestioned &&
        dueForReview == other.dueForReview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, revisions.hashCode);
    _$hash = $jc(_$hash, bandChanges.hashCode);
    _$hash = $jc(_$hash, indicatorsObserved.hashCode);
    _$hash = $jc(_$hash, indicatorsAbsent.hashCode);
    _$hash = $jc(_$hash, indicatorsUnknownCoverage.hashCode);
    _$hash = $jc(_$hash, assumptionsBroken.hashCode);
    _$hash = $jc(_$hash, assumptionsQuestioned.hashCode);
    _$hash = $jc(_$hash, dueForReview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CyclePacketHypotheses')
          ..add('revisions', revisions)
          ..add('bandChanges', bandChanges)
          ..add('indicatorsObserved', indicatorsObserved)
          ..add('indicatorsAbsent', indicatorsAbsent)
          ..add('indicatorsUnknownCoverage', indicatorsUnknownCoverage)
          ..add('assumptionsBroken', assumptionsBroken)
          ..add('assumptionsQuestioned', assumptionsQuestioned)
          ..add('dueForReview', dueForReview))
        .toString();
  }
}

class CyclePacketHypothesesBuilder
    implements Builder<CyclePacketHypotheses, CyclePacketHypothesesBuilder> {
  _$CyclePacketHypotheses? _$v;

  ListBuilder<CyclePacketItem>? _revisions;
  ListBuilder<CyclePacketItem> get revisions =>
      _$this._revisions ??= ListBuilder<CyclePacketItem>();
  set revisions(ListBuilder<CyclePacketItem>? revisions) =>
      _$this._revisions = revisions;

  ListBuilder<CyclePacketItem>? _bandChanges;
  ListBuilder<CyclePacketItem> get bandChanges =>
      _$this._bandChanges ??= ListBuilder<CyclePacketItem>();
  set bandChanges(ListBuilder<CyclePacketItem>? bandChanges) =>
      _$this._bandChanges = bandChanges;

  ListBuilder<CyclePacketItem>? _indicatorsObserved;
  ListBuilder<CyclePacketItem> get indicatorsObserved =>
      _$this._indicatorsObserved ??= ListBuilder<CyclePacketItem>();
  set indicatorsObserved(ListBuilder<CyclePacketItem>? indicatorsObserved) =>
      _$this._indicatorsObserved = indicatorsObserved;

  ListBuilder<CyclePacketItem>? _indicatorsAbsent;
  ListBuilder<CyclePacketItem> get indicatorsAbsent =>
      _$this._indicatorsAbsent ??= ListBuilder<CyclePacketItem>();
  set indicatorsAbsent(ListBuilder<CyclePacketItem>? indicatorsAbsent) =>
      _$this._indicatorsAbsent = indicatorsAbsent;

  ListBuilder<CyclePacketItem>? _indicatorsUnknownCoverage;
  ListBuilder<CyclePacketItem> get indicatorsUnknownCoverage =>
      _$this._indicatorsUnknownCoverage ??= ListBuilder<CyclePacketItem>();
  set indicatorsUnknownCoverage(
          ListBuilder<CyclePacketItem>? indicatorsUnknownCoverage) =>
      _$this._indicatorsUnknownCoverage = indicatorsUnknownCoverage;

  ListBuilder<CyclePacketItem>? _assumptionsBroken;
  ListBuilder<CyclePacketItem> get assumptionsBroken =>
      _$this._assumptionsBroken ??= ListBuilder<CyclePacketItem>();
  set assumptionsBroken(ListBuilder<CyclePacketItem>? assumptionsBroken) =>
      _$this._assumptionsBroken = assumptionsBroken;

  ListBuilder<CyclePacketItem>? _assumptionsQuestioned;
  ListBuilder<CyclePacketItem> get assumptionsQuestioned =>
      _$this._assumptionsQuestioned ??= ListBuilder<CyclePacketItem>();
  set assumptionsQuestioned(
          ListBuilder<CyclePacketItem>? assumptionsQuestioned) =>
      _$this._assumptionsQuestioned = assumptionsQuestioned;

  ListBuilder<CyclePacketItem>? _dueForReview;
  ListBuilder<CyclePacketItem> get dueForReview =>
      _$this._dueForReview ??= ListBuilder<CyclePacketItem>();
  set dueForReview(ListBuilder<CyclePacketItem>? dueForReview) =>
      _$this._dueForReview = dueForReview;

  CyclePacketHypothesesBuilder() {
    CyclePacketHypotheses._defaults(this);
  }

  CyclePacketHypothesesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revisions = $v.revisions?.toBuilder();
      _bandChanges = $v.bandChanges?.toBuilder();
      _indicatorsObserved = $v.indicatorsObserved?.toBuilder();
      _indicatorsAbsent = $v.indicatorsAbsent?.toBuilder();
      _indicatorsUnknownCoverage = $v.indicatorsUnknownCoverage?.toBuilder();
      _assumptionsBroken = $v.assumptionsBroken?.toBuilder();
      _assumptionsQuestioned = $v.assumptionsQuestioned?.toBuilder();
      _dueForReview = $v.dueForReview?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CyclePacketHypotheses other) {
    _$v = other as _$CyclePacketHypotheses;
  }

  @override
  void update(void Function(CyclePacketHypothesesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CyclePacketHypotheses build() => _build();

  _$CyclePacketHypotheses _build() {
    _$CyclePacketHypotheses _$result;
    try {
      _$result = _$v ??
          _$CyclePacketHypotheses._(
            revisions: _revisions?.build(),
            bandChanges: _bandChanges?.build(),
            indicatorsObserved: _indicatorsObserved?.build(),
            indicatorsAbsent: _indicatorsAbsent?.build(),
            indicatorsUnknownCoverage: _indicatorsUnknownCoverage?.build(),
            assumptionsBroken: _assumptionsBroken?.build(),
            assumptionsQuestioned: _assumptionsQuestioned?.build(),
            dueForReview: _dueForReview?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'revisions';
        _revisions?.build();
        _$failedField = 'bandChanges';
        _bandChanges?.build();
        _$failedField = 'indicatorsObserved';
        _indicatorsObserved?.build();
        _$failedField = 'indicatorsAbsent';
        _indicatorsAbsent?.build();
        _$failedField = 'indicatorsUnknownCoverage';
        _indicatorsUnknownCoverage?.build();
        _$failedField = 'assumptionsBroken';
        _assumptionsBroken?.build();
        _$failedField = 'assumptionsQuestioned';
        _assumptionsQuestioned?.build();
        _$failedField = 'dueForReview';
        _dueForReview?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CyclePacketHypotheses', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
