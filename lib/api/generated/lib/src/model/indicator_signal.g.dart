// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_signal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorSignalTypeEnum _$indicatorSignalTypeEnum_rule =
    const IndicatorSignalTypeEnum._('rule');
const IndicatorSignalTypeEnum _$indicatorSignalTypeEnum_precursor =
    const IndicatorSignalTypeEnum._('precursor');
const IndicatorSignalTypeEnum _$indicatorSignalTypeEnum_series =
    const IndicatorSignalTypeEnum._('series');
const IndicatorSignalTypeEnum _$indicatorSignalTypeEnum_intelEvent =
    const IndicatorSignalTypeEnum._('intelEvent');
const IndicatorSignalTypeEnum _$indicatorSignalTypeEnum_situation =
    const IndicatorSignalTypeEnum._('situation');
const IndicatorSignalTypeEnum _$indicatorSignalTypeEnum_question =
    const IndicatorSignalTypeEnum._('question');
const IndicatorSignalTypeEnum _$indicatorSignalTypeEnum_manual =
    const IndicatorSignalTypeEnum._('manual');
const IndicatorSignalTypeEnum _$indicatorSignalTypeEnum_unknownDefaultOpenApi =
    const IndicatorSignalTypeEnum._('unknownDefaultOpenApi');

IndicatorSignalTypeEnum _$indicatorSignalTypeEnumValueOf(String name) {
  switch (name) {
    case 'rule':
      return _$indicatorSignalTypeEnum_rule;
    case 'precursor':
      return _$indicatorSignalTypeEnum_precursor;
    case 'series':
      return _$indicatorSignalTypeEnum_series;
    case 'intelEvent':
      return _$indicatorSignalTypeEnum_intelEvent;
    case 'situation':
      return _$indicatorSignalTypeEnum_situation;
    case 'question':
      return _$indicatorSignalTypeEnum_question;
    case 'manual':
      return _$indicatorSignalTypeEnum_manual;
    case 'unknownDefaultOpenApi':
      return _$indicatorSignalTypeEnum_unknownDefaultOpenApi;
    default:
      return _$indicatorSignalTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IndicatorSignalTypeEnum> _$indicatorSignalTypeEnumValues =
    BuiltSet<IndicatorSignalTypeEnum>(const <IndicatorSignalTypeEnum>[
      _$indicatorSignalTypeEnum_rule,
      _$indicatorSignalTypeEnum_precursor,
      _$indicatorSignalTypeEnum_series,
      _$indicatorSignalTypeEnum_intelEvent,
      _$indicatorSignalTypeEnum_situation,
      _$indicatorSignalTypeEnum_question,
      _$indicatorSignalTypeEnum_manual,
      _$indicatorSignalTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<IndicatorSignalTypeEnum> _$indicatorSignalTypeEnumSerializer =
    _$IndicatorSignalTypeEnumSerializer();

class _$IndicatorSignalTypeEnumSerializer
    implements PrimitiveSerializer<IndicatorSignalTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rule': 'rule',
    'precursor': 'precursor',
    'series': 'series',
    'intelEvent': 'intelEvent',
    'situation': 'situation',
    'question': 'question',
    'manual': 'manual',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'rule': 'rule',
    'precursor': 'precursor',
    'series': 'series',
    'intelEvent': 'intelEvent',
    'situation': 'situation',
    'question': 'question',
    'manual': 'manual',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorSignalTypeEnum];
  @override
  final String wireName = 'IndicatorSignalTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IndicatorSignalTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndicatorSignalTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndicatorSignalTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndicatorSignal extends IndicatorSignal {
  @override
  final IndicatorSignalTypeEnum type;
  @override
  final TriggerRuleInput? rule;
  @override
  final String? precursorId;
  @override
  final IndicatorSignalSeries? series;
  @override
  final IndicatorSignalIntelEvent? intelEvent;
  @override
  final IndicatorSignalSituation? situation;
  @override
  final IndicatorSignalQuestion? question;
  @override
  final JsonObject? emerging;
  @override
  final num? baseRate;

  factory _$IndicatorSignal([void Function(IndicatorSignalBuilder)? updates]) =>
      (IndicatorSignalBuilder()..update(updates))._build();

  _$IndicatorSignal._({
    required this.type,
    this.rule,
    this.precursorId,
    this.series,
    this.intelEvent,
    this.situation,
    this.question,
    this.emerging,
    this.baseRate,
  }) : super._();
  @override
  IndicatorSignal rebuild(void Function(IndicatorSignalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndicatorSignalBuilder toBuilder() => IndicatorSignalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorSignal &&
        type == other.type &&
        rule == other.rule &&
        precursorId == other.precursorId &&
        series == other.series &&
        intelEvent == other.intelEvent &&
        situation == other.situation &&
        question == other.question &&
        emerging == other.emerging &&
        baseRate == other.baseRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jc(_$hash, precursorId.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, intelEvent.hashCode);
    _$hash = $jc(_$hash, situation.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, emerging.hashCode);
    _$hash = $jc(_$hash, baseRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorSignal')
          ..add('type', type)
          ..add('rule', rule)
          ..add('precursorId', precursorId)
          ..add('series', series)
          ..add('intelEvent', intelEvent)
          ..add('situation', situation)
          ..add('question', question)
          ..add('emerging', emerging)
          ..add('baseRate', baseRate))
        .toString();
  }
}

class IndicatorSignalBuilder
    implements Builder<IndicatorSignal, IndicatorSignalBuilder> {
  _$IndicatorSignal? _$v;

  IndicatorSignalTypeEnum? _type;
  IndicatorSignalTypeEnum? get type => _$this._type;
  set type(IndicatorSignalTypeEnum? type) => _$this._type = type;

  TriggerRuleInputBuilder? _rule;
  TriggerRuleInputBuilder get rule =>
      _$this._rule ??= TriggerRuleInputBuilder();
  set rule(TriggerRuleInputBuilder? rule) => _$this._rule = rule;

  String? _precursorId;
  String? get precursorId => _$this._precursorId;
  set precursorId(String? precursorId) => _$this._precursorId = precursorId;

  IndicatorSignalSeriesBuilder? _series;
  IndicatorSignalSeriesBuilder get series =>
      _$this._series ??= IndicatorSignalSeriesBuilder();
  set series(IndicatorSignalSeriesBuilder? series) => _$this._series = series;

  IndicatorSignalIntelEventBuilder? _intelEvent;
  IndicatorSignalIntelEventBuilder get intelEvent =>
      _$this._intelEvent ??= IndicatorSignalIntelEventBuilder();
  set intelEvent(IndicatorSignalIntelEventBuilder? intelEvent) =>
      _$this._intelEvent = intelEvent;

  IndicatorSignalSituationBuilder? _situation;
  IndicatorSignalSituationBuilder get situation =>
      _$this._situation ??= IndicatorSignalSituationBuilder();
  set situation(IndicatorSignalSituationBuilder? situation) =>
      _$this._situation = situation;

  IndicatorSignalQuestionBuilder? _question;
  IndicatorSignalQuestionBuilder get question =>
      _$this._question ??= IndicatorSignalQuestionBuilder();
  set question(IndicatorSignalQuestionBuilder? question) =>
      _$this._question = question;

  JsonObject? _emerging;
  JsonObject? get emerging => _$this._emerging;
  set emerging(JsonObject? emerging) => _$this._emerging = emerging;

  num? _baseRate;
  num? get baseRate => _$this._baseRate;
  set baseRate(num? baseRate) => _$this._baseRate = baseRate;

  IndicatorSignalBuilder() {
    IndicatorSignal._defaults(this);
  }

  IndicatorSignalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _rule = $v.rule?.toBuilder();
      _precursorId = $v.precursorId;
      _series = $v.series?.toBuilder();
      _intelEvent = $v.intelEvent?.toBuilder();
      _situation = $v.situation?.toBuilder();
      _question = $v.question?.toBuilder();
      _emerging = $v.emerging;
      _baseRate = $v.baseRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorSignal other) {
    _$v = other as _$IndicatorSignal;
  }

  @override
  void update(void Function(IndicatorSignalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorSignal build() => _build();

  _$IndicatorSignal _build() {
    _$IndicatorSignal _$result;
    try {
      _$result =
          _$v ??
          _$IndicatorSignal._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'IndicatorSignal',
              'type',
            ),
            rule: _rule?.build(),
            precursorId: precursorId,
            series: _series?.build(),
            intelEvent: _intelEvent?.build(),
            situation: _situation?.build(),
            question: _question?.build(),
            emerging: emerging,
            baseRate: baseRate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rule';
        _rule?.build();

        _$failedField = 'series';
        _series?.build();
        _$failedField = 'intelEvent';
        _intelEvent?.build();
        _$failedField = 'situation';
        _situation?.build();
        _$failedField = 'question';
        _question?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IndicatorSignal',
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
