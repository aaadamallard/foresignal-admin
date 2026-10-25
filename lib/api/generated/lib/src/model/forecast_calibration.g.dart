// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_calibration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastCalibrationLabelEnum _$forecastCalibrationLabelEnum_ok =
    const ForecastCalibrationLabelEnum._('ok');
const ForecastCalibrationLabelEnum _$forecastCalibrationLabelEnum_insufficient =
    const ForecastCalibrationLabelEnum._('insufficient');
const ForecastCalibrationLabelEnum
_$forecastCalibrationLabelEnum_unknownDefaultOpenApi =
    const ForecastCalibrationLabelEnum._('unknownDefaultOpenApi');

ForecastCalibrationLabelEnum _$forecastCalibrationLabelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$forecastCalibrationLabelEnum_ok;
    case 'insufficient':
      return _$forecastCalibrationLabelEnum_insufficient;
    case 'unknownDefaultOpenApi':
      return _$forecastCalibrationLabelEnum_unknownDefaultOpenApi;
    default:
      return _$forecastCalibrationLabelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ForecastCalibrationLabelEnum>
_$forecastCalibrationLabelEnumValues =
    BuiltSet<ForecastCalibrationLabelEnum>(const <ForecastCalibrationLabelEnum>[
      _$forecastCalibrationLabelEnum_ok,
      _$forecastCalibrationLabelEnum_insufficient,
      _$forecastCalibrationLabelEnum_unknownDefaultOpenApi,
    ]);

const ForecastCalibrationMethodEnum _$forecastCalibrationMethodEnum_corp =
    const ForecastCalibrationMethodEnum._('corp');
const ForecastCalibrationMethodEnum _$forecastCalibrationMethodEnum_bins =
    const ForecastCalibrationMethodEnum._('bins');
const ForecastCalibrationMethodEnum
_$forecastCalibrationMethodEnum_unknownDefaultOpenApi =
    const ForecastCalibrationMethodEnum._('unknownDefaultOpenApi');

