// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analog_outcomes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalogOutcomes extends AnalogOutcomes {
  @override
  final num? durationDays;
  @override
  final Severity? peakSeverity;
  @override
  final BuiltList<String>? followOnFamilies7d;
  @override
  final BuiltList<String>? followOnFamilies30d;
  @override
  final AnalogOutcomesHypothesisOutcome? hypothesisOutcome;
  @override
  final bool? targetOutcomeOccurred;

  factory _$AnalogOutcomes([void Function(AnalogOutcomesBuilder)? updates]) =>
      (AnalogOutcomesBuilder()..update(updates))._build();

  _$AnalogOutcomes._({
    this.durationDays,
    this.peakSeverity,
    this.followOnFamilies7d,
    this.followOnFamilies30d,
    this.hypothesisOutcome,
    this.targetOutcomeOccurred,
  }) : super._();
  @override
  AnalogOutcomes rebuild(void Function(AnalogOutcomesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalogOutcomesBuilder toBuilder() => AnalogOutcomesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalogOutcomes &&
        durationDays == other.durationDays &&
        peakSeverity == other.peakSeverity &&
        followOnFamilies7d == other.followOnFamilies7d &&
        followOnFamilies30d == other.followOnFamilies30d &&
        hypothesisOutcome == other.hypothesisOutcome &&
        targetOutcomeOccurred == other.targetOutcomeOccurred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, durationDays.hashCode);
    _$hash = $jc(_$hash, peakSeverity.hashCode);
    _$hash = $jc(_$hash, followOnFamilies7d.hashCode);
    _$hash = $jc(_$hash, followOnFamilies30d.hashCode);
    _$hash = $jc(_$hash, hypothesisOutcome.hashCode);
    _$hash = $jc(_$hash, targetOutcomeOccurred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalogOutcomes')
          ..add('durationDays', durationDays)
          ..add('peakSeverity', peakSeverity)
          ..add('followOnFamilies7d', followOnFamilies7d)
          ..add('followOnFamilies30d', followOnFamilies30d)
          ..add('hypothesisOutcome', hypothesisOutcome)
          ..add('targetOutcomeOccurred', targetOutcomeOccurred))
        .toString();
  }
}

class AnalogOutcomesBuilder
    implements Builder<AnalogOutcomes, AnalogOutcomesBuilder> {
  _$AnalogOutcomes? _$v;

  num? _durationDays;
  num? get durationDays => _$this._durationDays;
  set durationDays(num? durationDays) => _$this._durationDays = durationDays;

  Severity? _peakSeverity;
  Severity? get peakSeverity => _$this._peakSeverity;
  set peakSeverity(Severity? peakSeverity) =>
      _$this._peakSeverity = peakSeverity;

  ListBuilder<String>? _followOnFamilies7d;
  ListBuilder<String> get followOnFamilies7d =>
      _$this._followOnFamilies7d ??= ListBuilder<String>();
  set followOnFamilies7d(ListBuilder<String>? followOnFamilies7d) =>
      _$this._followOnFamilies7d = followOnFamilies7d;

  ListBuilder<String>? _followOnFamilies30d;
  ListBuilder<String> get followOnFamilies30d =>
      _$this._followOnFamilies30d ??= ListBuilder<String>();
  set followOnFamilies30d(ListBuilder<String>? followOnFamilies30d) =>
      _$this._followOnFamilies30d = followOnFamilies30d;

  AnalogOutcomesHypothesisOutcomeBuilder? _hypothesisOutcome;
  AnalogOutcomesHypothesisOutcomeBuilder get hypothesisOutcome =>
      _$this._hypothesisOutcome ??= AnalogOutcomesHypothesisOutcomeBuilder();
  set hypothesisOutcome(
    AnalogOutcomesHypothesisOutcomeBuilder? hypothesisOutcome,
  ) => _$this._hypothesisOutcome = hypothesisOutcome;

  bool? _targetOutcomeOccurred;
  bool? get targetOutcomeOccurred => _$this._targetOutcomeOccurred;
  set targetOutcomeOccurred(bool? targetOutcomeOccurred) =>
      _$this._targetOutcomeOccurred = targetOutcomeOccurred;

  AnalogOutcomesBuilder() {
    AnalogOutcomes._defaults(this);
  }

  AnalogOutcomesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _durationDays = $v.durationDays;
      _peakSeverity = $v.peakSeverity;
      _followOnFamilies7d = $v.followOnFamilies7d?.toBuilder();
      _followOnFamilies30d = $v.followOnFamilies30d?.toBuilder();
      _hypothesisOutcome = $v.hypothesisOutcome?.toBuilder();
      _targetOutcomeOccurred = $v.targetOutcomeOccurred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalogOutcomes other) {
    _$v = other as _$AnalogOutcomes;
  }

  @override
  void update(void Function(AnalogOutcomesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalogOutcomes build() => _build();

  _$AnalogOutcomes _build() {
    _$AnalogOutcomes _$result;
    try {
      _$result =
          _$v ??
          _$AnalogOutcomes._(
            durationDays: durationDays,
            peakSeverity: peakSeverity,
            followOnFamilies7d: _followOnFamilies7d?.build(),
            followOnFamilies30d: _followOnFamilies30d?.build(),
            hypothesisOutcome: _hypothesisOutcome?.build(),
            targetOutcomeOccurred: targetOutcomeOccurred,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'followOnFamilies7d';
        _followOnFamilies7d?.build();
        _$failedField = 'followOnFamilies30d';
        _followOnFamilies30d?.build();
        _$failedField = 'hypothesisOutcome';
        _hypothesisOutcome?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalogOutcomes',
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
