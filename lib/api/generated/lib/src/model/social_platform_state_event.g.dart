// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_state_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialPlatformStateEventEventEnum
    _$socialPlatformStateEventEventEnum_socialPeriodPlatformPeriodState =
    const SocialPlatformStateEventEventEnum._(
        'socialPeriodPlatformPeriodState');

SocialPlatformStateEventEventEnum _$socialPlatformStateEventEventEnumValueOf(
    String name) {
  switch (name) {
    case 'socialPeriodPlatformPeriodState':
      return _$socialPlatformStateEventEventEnum_socialPeriodPlatformPeriodState;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialPlatformStateEventEventEnum>
    _$socialPlatformStateEventEventEnumValues = BuiltSet<
        SocialPlatformStateEventEventEnum>(const <SocialPlatformStateEventEventEnum>[
  _$socialPlatformStateEventEventEnum_socialPeriodPlatformPeriodState,
]);

Serializer<SocialPlatformStateEventEventEnum>
    _$socialPlatformStateEventEventEnumSerializer =
    _$SocialPlatformStateEventEventEnumSerializer();

class _$SocialPlatformStateEventEventEnumSerializer
    implements PrimitiveSerializer<SocialPlatformStateEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'socialPeriodPlatformPeriodState': 'social.platform.state',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'social.platform.state': 'socialPeriodPlatformPeriodState',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialPlatformStateEventEventEnum];
  @override
  final String wireName = 'SocialPlatformStateEventEventEnum';

  @override
  Object serialize(
          Serializers serializers, SocialPlatformStateEventEventEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialPlatformStateEventEventEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialPlatformStateEventEventEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialPlatformStateEvent extends SocialPlatformStateEvent {
  @override
  final SocialPlatformStateEventEventEnum event;
  @override
  final SocialPlatformId platformId;
  @override
  final String state;
  @override
  final String? previousState;
  @override
  final String? reason;
  @override
  final SocialSpend? spend;
  @override
  final DateTime at;

  factory _$SocialPlatformStateEvent(
          [void Function(SocialPlatformStateEventBuilder)? updates]) =>
      (SocialPlatformStateEventBuilder()..update(updates))._build();

  _$SocialPlatformStateEvent._(
      {required this.event,
      required this.platformId,
      required this.state,
      this.previousState,
      this.reason,
      this.spend,
      required this.at})
      : super._();
  @override
  SocialPlatformStateEvent rebuild(
          void Function(SocialPlatformStateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPlatformStateEventBuilder toBuilder() =>
      SocialPlatformStateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformStateEvent &&
        event == other.event &&
        platformId == other.platformId &&
        state == other.state &&
        previousState == other.previousState &&
        reason == other.reason &&
        spend == other.spend &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, previousState.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, spend.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformStateEvent')
          ..add('event', event)
          ..add('platformId', platformId)
          ..add('state', state)
          ..add('previousState', previousState)
          ..add('reason', reason)
          ..add('spend', spend)
          ..add('at', at))
        .toString();
  }
}

class SocialPlatformStateEventBuilder
    implements
        Builder<SocialPlatformStateEvent, SocialPlatformStateEventBuilder> {
  _$SocialPlatformStateEvent? _$v;

  SocialPlatformStateEventEventEnum? _event;
  SocialPlatformStateEventEventEnum? get event => _$this._event;
  set event(SocialPlatformStateEventEventEnum? event) => _$this._event = event;

  SocialPlatformId? _platformId;
  SocialPlatformId? get platformId => _$this._platformId;
  set platformId(SocialPlatformId? platformId) =>
      _$this._platformId = platformId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _previousState;
  String? get previousState => _$this._previousState;
  set previousState(String? previousState) =>
      _$this._previousState = previousState;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SocialSpendBuilder? _spend;
  SocialSpendBuilder get spend => _$this._spend ??= SocialSpendBuilder();
  set spend(SocialSpendBuilder? spend) => _$this._spend = spend;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  SocialPlatformStateEventBuilder() {
    SocialPlatformStateEvent._defaults(this);
  }

  SocialPlatformStateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _platformId = $v.platformId;
      _state = $v.state;
      _previousState = $v.previousState;
      _reason = $v.reason;
      _spend = $v.spend?.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformStateEvent other) {
    _$v = other as _$SocialPlatformStateEvent;
  }

  @override
  void update(void Function(SocialPlatformStateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformStateEvent build() => _build();

  _$SocialPlatformStateEvent _build() {
    _$SocialPlatformStateEvent _$result;
    try {
      _$result = _$v ??
          _$SocialPlatformStateEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
                event, r'SocialPlatformStateEvent', 'event'),
            platformId: BuiltValueNullFieldError.checkNotNull(
                platformId, r'SocialPlatformStateEvent', 'platformId'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'SocialPlatformStateEvent', 'state'),
            previousState: previousState,
            reason: reason,
            spend: _spend?.build(),
            at: BuiltValueNullFieldError.checkNotNull(
                at, r'SocialPlatformStateEvent', 'at'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spend';
        _spend?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialPlatformStateEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
