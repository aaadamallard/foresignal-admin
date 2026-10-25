// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecaster_comparison.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecasterComparisonLabelEnum _$forecasterComparisonLabelEnum_ok =
    const ForecasterComparisonLabelEnum._('ok');
const ForecasterComparisonLabelEnum
_$forecasterComparisonLabelEnum_insufficient =
    const ForecasterComparisonLabelEnum._('insufficient');
const ForecasterComparisonLabelEnum
_$forecasterComparisonLabelEnum_unknownDefaultOpenApi =
    const ForecasterComparisonLabelEnum._('unknownDefaultOpenApi');

ForecasterComparisonLabelEnum _$forecasterComparisonLabelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$forecasterComparisonLabelEnum_ok;
    case 'insufficient':
      return _$forecasterComparisonLabelEnum_insufficient;
    case 'unknownDefaultOpenApi':
      return _$forecasterComparisonLabelEnum_unknownDefaultOpenApi;
    default:
      return _$forecasterComparisonLabelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ForecasterComparisonLabelEnum>
_$forecasterComparisonLabelEnumValues = BuiltSet<ForecasterComparisonLabelEnum>(
  const <ForecasterComparisonLabelEnum>[
    _$forecasterComparisonLabelEnum_ok,
    _$forecasterComparisonLabelEnum_insufficient,
    _$forecasterComparisonLabelEnum_unknownDefaultOpenApi,
  ],
);

const ForecasterComparisonMetricEnum _$forecasterComparisonMetricEnum_brier =
    const ForecasterComparisonMetricEnum._('brier');
const ForecasterComparisonMetricEnum
_$forecasterComparisonMetricEnum_unknownDefaultOpenApi =
    const ForecasterComparisonMetricEnum._('unknownDefaultOpenApi');

