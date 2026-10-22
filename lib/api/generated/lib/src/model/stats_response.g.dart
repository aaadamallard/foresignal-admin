// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatsResponse extends StatsResponse {
  @override
  final String productId;
  @override
  final String? frameKey;
  @override
  final DateTime? validTime;
  @override
  final String? run;
  @override
  final num? ageMinutes;
  @override
  final String? units;
  @override
  final SampleStatus status;
  @override
  final String? statusText;
  @override
  final num? min;
  @override
  final num? max;
  @override
  final num? mean;
  @override
  final num? p95;
  @override
  final num? coveragePct;
  @override
  final num? areaKm2;
  @override
  final BuiltList<StatsResponseThresholdsInner> thresholds;
  @override
  final Attribution attribution;

  factory _$StatsResponse([void Function(StatsResponseBuilder)? updates]) =>
      (StatsResponseBuilder()..update(updates))._build();

  _$StatsResponse._({
    required this.productId,
    this.frameKey,
    this.validTime,
    this.run,
    this.ageMinutes,
    this.units,
    required this.status,
    this.statusText,
    this.min,
    this.max,
    this.mean,
    this.p95,
    this.coveragePct,
    this.areaKm2,
    required this.thresholds,
    required this.attribution,
  }) : super._();
  @override
  StatsResponse rebuild(void Function(StatsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsResponseBuilder toBuilder() => StatsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsResponse &&
        productId == other.productId &&
        frameKey == other.frameKey &&
        validTime == other.validTime &&
        run == other.run &&
        ageMinutes == other.ageMinutes &&
        units == other.units &&
        status == other.status &&
        statusText == other.statusText &&
        min == other.min &&
        max == other.max &&
        mean == other.mean &&
        p95 == other.p95 &&
        coveragePct == other.coveragePct &&
        areaKm2 == other.areaKm2 &&
        thresholds == other.thresholds &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, validTime.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, ageMinutes.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, mean.hashCode);
    _$hash = $jc(_$hash, p95.hashCode);
    _$hash = $jc(_$hash, coveragePct.hashCode);
    _$hash = $jc(_$hash, areaKm2.hashCode);
    _$hash = $jc(_$hash, thresholds.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsResponse')
          ..add('productId', productId)
          ..add('frameKey', frameKey)
          ..add('validTime', validTime)
          ..add('run', run)
          ..add('ageMinutes', ageMinutes)
          ..add('units', units)
          ..add('status', status)
          ..add('statusText', statusText)
          ..add('min', min)
          ..add('max', max)
          ..add('mean', mean)
          ..add('p95', p95)
          ..add('coveragePct', coveragePct)
          ..add('areaKm2', areaKm2)
          ..add('thresholds', thresholds)
          ..add('attribution', attribution))
        .toString();
  }
}

class StatsResponseBuilder
    implements Builder<StatsResponse, StatsResponseBuilder> {
  _$StatsResponse? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  DateTime? _validTime;
  DateTime? get validTime => _$this._validTime;
  set validTime(DateTime? validTime) => _$this._validTime = validTime;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  num? _ageMinutes;
  num? get ageMinutes => _$this._ageMinutes;
  set ageMinutes(num? ageMinutes) => _$this._ageMinutes = ageMinutes;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  SampleStatus? _status;
  SampleStatus? get status => _$this._status;
  set status(SampleStatus? status) => _$this._status = status;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _min;
  num? get min => _$this._min;
  set min(num? min) => _$this._min = min;

  num? _max;
  num? get max => _$this._max;
  set max(num? max) => _$this._max = max;

  num? _mean;
  num? get mean => _$this._mean;
  set mean(num? mean) => _$this._mean = mean;

  num? _p95;
  num? get p95 => _$this._p95;
  set p95(num? p95) => _$this._p95 = p95;

  num? _coveragePct;
  num? get coveragePct => _$this._coveragePct;
  set coveragePct(num? coveragePct) => _$this._coveragePct = coveragePct;

  num? _areaKm2;
  num? get areaKm2 => _$this._areaKm2;
  set areaKm2(num? areaKm2) => _$this._areaKm2 = areaKm2;

  ListBuilder<StatsResponseThresholdsInner>? _thresholds;
  ListBuilder<StatsResponseThresholdsInner> get thresholds =>
      _$this._thresholds ??= ListBuilder<StatsResponseThresholdsInner>();
  set thresholds(ListBuilder<StatsResponseThresholdsInner>? thresholds) =>
      _$this._thresholds = thresholds;

  AttributionBuilder? _attribution;
  AttributionBuilder get attribution =>
      _$this._attribution ??= AttributionBuilder();
  set attribution(AttributionBuilder? attribution) =>
      _$this._attribution = attribution;

  StatsResponseBuilder() {
    StatsResponse._defaults(this);
  }

  StatsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _frameKey = $v.frameKey;
      _validTime = $v.validTime;
      _run = $v.run;
      _ageMinutes = $v.ageMinutes;
      _units = $v.units;
      _status = $v.status;
      _statusText = $v.statusText;
      _min = $v.min;
      _max = $v.max;
      _mean = $v.mean;
      _p95 = $v.p95;
      _coveragePct = $v.coveragePct;
      _areaKm2 = $v.areaKm2;
      _thresholds = $v.thresholds.toBuilder();
      _attribution = $v.attribution.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsResponse other) {
    _$v = other as _$StatsResponse;
  }

  @override
  void update(void Function(StatsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsResponse build() => _build();

  _$StatsResponse _build() {
    _$StatsResponse _$result;
    try {
      _$result =
          _$v ??
          _$StatsResponse._(
            productId: BuiltValueNullFieldError.checkNotNull(
              productId,
              r'StatsResponse',
              'productId',
            ),
            frameKey: frameKey,
            validTime: validTime,
            run: run,
            ageMinutes: ageMinutes,
            units: units,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'StatsResponse',
              'status',
            ),
            statusText: statusText,
            min: min,
            max: max,
            mean: mean,
            p95: p95,
            coveragePct: coveragePct,
            areaKm2: areaKm2,
            thresholds: thresholds.build(),
            attribution: attribution.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'thresholds';
        thresholds.build();
        _$failedField = 'attribution';
        attribution.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StatsResponse',
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
