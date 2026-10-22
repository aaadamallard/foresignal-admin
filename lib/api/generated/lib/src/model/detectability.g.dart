// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detectability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DetectabilityMethodsEnum _$detectabilityMethodsEnum_captureRecapture =
    const DetectabilityMethodsEnum._('captureRecapture');
const DetectabilityMethodsEnum _$detectabilityMethodsEnum_presenceProxy =
    const DetectabilityMethodsEnum._('presenceProxy');
const DetectabilityMethodsEnum _$detectabilityMethodsEnum_receiverRange =
    const DetectabilityMethodsEnum._('receiverRange');
const DetectabilityMethodsEnum _$detectabilityMethodsEnum_declared =
    const DetectabilityMethodsEnum._('declared');
const DetectabilityMethodsEnum _$detectabilityMethodsEnum_platformVolume =
    const DetectabilityMethodsEnum._('platformVolume');

DetectabilityMethodsEnum _$detectabilityMethodsEnumValueOf(String name) {
  switch (name) {
    case 'captureRecapture':
      return _$detectabilityMethodsEnum_captureRecapture;
    case 'presenceProxy':
      return _$detectabilityMethodsEnum_presenceProxy;
    case 'receiverRange':
      return _$detectabilityMethodsEnum_receiverRange;
    case 'declared':
      return _$detectabilityMethodsEnum_declared;
    case 'platformVolume':
      return _$detectabilityMethodsEnum_platformVolume;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DetectabilityMethodsEnum> _$detectabilityMethodsEnumValues =
    BuiltSet<DetectabilityMethodsEnum>(const <DetectabilityMethodsEnum>[
  _$detectabilityMethodsEnum_captureRecapture,
  _$detectabilityMethodsEnum_presenceProxy,
  _$detectabilityMethodsEnum_receiverRange,
  _$detectabilityMethodsEnum_declared,
  _$detectabilityMethodsEnum_platformVolume,
]);

Serializer<DetectabilityMethodsEnum> _$detectabilityMethodsEnumSerializer =
    _$DetectabilityMethodsEnumSerializer();

class _$DetectabilityMethodsEnumSerializer
    implements PrimitiveSerializer<DetectabilityMethodsEnum> {
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
  final Iterable<Type> types = const <Type>[DetectabilityMethodsEnum];
  @override
  final String wireName = 'DetectabilityMethodsEnum';

  @override
  Object serialize(Serializers serializers, DetectabilityMethodsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DetectabilityMethodsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DetectabilityMethodsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Detectability extends Detectability {
  @override
  final String family;
  @override
  final String? regionCode;
  @override
  final String? cell;
  @override
  final String? band;
  @override
  final DateTime at;
  @override
  final num p;
  @override
  final num lo;
  @override
  final num hi;
  @override
  final BuiltList<DetectabilityMethodsEnum> methods;
  @override
  final BuiltList<String> sources;
  @override
  final ConfidenceLevel? confidence;
  @override
  final bool absenceOk;
  @override
  final String? reason;
  @override
  final BuiltList<ObservabilityEstimate>? estimates;

  factory _$Detectability([void Function(DetectabilityBuilder)? updates]) =>
      (DetectabilityBuilder()..update(updates))._build();

  _$Detectability._(
      {required this.family,
      this.regionCode,
      this.cell,
      this.band,
      required this.at,
      required this.p,
      required this.lo,
      required this.hi,
      required this.methods,
      required this.sources,
      this.confidence,
      required this.absenceOk,
      this.reason,
      this.estimates})
      : super._();
  @override
  Detectability rebuild(void Function(DetectabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetectabilityBuilder toBuilder() => DetectabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Detectability &&
        family == other.family &&
        regionCode == other.regionCode &&
        cell == other.cell &&
        band == other.band &&
        at == other.at &&
        p == other.p &&
        lo == other.lo &&
        hi == other.hi &&
        methods == other.methods &&
        sources == other.sources &&
        confidence == other.confidence &&
        absenceOk == other.absenceOk &&
        reason == other.reason &&
        estimates == other.estimates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, band.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, p.hashCode);
    _$hash = $jc(_$hash, lo.hashCode);
    _$hash = $jc(_$hash, hi.hashCode);
    _$hash = $jc(_$hash, methods.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, absenceOk.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, estimates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Detectability')
          ..add('family', family)
          ..add('regionCode', regionCode)
          ..add('cell', cell)
          ..add('band', band)
          ..add('at', at)
          ..add('p', p)
          ..add('lo', lo)
          ..add('hi', hi)
          ..add('methods', methods)
          ..add('sources', sources)
          ..add('confidence', confidence)
          ..add('absenceOk', absenceOk)
          ..add('reason', reason)
          ..add('estimates', estimates))
        .toString();
  }
}

class DetectabilityBuilder
    implements Builder<Detectability, DetectabilityBuilder> {
  _$Detectability? _$v;

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

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  num? _p;
  num? get p => _$this._p;
  set p(num? p) => _$this._p = p;

  num? _lo;
  num? get lo => _$this._lo;
  set lo(num? lo) => _$this._lo = lo;

  num? _hi;
  num? get hi => _$this._hi;
  set hi(num? hi) => _$this._hi = hi;

  ListBuilder<DetectabilityMethodsEnum>? _methods;
  ListBuilder<DetectabilityMethodsEnum> get methods =>
      _$this._methods ??= ListBuilder<DetectabilityMethodsEnum>();
  set methods(ListBuilder<DetectabilityMethodsEnum>? methods) =>
      _$this._methods = methods;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ConfidenceLevel? _confidence;
  ConfidenceLevel? get confidence => _$this._confidence;
  set confidence(ConfidenceLevel? confidence) =>
      _$this._confidence = confidence;

  bool? _absenceOk;
  bool? get absenceOk => _$this._absenceOk;
  set absenceOk(bool? absenceOk) => _$this._absenceOk = absenceOk;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ListBuilder<ObservabilityEstimate>? _estimates;
  ListBuilder<ObservabilityEstimate> get estimates =>
      _$this._estimates ??= ListBuilder<ObservabilityEstimate>();
  set estimates(ListBuilder<ObservabilityEstimate>? estimates) =>
      _$this._estimates = estimates;

  DetectabilityBuilder() {
    Detectability._defaults(this);
  }

  DetectabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _family = $v.family;
      _regionCode = $v.regionCode;
      _cell = $v.cell;
      _band = $v.band;
      _at = $v.at;
      _p = $v.p;
      _lo = $v.lo;
      _hi = $v.hi;
      _methods = $v.methods.toBuilder();
      _sources = $v.sources.toBuilder();
      _confidence = $v.confidence;
      _absenceOk = $v.absenceOk;
      _reason = $v.reason;
      _estimates = $v.estimates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Detectability other) {
    _$v = other as _$Detectability;
  }

  @override
  void update(void Function(DetectabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Detectability build() => _build();

  _$Detectability _build() {
    _$Detectability _$result;
    try {
      _$result = _$v ??
          _$Detectability._(
            family: BuiltValueNullFieldError.checkNotNull(
                family, r'Detectability', 'family'),
            regionCode: regionCode,
            cell: cell,
            band: band,
            at: BuiltValueNullFieldError.checkNotNull(
                at, r'Detectability', 'at'),
            p: BuiltValueNullFieldError.checkNotNull(p, r'Detectability', 'p'),
            lo: BuiltValueNullFieldError.checkNotNull(
                lo, r'Detectability', 'lo'),
            hi: BuiltValueNullFieldError.checkNotNull(
                hi, r'Detectability', 'hi'),
            methods: methods.build(),
            sources: sources.build(),
            confidence: confidence,
            absenceOk: BuiltValueNullFieldError.checkNotNull(
                absenceOk, r'Detectability', 'absenceOk'),
            reason: reason,
            estimates: _estimates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'methods';
        methods.build();
        _$failedField = 'sources';
        sources.build();

        _$failedField = 'estimates';
        _estimates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Detectability', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
