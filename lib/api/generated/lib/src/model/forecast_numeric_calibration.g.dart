// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_numeric_calibration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastNumericCalibrationTypeEnum
    _$forecastNumericCalibrationTypeEnum_numeric =
    const ForecastNumericCalibrationTypeEnum._('numeric');

ForecastNumericCalibrationTypeEnum _$forecastNumericCalibrationTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'numeric':
      return _$forecastNumericCalibrationTypeEnum_numeric;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastNumericCalibrationTypeEnum>
    _$forecastNumericCalibrationTypeEnumValues = BuiltSet<
        ForecastNumericCalibrationTypeEnum>(const <ForecastNumericCalibrationTypeEnum>[
  _$forecastNumericCalibrationTypeEnum_numeric,
]);

const ForecastNumericCalibrationLabelEnum
    _$forecastNumericCalibrationLabelEnum_ok =
    const ForecastNumericCalibrationLabelEnum._('ok');
const ForecastNumericCalibrationLabelEnum
    _$forecastNumericCalibrationLabelEnum_insufficient =
    const ForecastNumericCalibrationLabelEnum._('insufficient');

ForecastNumericCalibrationLabelEnum
    _$forecastNumericCalibrationLabelEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$forecastNumericCalibrationLabelEnum_ok;
    case 'insufficient':
      return _$forecastNumericCalibrationLabelEnum_insufficient;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastNumericCalibrationLabelEnum>
    _$forecastNumericCalibrationLabelEnumValues = BuiltSet<
        ForecastNumericCalibrationLabelEnum>(const <ForecastNumericCalibrationLabelEnum>[
  _$forecastNumericCalibrationLabelEnum_ok,
  _$forecastNumericCalibrationLabelEnum_insufficient,
]);

Serializer<ForecastNumericCalibrationTypeEnum>
    _$forecastNumericCalibrationTypeEnumSerializer =
    _$ForecastNumericCalibrationTypeEnumSerializer();
Serializer<ForecastNumericCalibrationLabelEnum>
    _$forecastNumericCalibrationLabelEnumSerializer =
    _$ForecastNumericCalibrationLabelEnumSerializer();

