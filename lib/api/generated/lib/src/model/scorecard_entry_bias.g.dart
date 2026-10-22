// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorecard_entry_bias.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScorecardEntryBias extends ScorecardEntryBias {
  @override
  final num meanForecastMinusObserved;
  @override
  final num hedgedShare;
  @override
  final num? meanForecastOnNo;

  factory _$ScorecardEntryBias(
          [void Function(ScorecardEntryBiasBuilder)? updates]) =>
      (ScorecardEntryBiasBuilder()..update(updates))._build();

  _$ScorecardEntryBias._(
      {required this.meanForecastMinusObserved,
      required this.hedgedShare,
      this.meanForecastOnNo})
      : super._();
  @override
  ScorecardEntryBias rebuild(
          void Function(ScorecardEntryBiasBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScorecardEntryBiasBuilder toBuilder() =>
      ScorecardEntryBiasBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScorecardEntryBias &&
        meanForecastMinusObserved == other.meanForecastMinusObserved &&
        hedgedShare == other.hedgedShare &&
        meanForecastOnNo == other.meanForecastOnNo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meanForecastMinusObserved.hashCode);
    _$hash = $jc(_$hash, hedgedShare.hashCode);
    _$hash = $jc(_$hash, meanForecastOnNo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScorecardEntryBias')
          ..add('meanForecastMinusObserved', meanForecastMinusObserved)
          ..add('hedgedShare', hedgedShare)
          ..add('meanForecastOnNo', meanForecastOnNo))
        .toString();
  }
}

class ScorecardEntryBiasBuilder
    implements Builder<ScorecardEntryBias, ScorecardEntryBiasBuilder> {
  _$ScorecardEntryBias? _$v;

  num? _meanForecastMinusObserved;
  num? get meanForecastMinusObserved => _$this._meanForecastMinusObserved;
  set meanForecastMinusObserved(num? meanForecastMinusObserved) =>
      _$this._meanForecastMinusObserved = meanForecastMinusObserved;

  num? _hedgedShare;
  num? get hedgedShare => _$this._hedgedShare;
  set hedgedShare(num? hedgedShare) => _$this._hedgedShare = hedgedShare;

  num? _meanForecastOnNo;
  num? get meanForecastOnNo => _$this._meanForecastOnNo;
  set meanForecastOnNo(num? meanForecastOnNo) =>
      _$this._meanForecastOnNo = meanForecastOnNo;

  ScorecardEntryBiasBuilder() {
    ScorecardEntryBias._defaults(this);
  }

  ScorecardEntryBiasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meanForecastMinusObserved = $v.meanForecastMinusObserved;
      _hedgedShare = $v.hedgedShare;
      _meanForecastOnNo = $v.meanForecastOnNo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScorecardEntryBias other) {
    _$v = other as _$ScorecardEntryBias;
  }

  @override
  void update(void Function(ScorecardEntryBiasBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScorecardEntryBias build() => _build();

  _$ScorecardEntryBias _build() {
    final _$result = _$v ??
        _$ScorecardEntryBias._(
          meanForecastMinusObserved: BuiltValueNullFieldError.checkNotNull(
              meanForecastMinusObserved,
              r'ScorecardEntryBias',
              'meanForecastMinusObserved'),
          hedgedShare: BuiltValueNullFieldError.checkNotNull(
              hedgedShare, r'ScorecardEntryBias', 'hedgedShare'),
          meanForecastOnNo: meanForecastOnNo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
