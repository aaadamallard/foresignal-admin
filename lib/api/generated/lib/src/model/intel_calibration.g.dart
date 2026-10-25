// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_calibration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelCalibrationScopeEnum _$intelCalibrationScopeEnum_intelEvent =
    const IntelCalibrationScopeEnum._('intelEvent');
const IntelCalibrationScopeEnum _$intelCalibrationScopeEnum_precursorActive =
    const IntelCalibrationScopeEnum._('precursorActive');
const IntelCalibrationScopeEnum
_$intelCalibrationScopeEnum_unknownDefaultOpenApi =
    const IntelCalibrationScopeEnum._('unknownDefaultOpenApi');

IntelCalibrationScopeEnum _$intelCalibrationScopeEnumValueOf(String name) {
  switch (name) {
    case 'intelEvent':
      return _$intelCalibrationScopeEnum_intelEvent;
    case 'precursorActive':
      return _$intelCalibrationScopeEnum_precursorActive;
    case 'unknownDefaultOpenApi':
      return _$intelCalibrationScopeEnum_unknownDefaultOpenApi;
    default:
      return _$intelCalibrationScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelCalibrationScopeEnum> _$intelCalibrationScopeEnumValues =
    BuiltSet<IntelCalibrationScopeEnum>(const <IntelCalibrationScopeEnum>[
      _$intelCalibrationScopeEnum_intelEvent,
      _$intelCalibrationScopeEnum_precursorActive,
      _$intelCalibrationScopeEnum_unknownDefaultOpenApi,
    ]);

Serializer<IntelCalibrationScopeEnum> _$intelCalibrationScopeEnumSerializer =
    _$IntelCalibrationScopeEnumSerializer();

class _$IntelCalibrationScopeEnumSerializer
    implements PrimitiveSerializer<IntelCalibrationScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'intelEvent': 'intel-event',
    'precursorActive': 'precursor-active',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'intel-event': 'intelEvent',
    'precursor-active': 'precursorActive',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelCalibrationScopeEnum];
  @override
  final String wireName = 'IntelCalibrationScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelCalibrationScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelCalibrationScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelCalibrationScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelCalibration extends IntelCalibration {
  @override
  final IntelCalibrationScopeEnum scope;
  @override
  final bool calibrated;
  @override
  final int sampleN;
  @override
  final int minSamples;
  @override
  final num? brier;
  @override
  final BuiltList<IntelCalibrationBinsInner>? bins;
  @override
  final BuiltList<IntelCalibrationCurveInner>? curve;
  @override
  final DateTime? fittedAt;
  @override
  final DateTime? updatedAt;

  factory _$IntelCalibration([
    void Function(IntelCalibrationBuilder)? updates,
  ]) => (IntelCalibrationBuilder()..update(updates))._build();

  _$IntelCalibration._({
    required this.scope,
    required this.calibrated,
    required this.sampleN,
    required this.minSamples,
    this.brier,
    this.bins,
    this.curve,
    this.fittedAt,
    this.updatedAt,
  }) : super._();
  @override
  IntelCalibration rebuild(void Function(IntelCalibrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelCalibrationBuilder toBuilder() =>
      IntelCalibrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelCalibration &&
        scope == other.scope &&
        calibrated == other.calibrated &&
        sampleN == other.sampleN &&
        minSamples == other.minSamples &&
        brier == other.brier &&
        bins == other.bins &&
        curve == other.curve &&
        fittedAt == other.fittedAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, calibrated.hashCode);
    _$hash = $jc(_$hash, sampleN.hashCode);
    _$hash = $jc(_$hash, minSamples.hashCode);
    _$hash = $jc(_$hash, brier.hashCode);
    _$hash = $jc(_$hash, bins.hashCode);
    _$hash = $jc(_$hash, curve.hashCode);
    _$hash = $jc(_$hash, fittedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelCalibration')
          ..add('scope', scope)
          ..add('calibrated', calibrated)
          ..add('sampleN', sampleN)
          ..add('minSamples', minSamples)
          ..add('brier', brier)
          ..add('bins', bins)
          ..add('curve', curve)
          ..add('fittedAt', fittedAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class IntelCalibrationBuilder
    implements Builder<IntelCalibration, IntelCalibrationBuilder> {
  _$IntelCalibration? _$v;

  IntelCalibrationScopeEnum? _scope;
  IntelCalibrationScopeEnum? get scope => _$this._scope;
  set scope(IntelCalibrationScopeEnum? scope) => _$this._scope = scope;

  bool? _calibrated;
  bool? get calibrated => _$this._calibrated;
  set calibrated(bool? calibrated) => _$this._calibrated = calibrated;

  int? _sampleN;
  int? get sampleN => _$this._sampleN;
  set sampleN(int? sampleN) => _$this._sampleN = sampleN;

  int? _minSamples;
  int? get minSamples => _$this._minSamples;
  set minSamples(int? minSamples) => _$this._minSamples = minSamples;

  num? _brier;
  num? get brier => _$this._brier;
  set brier(num? brier) => _$this._brier = brier;

  ListBuilder<IntelCalibrationBinsInner>? _bins;
  ListBuilder<IntelCalibrationBinsInner> get bins =>
      _$this._bins ??= ListBuilder<IntelCalibrationBinsInner>();
  set bins(ListBuilder<IntelCalibrationBinsInner>? bins) => _$this._bins = bins;

  ListBuilder<IntelCalibrationCurveInner>? _curve;
  ListBuilder<IntelCalibrationCurveInner> get curve =>
      _$this._curve ??= ListBuilder<IntelCalibrationCurveInner>();
  set curve(ListBuilder<IntelCalibrationCurveInner>? curve) =>
      _$this._curve = curve;

  DateTime? _fittedAt;
  DateTime? get fittedAt => _$this._fittedAt;
  set fittedAt(DateTime? fittedAt) => _$this._fittedAt = fittedAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  IntelCalibrationBuilder() {
    IntelCalibration._defaults(this);
  }

  IntelCalibrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scope = $v.scope;
      _calibrated = $v.calibrated;
      _sampleN = $v.sampleN;
      _minSamples = $v.minSamples;
      _brier = $v.brier;
      _bins = $v.bins?.toBuilder();
      _curve = $v.curve?.toBuilder();
      _fittedAt = $v.fittedAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelCalibration other) {
    _$v = other as _$IntelCalibration;
  }

  @override
  void update(void Function(IntelCalibrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelCalibration build() => _build();

  _$IntelCalibration _build() {
    _$IntelCalibration _$result;
    try {
      _$result =
          _$v ??
          _$IntelCalibration._(
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'IntelCalibration',
              'scope',
            ),
            calibrated: BuiltValueNullFieldError.checkNotNull(
              calibrated,
              r'IntelCalibration',
              'calibrated',
            ),
            sampleN: BuiltValueNullFieldError.checkNotNull(
              sampleN,
              r'IntelCalibration',
              'sampleN',
            ),
            minSamples: BuiltValueNullFieldError.checkNotNull(
              minSamples,
              r'IntelCalibration',
              'minSamples',
            ),
            brier: brier,
            bins: _bins?.build(),
            curve: _curve?.build(),
            fittedAt: fittedAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bins';
        _bins?.build();
        _$failedField = 'curve';
        _curve?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelCalibration',
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
