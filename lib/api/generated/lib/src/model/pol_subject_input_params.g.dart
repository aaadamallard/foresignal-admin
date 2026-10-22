// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_subject_input_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolSubjectInputParams extends PolSubjectInputParams {
  @override
  final num? stayRadiusM;
  @override
  final String? minDwell;
  @override
  final String? maxGap;
  @override
  final num? eps;
  @override
  final int? minPts;
  @override
  final String? lookback;

  factory _$PolSubjectInputParams([
    void Function(PolSubjectInputParamsBuilder)? updates,
  ]) => (PolSubjectInputParamsBuilder()..update(updates))._build();

  _$PolSubjectInputParams._({
    this.stayRadiusM,
    this.minDwell,
    this.maxGap,
    this.eps,
    this.minPts,
    this.lookback,
  }) : super._();
  @override
  PolSubjectInputParams rebuild(
    void Function(PolSubjectInputParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PolSubjectInputParamsBuilder toBuilder() =>
      PolSubjectInputParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolSubjectInputParams &&
        stayRadiusM == other.stayRadiusM &&
        minDwell == other.minDwell &&
        maxGap == other.maxGap &&
        eps == other.eps &&
        minPts == other.minPts &&
        lookback == other.lookback;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stayRadiusM.hashCode);
    _$hash = $jc(_$hash, minDwell.hashCode);
    _$hash = $jc(_$hash, maxGap.hashCode);
    _$hash = $jc(_$hash, eps.hashCode);
    _$hash = $jc(_$hash, minPts.hashCode);
    _$hash = $jc(_$hash, lookback.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolSubjectInputParams')
          ..add('stayRadiusM', stayRadiusM)
          ..add('minDwell', minDwell)
          ..add('maxGap', maxGap)
          ..add('eps', eps)
          ..add('minPts', minPts)
          ..add('lookback', lookback))
        .toString();
  }
}

class PolSubjectInputParamsBuilder
    implements Builder<PolSubjectInputParams, PolSubjectInputParamsBuilder> {
  _$PolSubjectInputParams? _$v;

  num? _stayRadiusM;
  num? get stayRadiusM => _$this._stayRadiusM;
  set stayRadiusM(num? stayRadiusM) => _$this._stayRadiusM = stayRadiusM;

  String? _minDwell;
  String? get minDwell => _$this._minDwell;
  set minDwell(String? minDwell) => _$this._minDwell = minDwell;

  String? _maxGap;
  String? get maxGap => _$this._maxGap;
  set maxGap(String? maxGap) => _$this._maxGap = maxGap;

  num? _eps;
  num? get eps => _$this._eps;
  set eps(num? eps) => _$this._eps = eps;

  int? _minPts;
  int? get minPts => _$this._minPts;
  set minPts(int? minPts) => _$this._minPts = minPts;

  String? _lookback;
  String? get lookback => _$this._lookback;
  set lookback(String? lookback) => _$this._lookback = lookback;

  PolSubjectInputParamsBuilder() {
    PolSubjectInputParams._defaults(this);
  }

  PolSubjectInputParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stayRadiusM = $v.stayRadiusM;
      _minDwell = $v.minDwell;
      _maxGap = $v.maxGap;
      _eps = $v.eps;
      _minPts = $v.minPts;
      _lookback = $v.lookback;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolSubjectInputParams other) {
    _$v = other as _$PolSubjectInputParams;
  }

  @override
  void update(void Function(PolSubjectInputParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolSubjectInputParams build() => _build();

  _$PolSubjectInputParams _build() {
    final _$result =
        _$v ??
        _$PolSubjectInputParams._(
          stayRadiusM: stayRadiusM,
          minDwell: minDwell,
          maxGap: maxGap,
          eps: eps,
          minPts: minPts,
          lookback: lookback,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