class _$ForecastNumericCalibrationTypeEnumSerializer
    implements PrimitiveSerializer<ForecastNumericCalibrationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'numeric': 'numeric',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'numeric': 'numeric',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastNumericCalibrationTypeEnum];
  @override
  final String wireName = 'ForecastNumericCalibrationTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ForecastNumericCalibrationTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastNumericCalibrationTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastNumericCalibrationTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastNumericCalibrationLabelEnumSerializer
    implements PrimitiveSerializer<ForecastNumericCalibrationLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ForecastNumericCalibrationLabelEnum
  ];
  @override
  final String wireName = 'ForecastNumericCalibrationLabelEnum';

  @override
  Object serialize(
          Serializers serializers, ForecastNumericCalibrationLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastNumericCalibrationLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastNumericCalibrationLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastNumericCalibration extends ForecastNumericCalibration {
  @override
  final String? forecasterId;
  @override
  final String? category;
  @override
  final ForecastNumericCalibrationTypeEnum type;
  @override
  final int n;
  @override
  final ForecastNumericCalibrationLabelEnum label;
  @override
  final BuiltList<ForecastNumericCalibrationQuantileReliabilityInner>
      quantileReliability;
  @override
  final ForecastNumericCalibrationPit pit;
  @override
  final ForecastNumericCalibrationSummary? summary;
  @override
  final String scorerVersion;
  @override
  final DateTime computedAt;

  factory _$ForecastNumericCalibration(
          [void Function(ForecastNumericCalibrationBuilder)? updates]) =>
      (ForecastNumericCalibrationBuilder()..update(updates))._build();

  _$ForecastNumericCalibration._(
      {this.forecasterId,
      this.category,
      required this.type,
      required this.n,
      required this.label,
      required this.quantileReliability,
      required this.pit,
      this.summary,
      required this.scorerVersion,
      required this.computedAt})
      : super._();
  @override
  ForecastNumericCalibration rebuild(
          void Function(ForecastNumericCalibrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastNumericCalibrationBuilder toBuilder() =>
      ForecastNumericCalibrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastNumericCalibration &&
        forecasterId == other.forecasterId &&
        category == other.category &&
        type == other.type &&
        n == other.n &&
        label == other.label &&
        quantileReliability == other.quantileReliability &&
        pit == other.pit &&
        summary == other.summary &&
        scorerVersion == other.scorerVersion &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, quantileReliability.hashCode);
    _$hash = $jc(_$hash, pit.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, scorerVersion.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastNumericCalibration')
          ..add('forecasterId', forecasterId)
          ..add('category', category)
          ..add('type', type)
          ..add('n', n)
          ..add('label', label)
          ..add('quantileReliability', quantileReliability)
          ..add('pit', pit)
          ..add('summary', summary)
          ..add('scorerVersion', scorerVersion)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class ForecastNumericCalibrationBuilder
    implements
        Builder<ForecastNumericCalibration, ForecastNumericCalibrationBuilder> {
  _$ForecastNumericCalibration? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  ForecastNumericCalibrationTypeEnum? _type;
  ForecastNumericCalibrationTypeEnum? get type => _$this._type;
  set type(ForecastNumericCalibrationTypeEnum? type) => _$this._type = type;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  ForecastNumericCalibrationLabelEnum? _label;
  ForecastNumericCalibrationLabelEnum? get label => _$this._label;
  set label(ForecastNumericCalibrationLabelEnum? label) =>
      _$this._label = label;

  ListBuilder<ForecastNumericCalibrationQuantileReliabilityInner>?
      _quantileReliability;
  ListBuilder<ForecastNumericCalibrationQuantileReliabilityInner>
      get quantileReliability => _$this._quantileReliability ??=
          ListBuilder<ForecastNumericCalibrationQuantileReliabilityInner>();
  set quantileReliability(
          ListBuilder<ForecastNumericCalibrationQuantileReliabilityInner>?
              quantileReliability) =>
      _$this._quantileReliability = quantileReliability;

  ForecastNumericCalibrationPitBuilder? _pit;
  ForecastNumericCalibrationPitBuilder get pit =>
      _$this._pit ??= ForecastNumericCalibrationPitBuilder();
  set pit(ForecastNumericCalibrationPitBuilder? pit) => _$this._pit = pit;

  ForecastNumericCalibrationSummaryBuilder? _summary;
  ForecastNumericCalibrationSummaryBuilder get summary =>
      _$this._summary ??= ForecastNumericCalibrationSummaryBuilder();
  set summary(ForecastNumericCalibrationSummaryBuilder? summary) =>
      _$this._summary = summary;

  String? _scorerVersion;
  String? get scorerVersion => _$this._scorerVersion;
  set scorerVersion(String? scorerVersion) =>
      _$this._scorerVersion = scorerVersion;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ForecastNumericCalibrationBuilder() {
    ForecastNumericCalibration._defaults(this);
  }

  ForecastNumericCalibrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _category = $v.category;
      _type = $v.type;
      _n = $v.n;
      _label = $v.label;
      _quantileReliability = $v.quantileReliability.toBuilder();
      _pit = $v.pit.toBuilder();
      _summary = $v.summary?.toBuilder();
      _scorerVersion = $v.scorerVersion;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastNumericCalibration other) {
    _$v = other as _$ForecastNumericCalibration;
  }

  @override
  void update(void Function(ForecastNumericCalibrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastNumericCalibration build() => _build();

  _$ForecastNumericCalibration _build() {
    _$ForecastNumericCalibration _$result;
    try {
      _$result = _$v ??
          _$ForecastNumericCalibration._(
            forecasterId: forecasterId,
            category: category,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ForecastNumericCalibration', 'type'),
            n: BuiltValueNullFieldError.checkNotNull(
                n, r'ForecastNumericCalibration', 'n'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'ForecastNumericCalibration', 'label'),
            quantileReliability: quantileReliability.build(),
            pit: pit.build(),
            summary: _summary?.build(),
            scorerVersion: BuiltValueNullFieldError.checkNotNull(
                scorerVersion, r'ForecastNumericCalibration', 'scorerVersion'),
            computedAt: BuiltValueNullFieldError.checkNotNull(
                computedAt, r'ForecastNumericCalibration', 'computedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quantileReliability';
        quantileReliability.build();
        _$failedField = 'pit';
        pit.build();
        _$failedField = 'summary';
        _summary?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastNumericCalibration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
