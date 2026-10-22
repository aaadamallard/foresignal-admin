// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastHistoryTypeEnum _$forecastHistoryTypeEnum_binary =
    const ForecastHistoryTypeEnum._('binary');
const ForecastHistoryTypeEnum _$forecastHistoryTypeEnum_multiple =
    const ForecastHistoryTypeEnum._('multiple');
const ForecastHistoryTypeEnum _$forecastHistoryTypeEnum_ordered =
    const ForecastHistoryTypeEnum._('ordered');
const ForecastHistoryTypeEnum _$forecastHistoryTypeEnum_numeric =
    const ForecastHistoryTypeEnum._('numeric');

ForecastHistoryTypeEnum _$forecastHistoryTypeEnumValueOf(String name) {
  switch (name) {
    case 'binary':
      return _$forecastHistoryTypeEnum_binary;
    case 'multiple':
      return _$forecastHistoryTypeEnum_multiple;
    case 'ordered':
      return _$forecastHistoryTypeEnum_ordered;
    case 'numeric':
      return _$forecastHistoryTypeEnum_numeric;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastHistoryTypeEnum> _$forecastHistoryTypeEnumValues =
    BuiltSet<ForecastHistoryTypeEnum>(const <ForecastHistoryTypeEnum>[
  _$forecastHistoryTypeEnum_binary,
  _$forecastHistoryTypeEnum_multiple,
  _$forecastHistoryTypeEnum_ordered,
  _$forecastHistoryTypeEnum_numeric,
]);

const ForecastHistoryStepEnum _$forecastHistoryStepEnum_P1D =
    const ForecastHistoryStepEnum._('P1D');

ForecastHistoryStepEnum _$forecastHistoryStepEnumValueOf(String name) {
  switch (name) {
    case 'P1D':
      return _$forecastHistoryStepEnum_P1D;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastHistoryStepEnum> _$forecastHistoryStepEnumValues =
    BuiltSet<ForecastHistoryStepEnum>(const <ForecastHistoryStepEnum>[
  _$forecastHistoryStepEnum_P1D,
]);

Serializer<ForecastHistoryTypeEnum> _$forecastHistoryTypeEnumSerializer =
    _$ForecastHistoryTypeEnumSerializer();
Serializer<ForecastHistoryStepEnum> _$forecastHistoryStepEnumSerializer =
    _$ForecastHistoryStepEnumSerializer();

class _$ForecastHistoryTypeEnumSerializer
    implements PrimitiveSerializer<ForecastHistoryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'binary': 'binary',
    'multiple': 'multiple',
    'ordered': 'ordered',
    'numeric': 'numeric',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'binary': 'binary',
    'multiple': 'multiple',
    'ordered': 'ordered',
    'numeric': 'numeric',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastHistoryTypeEnum];
  @override
  final String wireName = 'ForecastHistoryTypeEnum';

  @override
  Object serialize(Serializers serializers, ForecastHistoryTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastHistoryTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastHistoryTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastHistoryStepEnumSerializer
    implements PrimitiveSerializer<ForecastHistoryStepEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'P1D': 'P1D',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'P1D': 'P1D',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastHistoryStepEnum];
  @override
  final String wireName = 'ForecastHistoryStepEnum';

  @override
  Object serialize(Serializers serializers, ForecastHistoryStepEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastHistoryStepEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastHistoryStepEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastHistory extends ForecastHistory {
  @override
  final String questionId;
  @override
  final ForecastHistoryTypeEnum type;
  @override
  final ForecastHistoryStepEnum step;
  @override
  final Date? from;
  @override
  final Date? to;
  @override
  final BuiltList<ForecastHistorySeriesInner> series;

  factory _$ForecastHistory([void Function(ForecastHistoryBuilder)? updates]) =>
      (ForecastHistoryBuilder()..update(updates))._build();

  _$ForecastHistory._(
      {required this.questionId,
      required this.type,
      required this.step,
      this.from,
      this.to,
      required this.series})
      : super._();
  @override
  ForecastHistory rebuild(void Function(ForecastHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastHistoryBuilder toBuilder() => ForecastHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastHistory &&
        questionId == other.questionId &&
        type == other.type &&
        step == other.step &&
        from == other.from &&
        to == other.to &&
        series == other.series;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastHistory')
          ..add('questionId', questionId)
          ..add('type', type)
          ..add('step', step)
          ..add('from', from)
          ..add('to', to)
          ..add('series', series))
        .toString();
  }
}

class ForecastHistoryBuilder
    implements Builder<ForecastHistory, ForecastHistoryBuilder> {
  _$ForecastHistory? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  ForecastHistoryTypeEnum? _type;
  ForecastHistoryTypeEnum? get type => _$this._type;
  set type(ForecastHistoryTypeEnum? type) => _$this._type = type;

  ForecastHistoryStepEnum? _step;
  ForecastHistoryStepEnum? get step => _$this._step;
  set step(ForecastHistoryStepEnum? step) => _$this._step = step;

  Date? _from;
  Date? get from => _$this._from;
  set from(Date? from) => _$this._from = from;

  Date? _to;
  Date? get to => _$this._to;
  set to(Date? to) => _$this._to = to;

  ListBuilder<ForecastHistorySeriesInner>? _series;
  ListBuilder<ForecastHistorySeriesInner> get series =>
      _$this._series ??= ListBuilder<ForecastHistorySeriesInner>();
  set series(ListBuilder<ForecastHistorySeriesInner>? series) =>
      _$this._series = series;

  ForecastHistoryBuilder() {
    ForecastHistory._defaults(this);
  }

  ForecastHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _type = $v.type;
      _step = $v.step;
      _from = $v.from;
      _to = $v.to;
      _series = $v.series.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastHistory other) {
    _$v = other as _$ForecastHistory;
  }

  @override
  void update(void Function(ForecastHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastHistory build() => _build();

  _$ForecastHistory _build() {
    _$ForecastHistory _$result;
    try {
      _$result = _$v ??
          _$ForecastHistory._(
            questionId: BuiltValueNullFieldError.checkNotNull(
                questionId, r'ForecastHistory', 'questionId'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ForecastHistory', 'type'),
            step: BuiltValueNullFieldError.checkNotNull(
                step, r'ForecastHistory', 'step'),
            from: from,
            to: to,
            series: series.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        series.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
