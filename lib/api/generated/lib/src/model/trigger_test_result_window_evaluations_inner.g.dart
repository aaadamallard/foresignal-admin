// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger_test_result_window_evaluations_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TriggerTestResultWindowEvaluationsInnerStateEnum
_$triggerTestResultWindowEvaluationsInnerStateEnum_active =
    const TriggerTestResultWindowEvaluationsInnerStateEnum._('active');
const TriggerTestResultWindowEvaluationsInnerStateEnum
_$triggerTestResultWindowEvaluationsInnerStateEnum_clear =
    const TriggerTestResultWindowEvaluationsInnerStateEnum._('clear');
const TriggerTestResultWindowEvaluationsInnerStateEnum
_$triggerTestResultWindowEvaluationsInnerStateEnum_unknown =
    const TriggerTestResultWindowEvaluationsInnerStateEnum._('unknown');
const TriggerTestResultWindowEvaluationsInnerStateEnum
_$triggerTestResultWindowEvaluationsInnerStateEnum_learning =
    const TriggerTestResultWindowEvaluationsInnerStateEnum._('learning');
const TriggerTestResultWindowEvaluationsInnerStateEnum
_$triggerTestResultWindowEvaluationsInnerStateEnum_unknownDefaultOpenApi =
    const TriggerTestResultWindowEvaluationsInnerStateEnum._(
      'unknownDefaultOpenApi',
    );

TriggerTestResultWindowEvaluationsInnerStateEnum
_$triggerTestResultWindowEvaluationsInnerStateEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$triggerTestResultWindowEvaluationsInnerStateEnum_active;
    case 'clear':
      return _$triggerTestResultWindowEvaluationsInnerStateEnum_clear;
    case 'unknown':
      return _$triggerTestResultWindowEvaluationsInnerStateEnum_unknown;
    case 'learning':
      return _$triggerTestResultWindowEvaluationsInnerStateEnum_learning;
    case 'unknownDefaultOpenApi':
      return _$triggerTestResultWindowEvaluationsInnerStateEnum_unknownDefaultOpenApi;
    default:
      return _$triggerTestResultWindowEvaluationsInnerStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<TriggerTestResultWindowEvaluationsInnerStateEnum>
_$triggerTestResultWindowEvaluationsInnerStateEnumValues =
    BuiltSet<TriggerTestResultWindowEvaluationsInnerStateEnum>(const <
      TriggerTestResultWindowEvaluationsInnerStateEnum
    >[
      _$triggerTestResultWindowEvaluationsInnerStateEnum_active,
      _$triggerTestResultWindowEvaluationsInnerStateEnum_clear,
      _$triggerTestResultWindowEvaluationsInnerStateEnum_unknown,
      _$triggerTestResultWindowEvaluationsInnerStateEnum_learning,
      _$triggerTestResultWindowEvaluationsInnerStateEnum_unknownDefaultOpenApi,
    ]);

Serializer<TriggerTestResultWindowEvaluationsInnerStateEnum>
_$triggerTestResultWindowEvaluationsInnerStateEnumSerializer =
    _$TriggerTestResultWindowEvaluationsInnerStateEnumSerializer();

class _$TriggerTestResultWindowEvaluationsInnerStateEnumSerializer
    implements
        PrimitiveSerializer<TriggerTestResultWindowEvaluationsInnerStateEnum> {
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
  final Iterable<Type> types = const <Type>[
    TriggerTestResultWindowEvaluationsInnerStateEnum,
  ];
  @override
  final String wireName = 'TriggerTestResultWindowEvaluationsInnerStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    TriggerTestResultWindowEvaluationsInnerStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TriggerTestResultWindowEvaluationsInnerStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TriggerTestResultWindowEvaluationsInnerStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TriggerTestResultWindowEvaluationsInner
    extends TriggerTestResultWindowEvaluationsInner {
  @override
  final DateTime at;
  @override
  final String groupKey;
  @override
  final num? value;
  @override
  final TriggerTestResultWindowEvaluationsInnerStateEnum state;
  @override
  final String? reason;

  factory _$TriggerTestResultWindowEvaluationsInner([
    void Function(TriggerTestResultWindowEvaluationsInnerBuilder)? updates,
  ]) => (TriggerTestResultWindowEvaluationsInnerBuilder()..update(updates))
      ._build();

  _$TriggerTestResultWindowEvaluationsInner._({
    required this.at,
    required this.groupKey,
    this.value,
    required this.state,
    this.reason,
  }) : super._();
  @override
  TriggerTestResultWindowEvaluationsInner rebuild(
    void Function(TriggerTestResultWindowEvaluationsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TriggerTestResultWindowEvaluationsInnerBuilder toBuilder() =>
      TriggerTestResultWindowEvaluationsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TriggerTestResultWindowEvaluationsInner &&
        at == other.at &&
        groupKey == other.groupKey &&
        value == other.value &&
        state == other.state &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TriggerTestResultWindowEvaluationsInner',
          )
          ..add('at', at)
          ..add('groupKey', groupKey)
          ..add('value', value)
          ..add('state', state)
          ..add('reason', reason))
        .toString();
  }
}

class TriggerTestResultWindowEvaluationsInnerBuilder
    implements
        Builder<
          TriggerTestResultWindowEvaluationsInner,
          TriggerTestResultWindowEvaluationsInnerBuilder
        > {
  _$TriggerTestResultWindowEvaluationsInner? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  TriggerTestResultWindowEvaluationsInnerStateEnum? _state;
  TriggerTestResultWindowEvaluationsInnerStateEnum? get state => _$this._state;
  set state(TriggerTestResultWindowEvaluationsInnerStateEnum? state) =>
      _$this._state = state;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  TriggerTestResultWindowEvaluationsInnerBuilder() {
    TriggerTestResultWindowEvaluationsInner._defaults(this);
  }

  TriggerTestResultWindowEvaluationsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _groupKey = $v.groupKey;
      _value = $v.value;
      _state = $v.state;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TriggerTestResultWindowEvaluationsInner other) {
    _$v = other as _$TriggerTestResultWindowEvaluationsInner;
  }

  @override
  void update(
    void Function(TriggerTestResultWindowEvaluationsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TriggerTestResultWindowEvaluationsInner build() => _build();

  _$TriggerTestResultWindowEvaluationsInner _build() {
    final _$result =
        _$v ??
        _$TriggerTestResultWindowEvaluationsInner._(
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'TriggerTestResultWindowEvaluationsInner',
            'at',
          ),
          groupKey: BuiltValueNullFieldError.checkNotNull(
            groupKey,
            r'TriggerTestResultWindowEvaluationsInner',
            'groupKey',
          ),
          value: value,
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'TriggerTestResultWindowEvaluationsInner',
            'state',
          ),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
