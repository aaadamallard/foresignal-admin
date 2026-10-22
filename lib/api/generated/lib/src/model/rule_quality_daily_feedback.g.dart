// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_quality_daily_feedback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleQualityDailyFeedback extends RuleQualityDailyFeedback {
  @override
  final int? useful;
  @override
  final int? noise;
  @override
  final int? late_;
  @override
  final int? falsePositive;

  factory _$RuleQualityDailyFeedback([
    void Function(RuleQualityDailyFeedbackBuilder)? updates,
  ]) => (RuleQualityDailyFeedbackBuilder()..update(updates))._build();

  _$RuleQualityDailyFeedback._({
    this.useful,
    this.noise,
    this.late_,
    this.falsePositive,
  }) : super._();
  @override
  RuleQualityDailyFeedback rebuild(
    void Function(RuleQualityDailyFeedbackBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleQualityDailyFeedbackBuilder toBuilder() =>
      RuleQualityDailyFeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleQualityDailyFeedback &&
        useful == other.useful &&
        noise == other.noise &&
        late_ == other.late_ &&
        falsePositive == other.falsePositive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, useful.hashCode);
    _$hash = $jc(_$hash, noise.hashCode);
    _$hash = $jc(_$hash, late_.hashCode);
    _$hash = $jc(_$hash, falsePositive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleQualityDailyFeedback')
          ..add('useful', useful)
          ..add('noise', noise)
          ..add('late_', late_)
          ..add('falsePositive', falsePositive))
        .toString();
  }
}

class RuleQualityDailyFeedbackBuilder
    implements
        Builder<RuleQualityDailyFeedback, RuleQualityDailyFeedbackBuilder> {
  _$RuleQualityDailyFeedback? _$v;

  int? _useful;
  int? get useful => _$this._useful;
  set useful(int? useful) => _$this._useful = useful;

  int? _noise;
  int? get noise => _$this._noise;
  set noise(int? noise) => _$this._noise = noise;

  int? _late_;
  int? get late_ => _$this._late_;
  set late_(int? late_) => _$this._late_ = late_;

  int? _falsePositive;
  int? get falsePositive => _$this._falsePositive;
  set falsePositive(int? falsePositive) =>
      _$this._falsePositive = falsePositive;

  RuleQualityDailyFeedbackBuilder() {
    RuleQualityDailyFeedback._defaults(this);
  }

  RuleQualityDailyFeedbackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _useful = $v.useful;
      _noise = $v.noise;
      _late_ = $v.late_;
      _falsePositive = $v.falsePositive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleQualityDailyFeedback other) {
    _$v = other as _$RuleQualityDailyFeedback;
  }

  @override
  void update(void Function(RuleQualityDailyFeedbackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleQualityDailyFeedback build() => _build();

  _$RuleQualityDailyFeedback _build() {
    final _$result =
        _$v ??
        _$RuleQualityDailyFeedback._(
          useful: useful,
          noise: noise,
          late_: late_,
          falsePositive: falsePositive,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
