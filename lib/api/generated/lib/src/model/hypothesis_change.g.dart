// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_change.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisChange extends HypothesisChange {
  @override
  final num previousProbability;
  @override
  final IcdTerm? previousTerm;
  @override
  final num delta;
  @override
  final String? sinceRevisionId;

  factory _$HypothesisChange(
          [void Function(HypothesisChangeBuilder)? updates]) =>
      (HypothesisChangeBuilder()..update(updates))._build();

  _$HypothesisChange._(
      {required this.previousProbability,
      this.previousTerm,
      required this.delta,
      this.sinceRevisionId})
      : super._();
  @override
  HypothesisChange rebuild(void Function(HypothesisChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisChangeBuilder toBuilder() =>
      HypothesisChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisChange &&
        previousProbability == other.previousProbability &&
        previousTerm == other.previousTerm &&
        delta == other.delta &&
        sinceRevisionId == other.sinceRevisionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, previousProbability.hashCode);
    _$hash = $jc(_$hash, previousTerm.hashCode);
    _$hash = $jc(_$hash, delta.hashCode);
    _$hash = $jc(_$hash, sinceRevisionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisChange')
          ..add('previousProbability', previousProbability)
          ..add('previousTerm', previousTerm)
          ..add('delta', delta)
          ..add('sinceRevisionId', sinceRevisionId))
        .toString();
  }
}

class HypothesisChangeBuilder
    implements Builder<HypothesisChange, HypothesisChangeBuilder> {
  _$HypothesisChange? _$v;

  num? _previousProbability;
  num? get previousProbability => _$this._previousProbability;
  set previousProbability(num? previousProbability) =>
      _$this._previousProbability = previousProbability;

  IcdTerm? _previousTerm;
  IcdTerm? get previousTerm => _$this._previousTerm;
  set previousTerm(IcdTerm? previousTerm) =>
      _$this._previousTerm = previousTerm;

  num? _delta;
  num? get delta => _$this._delta;
  set delta(num? delta) => _$this._delta = delta;

  String? _sinceRevisionId;
  String? get sinceRevisionId => _$this._sinceRevisionId;
  set sinceRevisionId(String? sinceRevisionId) =>
      _$this._sinceRevisionId = sinceRevisionId;

  HypothesisChangeBuilder() {
    HypothesisChange._defaults(this);
  }

  HypothesisChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _previousProbability = $v.previousProbability;
      _previousTerm = $v.previousTerm;
      _delta = $v.delta;
      _sinceRevisionId = $v.sinceRevisionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisChange other) {
    _$v = other as _$HypothesisChange;
  }

  @override
  void update(void Function(HypothesisChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisChange build() => _build();

  _$HypothesisChange _build() {
    final _$result = _$v ??
        _$HypothesisChange._(
          previousProbability: BuiltValueNullFieldError.checkNotNull(
              previousProbability, r'HypothesisChange', 'previousProbability'),
          previousTerm: previousTerm,
          delta: BuiltValueNullFieldError.checkNotNull(
              delta, r'HypothesisChange', 'delta'),
          sinceRevisionId: sinceRevisionId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