ForecastCalibrationMethodEnum _$forecastCalibrationMethodEnumValueOf(
  String name,
) {
  switch (name) {
    case 'corp':
      return _$forecastCalibrationMethodEnum_corp;
    case 'bins':
      return _$forecastCalibrationMethodEnum_bins;
    case 'unknownDefaultOpenApi':
      return _$forecastCalibrationMethodEnum_unknownDefaultOpenApi;
    default:
      return _$forecastCalibrationMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ForecastCalibrationMethodEnum>
_$forecastCalibrationMethodEnumValues = BuiltSet<ForecastCalibrationMethodEnum>(
  const <ForecastCalibrationMethodEnum>[
    _$forecastCalibrationMethodEnum_corp,
    _$forecastCalibrationMethodEnum_bins,
    _$forecastCalibrationMethodEnum_unknownDefaultOpenApi,
  ],
);

Serializer<ForecastCalibrationLabelEnum>
_$forecastCalibrationLabelEnumSerializer =
    _$ForecastCalibrationLabelEnumSerializer();
Serializer<ForecastCalibrationMethodEnum>
_$forecastCalibrationMethodEnumSerializer =
    _$ForecastCalibrationMethodEnumSerializer();

class _$ForecastCalibrationLabelEnumSerializer
    implements PrimitiveSerializer<ForecastCalibrationLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficient': 'insufficient',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient': 'insufficient',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastCalibrationLabelEnum];
  @override
  final String wireName = 'ForecastCalibrationLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecastCalibrationLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecastCalibrationLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecastCalibrationLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecastCalibrationMethodEnumSerializer
    implements PrimitiveSerializer<ForecastCalibrationMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'corp': 'corp',
    'bins': 'bins',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'corp': 'corp',
    'bins': 'bins',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastCalibrationMethodEnum];
  @override
  final String wireName = 'ForecastCalibrationMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecastCalibrationMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecastCalibrationMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecastCalibrationMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecastCalibration extends ForecastCalibration {
  @override
  final String? forecasterId;
  @override
  final String? category;
  @override
  final int n;
  @override
  final ForecastCalibrationLabelEnum label;
  @override
  final ForecastCalibrationMethodEnum method;
  @override
  final BuiltList<ForecastCalibrationCurveInner> curve;
  @override
  final BuiltList<ForecastCalibrationBinsInner> bins;
  @override
  final ForecastCalibrationDecomposition? decomposition;
  @override
  final num? sharpness;
  @override
  final String scorerVersion;
  @override
  final DateTime computedAt;

  factory _$ForecastCalibration([
    void Function(ForecastCalibrationBuilder)? updates,
  ]) => (ForecastCalibrationBuilder()..update(updates))._build();

  _$ForecastCalibration._({
    this.forecasterId,
    this.category,
    required this.n,
    required this.label,
    required this.method,
    required this.curve,
    required this.bins,
    this.decomposition,
    this.sharpness,
    required this.scorerVersion,
    required this.computedAt,
  }) : super._();
  @override
  ForecastCalibration rebuild(
    void Function(ForecastCalibrationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastCalibrationBuilder toBuilder() =>
      ForecastCalibrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastCalibration &&
        forecasterId == other.forecasterId &&
        category == other.category &&
        n == other.n &&
        label == other.label &&
        method == other.method &&
        curve == other.curve &&
        bins == other.bins &&
        decomposition == other.decomposition &&
        sharpness == other.sharpness &&
        scorerVersion == other.scorerVersion &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, curve.hashCode);
    _$hash = $jc(_$hash, bins.hashCode);
    _$hash = $jc(_$hash, decomposition.hashCode);
    _$hash = $jc(_$hash, sharpness.hashCode);
    _$hash = $jc(_$hash, scorerVersion.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastCalibration')
          ..add('forecasterId', forecasterId)
          ..add('category', category)
          ..add('n', n)
          ..add('label', label)
          ..add('method', method)
          ..add('curve', curve)
          ..add('bins', bins)
          ..add('decomposition', decomposition)
          ..add('sharpness', sharpness)
          ..add('scorerVersion', scorerVersion)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class ForecastCalibrationBuilder
    implements Builder<ForecastCalibration, ForecastCalibrationBuilder> {
  _$ForecastCalibration? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  ForecastCalibrationLabelEnum? _label;
  ForecastCalibrationLabelEnum? get label => _$this._label;
  set label(ForecastCalibrationLabelEnum? label) => _$this._label = label;

  ForecastCalibrationMethodEnum? _method;
  ForecastCalibrationMethodEnum? get method => _$this._method;
  set method(ForecastCalibrationMethodEnum? method) => _$this._method = method;

  ListBuilder<ForecastCalibrationCurveInner>? _curve;
  ListBuilder<ForecastCalibrationCurveInner> get curve =>
      _$this._curve ??= ListBuilder<ForecastCalibrationCurveInner>();
  set curve(ListBuilder<ForecastCalibrationCurveInner>? curve) =>
      _$this._curve = curve;

  ListBuilder<ForecastCalibrationBinsInner>? _bins;
  ListBuilder<ForecastCalibrationBinsInner> get bins =>
      _$this._bins ??= ListBuilder<ForecastCalibrationBinsInner>();
  set bins(ListBuilder<ForecastCalibrationBinsInner>? bins) =>
      _$this._bins = bins;

  ForecastCalibrationDecompositionBuilder? _decomposition;
  ForecastCalibrationDecompositionBuilder get decomposition =>
      _$this._decomposition ??= ForecastCalibrationDecompositionBuilder();
  set decomposition(ForecastCalibrationDecompositionBuilder? decomposition) =>
      _$this._decomposition = decomposition;

  num? _sharpness;
  num? get sharpness => _$this._sharpness;
  set sharpness(num? sharpness) => _$this._sharpness = sharpness;

  String? _scorerVersion;
  String? get scorerVersion => _$this._scorerVersion;
  set scorerVersion(String? scorerVersion) =>
      _$this._scorerVersion = scorerVersion;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ForecastCalibrationBuilder() {
    ForecastCalibration._defaults(this);
  }

  ForecastCalibrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _category = $v.category;
      _n = $v.n;
      _label = $v.label;
      _method = $v.method;
      _curve = $v.curve.toBuilder();
      _bins = $v.bins.toBuilder();
      _decomposition = $v.decomposition?.toBuilder();
      _sharpness = $v.sharpness;
      _scorerVersion = $v.scorerVersion;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastCalibration other) {
    _$v = other as _$ForecastCalibration;
  }

  @override
  void update(void Function(ForecastCalibrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastCalibration build() => _build();

  _$ForecastCalibration _build() {
    _$ForecastCalibration _$result;
    try {
      _$result =
          _$v ??
          _$ForecastCalibration._(
            forecasterId: forecasterId,
            category: category,
            n: BuiltValueNullFieldError.checkNotNull(
              n,
              r'ForecastCalibration',
              'n',
            ),
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'ForecastCalibration',
              'label',
            ),
            method: BuiltValueNullFieldError.checkNotNull(
              method,
              r'ForecastCalibration',
              'method',
            ),
            curve: curve.build(),
            bins: bins.build(),
            decomposition: _decomposition?.build(),
            sharpness: sharpness,
            scorerVersion: BuiltValueNullFieldError.checkNotNull(
              scorerVersion,
              r'ForecastCalibration',
              'scorerVersion',
            ),
            computedAt: BuiltValueNullFieldError.checkNotNull(
              computedAt,
              r'ForecastCalibration',
              'computedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'curve';
        curve.build();
        _$failedField = 'bins';
        bins.build();
        _$failedField = 'decomposition';
        _decomposition?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastCalibration',
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
