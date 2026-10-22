// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observability_estimate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ObservabilityEstimateMethodEnum
_$observabilityEstimateMethodEnum_captureRecapture =
    const ObservabilityEstimateMethodEnum._('captureRecapture');
const ObservabilityEstimateMethodEnum
_$observabilityEstimateMethodEnum_presenceProxy =
    const ObservabilityEstimateMethodEnum._('presenceProxy');
const ObservabilityEstimateMethodEnum
_$observabilityEstimateMethodEnum_receiverRange =
    const ObservabilityEstimateMethodEnum._('receiverRange');
const ObservabilityEstimateMethodEnum
_$observabilityEstimateMethodEnum_declared =
    const ObservabilityEstimateMethodEnum._('declared');
const ObservabilityEstimateMethodEnum
_$observabilityEstimateMethodEnum_platformVolume =
    const ObservabilityEstimateMethodEnum._('platformVolume');

ObservabilityEstimateMethodEnum _$observabilityEstimateMethodEnumValueOf(
  String name,
) {
  switch (name) {
    case 'captureRecapture':
      return _$observabilityEstimateMethodEnum_captureRecapture;
    case 'presenceProxy':
      return _$observabilityEstimateMethodEnum_presenceProxy;
    case 'receiverRange':
      return _$observabilityEstimateMethodEnum_receiverRange;
    case 'declared':
      return _$observabilityEstimateMethodEnum_declared;
    case 'platformVolume':
      return _$observabilityEstimateMethodEnum_platformVolume;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ObservabilityEstimateMethodEnum>
_$observabilityEstimateMethodEnumValues =
    BuiltSet<ObservabilityEstimateMethodEnum>(
      const <ObservabilityEstimateMethodEnum>[
        _$observabilityEstimateMethodEnum_captureRecapture,
        _$observabilityEstimateMethodEnum_presenceProxy,
        _$observabilityEstimateMethodEnum_receiverRange,
        _$observabilityEstimateMethodEnum_declared,
        _$observabilityEstimateMethodEnum_platformVolume,
      ],
    );

Serializer<ObservabilityEstimateMethodEnum>
_$observabilityEstimateMethodEnumSerializer =
    _$ObservabilityEstimateMethodEnumSerializer();

class _$ObservabilityEstimateMethodEnumSerializer
    implements PrimitiveSerializer<ObservabilityEstimateMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'captureRecapture': 'capture-recapture',
    'presenceProxy': 'presence-proxy',
    'receiverRange': 'receiver-range',
    'declared': 'declared',
    'platformVolume': 'platform-volume',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'capture-recapture': 'captureRecapture',
    'presence-proxy': 'presenceProxy',
    'receiver-range': 'receiverRange',
    'declared': 'declared',
    'platform-volume': 'platformVolume',
  };

  @override
  final Iterable<Type> types = const <Type>[ObservabilityEstimateMethodEnum];
  @override
  final String wireName = 'ObservabilityEstimateMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    ObservabilityEstimateMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ObservabilityEstimateMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ObservabilityEstimateMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ObservabilityEstimate extends ObservabilityEstimate {
  @override
  final String sourceId;
  @override
  final String family;
  @override
  final String? regionCode;
  @override
  final String? cell;
  @override
  final String? band;
  @override
  final DateTime periodStart;
  @override
  final DateTime periodEnd;
  @override
  final num pDetect;
  @override
  final num lo;
  @override
  final num hi;
  @override
  final int n;
  @override
  final ObservabilityEstimateMethodEnum method;
  @override
  final ConfidenceLevel? confidence;
  @override
  final DateTime computedAt;
  @override
  final String? manifestId;

  factory _$ObservabilityEstimate([
    void Function(ObservabilityEstimateBuilder)? updates,
  ]) => (ObservabilityEstimateBuilder()..update(updates))._build();

  _$ObservabilityEstimate._({
    required this.sourceId,
    required this.family,
    this.regionCode,
    this.cell,
    this.band,
    required this.periodStart,
    required this.periodEnd,
    required this.pDetect,
    required this.lo,
    required this.hi,
    required this.n,
    required this.method,
    this.confidence,
    required this.computedAt,
    this.manifestId,
  }) : super._();
  @override
  ObservabilityEstimate rebuild(
    void Function(ObservabilityEstimateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ObservabilityEstimateBuilder toBuilder() =>
      ObservabilityEstimateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObservabilityEstimate &&
        sourceId == other.sourceId &&
        family == other.family &&
        regionCode == other.regionCode &&
        cell == other.cell &&
        band == other.band &&
        periodStart == other.periodStart &&
        periodEnd == other.periodEnd &&
        pDetect == other.pDetect &&
        lo == other.lo &&
        hi == other.hi &&
        n == other.n &&
        method == other.method &&
        confidence == other.confidence &&
        computedAt == other.computedAt &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, band.hashCode);
    _$hash = $jc(_$hash, periodStart.hashCode);
    _$hash = $jc(_$hash, periodEnd.hashCode);
    _$hash = $jc(_$hash, pDetect.hashCode);
    _$hash = $jc(_$hash, lo.hashCode);
    _$hash = $jc(_$hash, hi.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObservabilityEstimate')
          ..add('sourceId', sourceId)
          ..add('family', family)
          ..add('regionCode', regionCode)
          ..add('cell', cell)
          ..add('band', band)
          ..add('periodStart', periodStart)
          ..add('periodEnd', periodEnd)
          ..add('pDetect', pDetect)
          ..add('lo', lo)
          ..add('hi', hi)
          ..add('n', n)
          ..add('method', method)
          ..add('confidence', confidence)
          ..add('computedAt', computedAt)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class ObservabilityEstimateBuilder
    implements Builder<ObservabilityEstimate, ObservabilityEstimateBuilder> {
  _$ObservabilityEstimate? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  String? _cell;
  String? get cell => _$this._cell;
  set cell(String? cell) => _$this._cell = cell;

  String? _band;
  String? get band => _$this._band;
  set band(String? band) => _$this._band = band;

  DateTime? _periodStart;
  DateTime? get periodStart => _$this._periodStart;
  set periodStart(DateTime? periodStart) => _$this._periodStart = periodStart;

  DateTime? _periodEnd;
  DateTime? get periodEnd => _$this._periodEnd;
  set periodEnd(DateTime? periodEnd) => _$this._periodEnd = periodEnd;

  num? _pDetect;
  num? get pDetect => _$this._pDetect;
  set pDetect(num? pDetect) => _$this._pDetect = pDetect;

  num? _lo;
  num? get lo => _$this._lo;
  set lo(num? lo) => _$this._lo = lo;

  num? _hi;
  num? get hi => _$this._hi;
  set hi(num? hi) => _$this._hi = hi;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  ObservabilityEstimateMethodEnum? _method;
  ObservabilityEstimateMethodEnum? get method => _$this._method;
  set method(ObservabilityEstimateMethodEnum? method) =>
      _$this._method = method;

  ConfidenceLevel? _confidence;
  ConfidenceLevel? get confidence => _$this._confidence;
  set confidence(ConfidenceLevel? confidence) =>
      _$this._confidence = confidence;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ObservabilityEstimateBuilder() {
    ObservabilityEstimate._defaults(this);
  }

  ObservabilityEstimateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _family = $v.family;
      _regionCode = $v.regionCode;
      _cell = $v.cell;
      _band = $v.band;
      _periodStart = $v.periodStart;
      _periodEnd = $v.periodEnd;
      _pDetect = $v.pDetect;
      _lo = $v.lo;
      _hi = $v.hi;
      _n = $v.n;
      _method = $v.method;
      _confidence = $v.confidence;
      _computedAt = $v.computedAt;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObservabilityEstimate other) {
    _$v = other as _$ObservabilityEstimate;
  }

  @override
  void update(void Function(ObservabilityEstimateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObservabilityEstimate build() => _build();

  _$ObservabilityEstimate _build() {
    final _$result =
        _$v ??
        _$ObservabilityEstimate._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'ObservabilityEstimate',
            'sourceId',
          ),
          family: BuiltValueNullFieldError.checkNotNull(
            family,
            r'ObservabilityEstimate',
            'family',
          ),
          regionCode: regionCode,
          cell: cell,
          band: band,
          periodStart: BuiltValueNullFieldError.checkNotNull(
            periodStart,
            r'ObservabilityEstimate',
            'periodStart',
          ),
          periodEnd: BuiltValueNullFieldError.checkNotNull(
            periodEnd,
            r'ObservabilityEstimate',
            'periodEnd',
          ),
          pDetect: BuiltValueNullFieldError.checkNotNull(
            pDetect,
            r'ObservabilityEstimate',
            'pDetect',
          ),
          lo: BuiltValueNullFieldError.checkNotNull(
            lo,
            r'ObservabilityEstimate',
            'lo',
          ),
          hi: BuiltValueNullFieldError.checkNotNull(
            hi,
            r'ObservabilityEstimate',
            'hi',
          ),
          n: BuiltValueNullFieldError.checkNotNull(
            n,
            r'ObservabilityEstimate',
            'n',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'ObservabilityEstimate',
            'method',
          ),
          confidence: confidence,
          computedAt: BuiltValueNullFieldError.checkNotNull(
            computedAt,
            r'ObservabilityEstimate',
            'computedAt',
          ),
          manifestId: manifestId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
