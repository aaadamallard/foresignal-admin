// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_submitted_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastSubmittedEventEventEnum
    _$forecastSubmittedEventEventEnum_forecastPeriodSubmitted =
    const ForecastSubmittedEventEventEnum._('forecastPeriodSubmitted');

ForecastSubmittedEventEventEnum _$forecastSubmittedEventEventEnumValueOf(
    String name) {
  switch (name) {
    case 'forecastPeriodSubmitted':
      return _$forecastSubmittedEventEventEnum_forecastPeriodSubmitted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastSubmittedEventEventEnum>
    _$forecastSubmittedEventEventEnumValues = BuiltSet<
        ForecastSubmittedEventEventEnum>(const <ForecastSubmittedEventEventEnum>[
  _$forecastSubmittedEventEventEnum_forecastPeriodSubmitted,
]);

Serializer<ForecastSubmittedEventEventEnum>
    _$forecastSubmittedEventEventEnumSerializer =
    _$ForecastSubmittedEventEventEnumSerializer();

class _$ForecastSubmittedEventEventEnumSerializer
    implements PrimitiveSerializer<ForecastSubmittedEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'forecastPeriodSubmitted': 'forecast.submitted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'forecast.submitted': 'forecastPeriodSubmitted',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastSubmittedEventEventEnum];
  @override
  final String wireName = 'ForecastSubmittedEventEventEnum';

  @override
  Object serialize(
          Serializers serializers, ForecastSubmittedEventEventEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastSubmittedEventEventEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastSubmittedEventEventEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastSubmittedEvent extends ForecastSubmittedEvent {
  @override
  final ForecastSubmittedEventEventEnum event;
  @override
  final String questionId;
  @override
  final String forecastId;
  @override
  final String forecasterId;
  @override
  final DateTime madeAt;
  @override
  final num? probability;
  @override
  final IcdTerm? estimativeTerm;
  @override
  final bool? private;

  factory _$ForecastSubmittedEvent(
          [void Function(ForecastSubmittedEventBuilder)? updates]) =>
      (ForecastSubmittedEventBuilder()..update(updates))._build();

  _$ForecastSubmittedEvent._(
      {required this.event,
      required this.questionId,
      required this.forecastId,
      required this.forecasterId,
      required this.madeAt,
      this.probability,
      this.estimativeTerm,
      this.private})
      : super._();
  @override
  ForecastSubmittedEvent rebuild(
          void Function(ForecastSubmittedEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastSubmittedEventBuilder toBuilder() =>
      ForecastSubmittedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastSubmittedEvent &&
        event == other.event &&
        questionId == other.questionId &&
        forecastId == other.forecastId &&
        forecasterId == other.forecasterId &&
        madeAt == other.madeAt &&
        probability == other.probability &&
        estimativeTerm == other.estimativeTerm &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, forecastId.hashCode);
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, madeAt.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastSubmittedEvent')
          ..add('event', event)
          ..add('questionId', questionId)
          ..add('forecastId', forecastId)
          ..add('forecasterId', forecasterId)
          ..add('madeAt', madeAt)
          ..add('probability', probability)
          ..add('estimativeTerm', estimativeTerm)
          ..add('private', private))
        .toString();
  }
}

class ForecastSubmittedEventBuilder
    implements Builder<ForecastSubmittedEvent, ForecastSubmittedEventBuilder> {
  _$ForecastSubmittedEvent? _$v;

  ForecastSubmittedEventEventEnum? _event;
  ForecastSubmittedEventEventEnum? get event => _$this._event;
  set event(ForecastSubmittedEventEventEnum? event) => _$this._event = event;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _forecastId;
  String? get forecastId => _$this._forecastId;
  set forecastId(String? forecastId) => _$this._forecastId = forecastId;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  DateTime? _madeAt;
  DateTime? get madeAt => _$this._madeAt;
  set madeAt(DateTime? madeAt) => _$this._madeAt = madeAt;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  ForecastSubmittedEventBuilder() {
    ForecastSubmittedEvent._defaults(this);
  }

  ForecastSubmittedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _questionId = $v.questionId;
      _forecastId = $v.forecastId;
      _forecasterId = $v.forecasterId;
      _madeAt = $v.madeAt;
      _probability = $v.probability;
      _estimativeTerm = $v.estimativeTerm;
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastSubmittedEvent other) {
    _$v = other as _$ForecastSubmittedEvent;
  }

  @override
  void update(void Function(ForecastSubmittedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastSubmittedEvent build() => _build();

  _$ForecastSubmittedEvent _build() {
    final _$result = _$v ??
        _$ForecastSubmittedEvent._(
          event: BuiltValueNullFieldError.checkNotNull(
              event, r'ForecastSubmittedEvent', 'event'),
          questionId: BuiltValueNullFieldError.checkNotNull(
              questionId, r'ForecastSubmittedEvent', 'questionId'),
          forecastId: BuiltValueNullFieldError.checkNotNull(
              forecastId, r'ForecastSubmittedEvent', 'forecastId'),
          forecasterId: BuiltValueNullFieldError.checkNotNull(
              forecasterId, r'ForecastSubmittedEvent', 'forecasterId'),
          madeAt: BuiltValueNullFieldError.checkNotNull(
              madeAt, r'ForecastSubmittedEvent', 'madeAt'),
          probability: probability,
          estimativeTerm: estimativeTerm,
          private: private,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