ForecasterComparisonMetricEnum _$forecasterComparisonMetricEnumValueOf(
  String name,
) {
  switch (name) {
    case 'brier':
      return _$forecasterComparisonMetricEnum_brier;
    case 'unknownDefaultOpenApi':
      return _$forecasterComparisonMetricEnum_unknownDefaultOpenApi;
    default:
      return _$forecasterComparisonMetricEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ForecasterComparisonMetricEnum>
_$forecasterComparisonMetricEnumValues =
    BuiltSet<ForecasterComparisonMetricEnum>(
      const <ForecasterComparisonMetricEnum>[
        _$forecasterComparisonMetricEnum_brier,
        _$forecasterComparisonMetricEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ForecasterComparisonLabelEnum>
_$forecasterComparisonLabelEnumSerializer =
    _$ForecasterComparisonLabelEnumSerializer();
Serializer<ForecasterComparisonMetricEnum>
_$forecasterComparisonMetricEnumSerializer =
    _$ForecasterComparisonMetricEnumSerializer();

class _$ForecasterComparisonLabelEnumSerializer
    implements PrimitiveSerializer<ForecasterComparisonLabelEnum> {
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
  final Iterable<Type> types = const <Type>[ForecasterComparisonLabelEnum];
  @override
  final String wireName = 'ForecasterComparisonLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecasterComparisonLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecasterComparisonLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecasterComparisonLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecasterComparisonMetricEnumSerializer
    implements PrimitiveSerializer<ForecasterComparisonMetricEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'brier': 'brier',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'brier': 'brier',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecasterComparisonMetricEnum];
  @override
  final String wireName = 'ForecasterComparisonMetricEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecasterComparisonMetricEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecasterComparisonMetricEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecasterComparisonMetricEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecasterComparison extends ForecasterComparison {
  @override
  final String a;
  @override
  final String b;
  @override
  final String? category;
  @override
  final int nShared;
  @override
  final ForecasterComparisonLabelEnum label;
  @override
  final ForecasterComparisonMetricEnum metric;
  @override
  final num? meanScoreA;
  @override
  final num? meanScoreB;
  @override
  final num? meanDifference;
  @override
  final StatInterval? interval;
  @override
  final String scorerVersion;
  @override
  final DateTime computedAt;

  factory _$ForecasterComparison([
    void Function(ForecasterComparisonBuilder)? updates,
  ]) => (ForecasterComparisonBuilder()..update(updates))._build();

  _$ForecasterComparison._({
    required this.a,
    required this.b,
    this.category,
    required this.nShared,
    required this.label,
    required this.metric,
    this.meanScoreA,
    this.meanScoreB,
    this.meanDifference,
    this.interval,
    required this.scorerVersion,
    required this.computedAt,
  }) : super._();
  @override
  ForecasterComparison rebuild(
    void Function(ForecasterComparisonBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecasterComparisonBuilder toBuilder() =>
      ForecasterComparisonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecasterComparison &&
        a == other.a &&
        b == other.b &&
        category == other.category &&
        nShared == other.nShared &&
        label == other.label &&
        metric == other.metric &&
        meanScoreA == other.meanScoreA &&
        meanScoreB == other.meanScoreB &&
        meanDifference == other.meanDifference &&
        interval == other.interval &&
        scorerVersion == other.scorerVersion &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, b.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, nShared.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, metric.hashCode);
    _$hash = $jc(_$hash, meanScoreA.hashCode);
    _$hash = $jc(_$hash, meanScoreB.hashCode);
    _$hash = $jc(_$hash, meanDifference.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, scorerVersion.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecasterComparison')
          ..add('a', a)
          ..add('b', b)
          ..add('category', category)
          ..add('nShared', nShared)
          ..add('label', label)
          ..add('metric', metric)
          ..add('meanScoreA', meanScoreA)
          ..add('meanScoreB', meanScoreB)
          ..add('meanDifference', meanDifference)
          ..add('interval', interval)
          ..add('scorerVersion', scorerVersion)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class ForecasterComparisonBuilder
    implements Builder<ForecasterComparison, ForecasterComparisonBuilder> {
  _$ForecasterComparison? _$v;

  String? _a;
  String? get a => _$this._a;
  set a(String? a) => _$this._a = a;

  String? _b;
  String? get b => _$this._b;
  set b(String? b) => _$this._b = b;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _nShared;
  int? get nShared => _$this._nShared;
  set nShared(int? nShared) => _$this._nShared = nShared;

  ForecasterComparisonLabelEnum? _label;
  ForecasterComparisonLabelEnum? get label => _$this._label;
  set label(ForecasterComparisonLabelEnum? label) => _$this._label = label;

  ForecasterComparisonMetricEnum? _metric;
  ForecasterComparisonMetricEnum? get metric => _$this._metric;
  set metric(ForecasterComparisonMetricEnum? metric) => _$this._metric = metric;

  num? _meanScoreA;
  num? get meanScoreA => _$this._meanScoreA;
  set meanScoreA(num? meanScoreA) => _$this._meanScoreA = meanScoreA;

  num? _meanScoreB;
  num? get meanScoreB => _$this._meanScoreB;
  set meanScoreB(num? meanScoreB) => _$this._meanScoreB = meanScoreB;

  num? _meanDifference;
  num? get meanDifference => _$this._meanDifference;
  set meanDifference(num? meanDifference) =>
      _$this._meanDifference = meanDifference;

  StatIntervalBuilder? _interval;
  StatIntervalBuilder get interval =>
      _$this._interval ??= StatIntervalBuilder();
  set interval(StatIntervalBuilder? interval) => _$this._interval = interval;

  String? _scorerVersion;
  String? get scorerVersion => _$this._scorerVersion;
  set scorerVersion(String? scorerVersion) =>
      _$this._scorerVersion = scorerVersion;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ForecasterComparisonBuilder() {
    ForecasterComparison._defaults(this);
  }

  ForecasterComparisonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _a = $v.a;
      _b = $v.b;
      _category = $v.category;
      _nShared = $v.nShared;
      _label = $v.label;
      _metric = $v.metric;
      _meanScoreA = $v.meanScoreA;
      _meanScoreB = $v.meanScoreB;
      _meanDifference = $v.meanDifference;
      _interval = $v.interval?.toBuilder();
      _scorerVersion = $v.scorerVersion;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecasterComparison other) {
    _$v = other as _$ForecasterComparison;
  }

  @override
  void update(void Function(ForecasterComparisonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecasterComparison build() => _build();

  _$ForecasterComparison _build() {
    _$ForecasterComparison _$result;
    try {
      _$result =
          _$v ??
          _$ForecasterComparison._(
            a: BuiltValueNullFieldError.checkNotNull(
              a,
              r'ForecasterComparison',
              'a',
            ),
            b: BuiltValueNullFieldError.checkNotNull(
              b,
              r'ForecasterComparison',
              'b',
            ),
            category: category,
            nShared: BuiltValueNullFieldError.checkNotNull(
              nShared,
              r'ForecasterComparison',
              'nShared',
            ),
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'ForecasterComparison',
              'label',
            ),
            metric: BuiltValueNullFieldError.checkNotNull(
              metric,
              r'ForecasterComparison',
              'metric',
            ),
            meanScoreA: meanScoreA,
            meanScoreB: meanScoreB,
            meanDifference: meanDifference,
            interval: _interval?.build(),
            scorerVersion: BuiltValueNullFieldError.checkNotNull(
              scorerVersion,
              r'ForecasterComparison',
              'scorerVersion',
            ),
            computedAt: BuiltValueNullFieldError.checkNotNull(
              computedAt,
              r'ForecasterComparison',
              'computedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        _interval?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecasterComparison',
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
