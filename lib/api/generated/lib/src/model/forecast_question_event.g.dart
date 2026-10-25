// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_question_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastQuestionEventEventEnum
_$forecastQuestionEventEventEnum_questionPeriodOpened =
    const ForecastQuestionEventEventEnum._('questionPeriodOpened');
const ForecastQuestionEventEventEnum
_$forecastQuestionEventEventEnum_questionPeriodClosed =
    const ForecastQuestionEventEventEnum._('questionPeriodClosed');
const ForecastQuestionEventEventEnum
_$forecastQuestionEventEventEnum_questionPeriodResolved =
    const ForecastQuestionEventEventEnum._('questionPeriodResolved');
const ForecastQuestionEventEventEnum
_$forecastQuestionEventEventEnum_questionPeriodAnnulled =
    const ForecastQuestionEventEventEnum._('questionPeriodAnnulled');
const ForecastQuestionEventEventEnum
_$forecastQuestionEventEventEnum_unknownDefaultOpenApi =
    const ForecastQuestionEventEventEnum._('unknownDefaultOpenApi');

ForecastQuestionEventEventEnum _$forecastQuestionEventEventEnumValueOf(
  String name,
) {
  switch (name) {
    case 'questionPeriodOpened':
      return _$forecastQuestionEventEventEnum_questionPeriodOpened;
    case 'questionPeriodClosed':
      return _$forecastQuestionEventEventEnum_questionPeriodClosed;
    case 'questionPeriodResolved':
      return _$forecastQuestionEventEventEnum_questionPeriodResolved;
    case 'questionPeriodAnnulled':
      return _$forecastQuestionEventEventEnum_questionPeriodAnnulled;
    case 'unknownDefaultOpenApi':
      return _$forecastQuestionEventEventEnum_unknownDefaultOpenApi;
    default:
      return _$forecastQuestionEventEventEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ForecastQuestionEventEventEnum>
_$forecastQuestionEventEventEnumValues =
    BuiltSet<ForecastQuestionEventEventEnum>(
      const <ForecastQuestionEventEventEnum>[
        _$forecastQuestionEventEventEnum_questionPeriodOpened,
        _$forecastQuestionEventEventEnum_questionPeriodClosed,
        _$forecastQuestionEventEventEnum_questionPeriodResolved,
        _$forecastQuestionEventEventEnum_questionPeriodAnnulled,
        _$forecastQuestionEventEventEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ForecastQuestionEventEventEnum>
_$forecastQuestionEventEventEnumSerializer =
    _$ForecastQuestionEventEventEnumSerializer();

class _$ForecastQuestionEventEventEnumSerializer
    implements PrimitiveSerializer<ForecastQuestionEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'questionPeriodOpened': 'question.opened',
    'questionPeriodClosed': 'question.closed',
    'questionPeriodResolved': 'question.resolved',
    'questionPeriodAnnulled': 'question.annulled',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'question.opened': 'questionPeriodOpened',
    'question.closed': 'questionPeriodClosed',
    'question.resolved': 'questionPeriodResolved',
    'question.annulled': 'questionPeriodAnnulled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastQuestionEventEventEnum];
  @override
  final String wireName = 'ForecastQuestionEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecastQuestionEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecastQuestionEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecastQuestionEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecastQuestionEvent extends ForecastQuestionEvent {
  @override
  final ForecastQuestionEventEventEnum event;
  @override
  final ForecastQuestionSummary question;
  @override
  final DateTime at;

  factory _$ForecastQuestionEvent([
    void Function(ForecastQuestionEventBuilder)? updates,
  ]) => (ForecastQuestionEventBuilder()..update(updates))._build();

  _$ForecastQuestionEvent._({
    required this.event,
    required this.question,
    required this.at,
  }) : super._();
  @override
  ForecastQuestionEvent rebuild(
    void Function(ForecastQuestionEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastQuestionEventBuilder toBuilder() =>
      ForecastQuestionEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastQuestionEvent &&
        event == other.event &&
        question == other.question &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastQuestionEvent')
          ..add('event', event)
          ..add('question', question)
          ..add('at', at))
        .toString();
  }
}

class ForecastQuestionEventBuilder
    implements Builder<ForecastQuestionEvent, ForecastQuestionEventBuilder> {
  _$ForecastQuestionEvent? _$v;

  ForecastQuestionEventEventEnum? _event;
  ForecastQuestionEventEventEnum? get event => _$this._event;
  set event(ForecastQuestionEventEventEnum? event) => _$this._event = event;

  ForecastQuestionSummaryBuilder? _question;
  ForecastQuestionSummaryBuilder get question =>
      _$this._question ??= ForecastQuestionSummaryBuilder();
  set question(ForecastQuestionSummaryBuilder? question) =>
      _$this._question = question;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ForecastQuestionEventBuilder() {
    ForecastQuestionEvent._defaults(this);
  }

  ForecastQuestionEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _question = $v.question.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastQuestionEvent other) {
    _$v = other as _$ForecastQuestionEvent;
  }

  @override
  void update(void Function(ForecastQuestionEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastQuestionEvent build() => _build();

  _$ForecastQuestionEvent _build() {
    _$ForecastQuestionEvent _$result;
    try {
      _$result =
          _$v ??
          _$ForecastQuestionEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'ForecastQuestionEvent',
              'event',
            ),
            question: question.build(),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'ForecastQuestionEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'question';
        question.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastQuestionEvent',
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
