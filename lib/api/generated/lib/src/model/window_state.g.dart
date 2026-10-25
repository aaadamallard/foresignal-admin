// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WindowStateStateEnum _$windowStateStateEnum_active =
    const WindowStateStateEnum._('active');
const WindowStateStateEnum _$windowStateStateEnum_clear =
    const WindowStateStateEnum._('clear');
const WindowStateStateEnum _$windowStateStateEnum_unknown =
    const WindowStateStateEnum._('unknown');
const WindowStateStateEnum _$windowStateStateEnum_learning =
    const WindowStateStateEnum._('learning');
const WindowStateStateEnum _$windowStateStateEnum_unknownDefaultOpenApi =
    const WindowStateStateEnum._('unknownDefaultOpenApi');

WindowStateStateEnum _$windowStateStateEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$windowStateStateEnum_active;
    case 'clear':
      return _$windowStateStateEnum_clear;
    case 'unknown':
      return _$windowStateStateEnum_unknown;
    case 'learning':
      return _$windowStateStateEnum_learning;
    case 'unknownDefaultOpenApi':
      return _$windowStateStateEnum_unknownDefaultOpenApi;
    default:
      return _$windowStateStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<WindowStateStateEnum> _$windowStateStateEnumValues =
    BuiltSet<WindowStateStateEnum>(const <WindowStateStateEnum>[
      _$windowStateStateEnum_active,
      _$windowStateStateEnum_clear,
      _$windowStateStateEnum_unknown,
      _$windowStateStateEnum_learning,
      _$windowStateStateEnum_unknownDefaultOpenApi,
    ]);

Serializer<WindowStateStateEnum> _$windowStateStateEnumSerializer =
    _$WindowStateStateEnumSerializer();

class _$WindowStateStateEnumSerializer
    implements PrimitiveSerializer<WindowStateStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'clear': 'clear',
    'unknown': 'unknown',
    'learning': 'learning',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'clear': 'clear',
    'unknown': 'unknown',
    'learning': 'learning',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[WindowStateStateEnum];
  @override
  final String wireName = 'WindowStateStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    WindowStateStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WindowStateStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WindowStateStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WindowState extends WindowState {
  @override
  final String groupKey;
  @override
  final WindowStateStateEnum state;
  @override
  final DateTime since;
  @override
  final num? lastValue;
  @override
  final num? threshold;
  @override
  final DateTime? lastEvaluatedAt;
  @override
  final int? lastWatermarkSeq;
  @override
  final String? reason;
  @override
  final int? lastAlertId;

  factory _$WindowState([void Function(WindowStateBuilder)? updates]) =>
      (WindowStateBuilder()..update(updates))._build();

  _$WindowState._({
    required this.groupKey,
    required this.state,
    required this.since,
    this.lastValue,
    this.threshold,
    this.lastEvaluatedAt,
    this.lastWatermarkSeq,
    this.reason,
    this.lastAlertId,
  }) : super._();
  @override
  WindowState rebuild(void Function(WindowStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindowStateBuilder toBuilder() => WindowStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindowState &&
        groupKey == other.groupKey &&
        state == other.state &&
        since == other.since &&
        lastValue == other.lastValue &&
        threshold == other.threshold &&
        lastEvaluatedAt == other.lastEvaluatedAt &&
        lastWatermarkSeq == other.lastWatermarkSeq &&
        reason == other.reason &&
        lastAlertId == other.lastAlertId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, lastValue.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedAt.hashCode);
    _$hash = $jc(_$hash, lastWatermarkSeq.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, lastAlertId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WindowState')
          ..add('groupKey', groupKey)
          ..add('state', state)
          ..add('since', since)
          ..add('lastValue', lastValue)
          ..add('threshold', threshold)
          ..add('lastEvaluatedAt', lastEvaluatedAt)
          ..add('lastWatermarkSeq', lastWatermarkSeq)
          ..add('reason', reason)
          ..add('lastAlertId', lastAlertId))
        .toString();
  }
}

class WindowStateBuilder implements Builder<WindowState, WindowStateBuilder> {
  _$WindowState? _$v;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  WindowStateStateEnum? _state;
  WindowStateStateEnum? get state => _$this._state;
  set state(WindowStateStateEnum? state) => _$this._state = state;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  num? _lastValue;
  num? get lastValue => _$this._lastValue;
  set lastValue(num? lastValue) => _$this._lastValue = lastValue;

  num? _threshold;
  num? get threshold => _$this._threshold;
  set threshold(num? threshold) => _$this._threshold = threshold;

  DateTime? _lastEvaluatedAt;
  DateTime? get lastEvaluatedAt => _$this._lastEvaluatedAt;
  set lastEvaluatedAt(DateTime? lastEvaluatedAt) =>
      _$this._lastEvaluatedAt = lastEvaluatedAt;

  int? _lastWatermarkSeq;
  int? get lastWatermarkSeq => _$this._lastWatermarkSeq;
  set lastWatermarkSeq(int? lastWatermarkSeq) =>
      _$this._lastWatermarkSeq = lastWatermarkSeq;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  int? _lastAlertId;
  int? get lastAlertId => _$this._lastAlertId;
  set lastAlertId(int? lastAlertId) => _$this._lastAlertId = lastAlertId;

  WindowStateBuilder() {
    WindowState._defaults(this);
  }

  WindowStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupKey = $v.groupKey;
      _state = $v.state;
      _since = $v.since;
      _lastValue = $v.lastValue;
      _threshold = $v.threshold;
      _lastEvaluatedAt = $v.lastEvaluatedAt;
      _lastWatermarkSeq = $v.lastWatermarkSeq;
      _reason = $v.reason;
      _lastAlertId = $v.lastAlertId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindowState other) {
    _$v = other as _$WindowState;
  }

  @override
  void update(void Function(WindowStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindowState build() => _build();

  _$WindowState _build() {
    final _$result =
        _$v ??
        _$WindowState._(
          groupKey: BuiltValueNullFieldError.checkNotNull(
            groupKey,
            r'WindowState',
            'groupKey',
          ),
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'WindowState',
            'state',
          ),
          since: BuiltValueNullFieldError.checkNotNull(
            since,
            r'WindowState',
            'since',
          ),
          lastValue: lastValue,
          threshold: threshold,
          lastEvaluatedAt: lastEvaluatedAt,
          lastWatermarkSeq: lastWatermarkSeq,
          reason: reason,
          lastAlertId: lastAlertId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
