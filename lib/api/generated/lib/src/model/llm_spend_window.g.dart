// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_spend_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LlmSpendWindowWindowEnum _$llmSpendWindowWindowEnum_hour =
    const LlmSpendWindowWindowEnum._('hour');
const LlmSpendWindowWindowEnum _$llmSpendWindowWindowEnum_day =
    const LlmSpendWindowWindowEnum._('day');
const LlmSpendWindowWindowEnum _$llmSpendWindowWindowEnum_month =
    const LlmSpendWindowWindowEnum._('month');
const LlmSpendWindowWindowEnum
_$llmSpendWindowWindowEnum_unknownDefaultOpenApi =
    const LlmSpendWindowWindowEnum._('unknownDefaultOpenApi');

LlmSpendWindowWindowEnum _$llmSpendWindowWindowEnumValueOf(String name) {
  switch (name) {
    case 'hour':
      return _$llmSpendWindowWindowEnum_hour;
    case 'day':
      return _$llmSpendWindowWindowEnum_day;
    case 'month':
      return _$llmSpendWindowWindowEnum_month;
    case 'unknownDefaultOpenApi':
      return _$llmSpendWindowWindowEnum_unknownDefaultOpenApi;
    default:
      return _$llmSpendWindowWindowEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LlmSpendWindowWindowEnum> _$llmSpendWindowWindowEnumValues =
    BuiltSet<LlmSpendWindowWindowEnum>(const <LlmSpendWindowWindowEnum>[
      _$llmSpendWindowWindowEnum_hour,
      _$llmSpendWindowWindowEnum_day,
      _$llmSpendWindowWindowEnum_month,
      _$llmSpendWindowWindowEnum_unknownDefaultOpenApi,
    ]);

Serializer<LlmSpendWindowWindowEnum> _$llmSpendWindowWindowEnumSerializer =
    _$LlmSpendWindowWindowEnumSerializer();

class _$LlmSpendWindowWindowEnumSerializer
    implements PrimitiveSerializer<LlmSpendWindowWindowEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hour': 'hour',
    'day': 'day',
    'month': 'month',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hour': 'hour',
    'day': 'day',
    'month': 'month',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LlmSpendWindowWindowEnum];
  @override
  final String wireName = 'LlmSpendWindowWindowEnum';

  @override
  Object serialize(
    Serializers serializers,
    LlmSpendWindowWindowEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LlmSpendWindowWindowEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LlmSpendWindowWindowEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LlmSpendWindow extends LlmSpendWindow {
  @override
  final LlmSpendWindowWindowEnum window;
  @override
  final DateTime start;
  @override
  final DateTime resetsAt;
  @override
  final num spentUsd;
  @override
  final num reservedUsd;
  @override
  final num? capUsd;
  @override
  final num? remainingUsd;
  @override
  final bool exhausted;

  factory _$LlmSpendWindow([void Function(LlmSpendWindowBuilder)? updates]) =>
      (LlmSpendWindowBuilder()..update(updates))._build();

  _$LlmSpendWindow._({
    required this.window,
    required this.start,
    required this.resetsAt,
    required this.spentUsd,
    required this.reservedUsd,
    this.capUsd,
    this.remainingUsd,
    required this.exhausted,
  }) : super._();
  @override
  LlmSpendWindow rebuild(void Function(LlmSpendWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmSpendWindowBuilder toBuilder() => LlmSpendWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmSpendWindow &&
        window == other.window &&
        start == other.start &&
        resetsAt == other.resetsAt &&
        spentUsd == other.spentUsd &&
        reservedUsd == other.reservedUsd &&
        capUsd == other.capUsd &&
        remainingUsd == other.remainingUsd &&
        exhausted == other.exhausted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, resetsAt.hashCode);
    _$hash = $jc(_$hash, spentUsd.hashCode);
    _$hash = $jc(_$hash, reservedUsd.hashCode);
    _$hash = $jc(_$hash, capUsd.hashCode);
    _$hash = $jc(_$hash, remainingUsd.hashCode);
    _$hash = $jc(_$hash, exhausted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmSpendWindow')
          ..add('window', window)
          ..add('start', start)
          ..add('resetsAt', resetsAt)
          ..add('spentUsd', spentUsd)
          ..add('reservedUsd', reservedUsd)
          ..add('capUsd', capUsd)
          ..add('remainingUsd', remainingUsd)
          ..add('exhausted', exhausted))
        .toString();
  }
}

class LlmSpendWindowBuilder
    implements Builder<LlmSpendWindow, LlmSpendWindowBuilder> {
  _$LlmSpendWindow? _$v;

  LlmSpendWindowWindowEnum? _window;
  LlmSpendWindowWindowEnum? get window => _$this._window;
  set window(LlmSpendWindowWindowEnum? window) => _$this._window = window;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _resetsAt;
  DateTime? get resetsAt => _$this._resetsAt;
  set resetsAt(DateTime? resetsAt) => _$this._resetsAt = resetsAt;

  num? _spentUsd;
  num? get spentUsd => _$this._spentUsd;
  set spentUsd(num? spentUsd) => _$this._spentUsd = spentUsd;

  num? _reservedUsd;
  num? get reservedUsd => _$this._reservedUsd;
  set reservedUsd(num? reservedUsd) => _$this._reservedUsd = reservedUsd;

  num? _capUsd;
  num? get capUsd => _$this._capUsd;
  set capUsd(num? capUsd) => _$this._capUsd = capUsd;

  num? _remainingUsd;
  num? get remainingUsd => _$this._remainingUsd;
  set remainingUsd(num? remainingUsd) => _$this._remainingUsd = remainingUsd;

  bool? _exhausted;
  bool? get exhausted => _$this._exhausted;
  set exhausted(bool? exhausted) => _$this._exhausted = exhausted;

  LlmSpendWindowBuilder() {
    LlmSpendWindow._defaults(this);
  }

  LlmSpendWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window;
      _start = $v.start;
      _resetsAt = $v.resetsAt;
      _spentUsd = $v.spentUsd;
      _reservedUsd = $v.reservedUsd;
      _capUsd = $v.capUsd;
      _remainingUsd = $v.remainingUsd;
      _exhausted = $v.exhausted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmSpendWindow other) {
    _$v = other as _$LlmSpendWindow;
  }

  @override
  void update(void Function(LlmSpendWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmSpendWindow build() => _build();

  _$LlmSpendWindow _build() {
    final _$result =
        _$v ??
        _$LlmSpendWindow._(
          window: BuiltValueNullFieldError.checkNotNull(
            window,
            r'LlmSpendWindow',
            'window',
          ),
          start: BuiltValueNullFieldError.checkNotNull(
            start,
            r'LlmSpendWindow',
            'start',
          ),
          resetsAt: BuiltValueNullFieldError.checkNotNull(
            resetsAt,
            r'LlmSpendWindow',
            'resetsAt',
          ),
          spentUsd: BuiltValueNullFieldError.checkNotNull(
            spentUsd,
            r'LlmSpendWindow',
            'spentUsd',
          ),
          reservedUsd: BuiltValueNullFieldError.checkNotNull(
            reservedUsd,
            r'LlmSpendWindow',
            'reservedUsd',
          ),
          capUsd: capUsd,
          remainingUsd: remainingUsd,
          exhausted: BuiltValueNullFieldError.checkNotNull(
            exhausted,
            r'LlmSpendWindow',
            'exhausted',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
