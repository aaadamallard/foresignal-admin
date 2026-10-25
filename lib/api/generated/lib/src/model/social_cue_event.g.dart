// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_cue_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialCueEventEventEnum _$socialCueEventEventEnum_cuePeriodCompleted =
    const SocialCueEventEventEnum._('cuePeriodCompleted');
const SocialCueEventEventEnum _$socialCueEventEventEnum_unknownDefaultOpenApi =
    const SocialCueEventEventEnum._('unknownDefaultOpenApi');

SocialCueEventEventEnum _$socialCueEventEventEnumValueOf(String name) {
  switch (name) {
    case 'cuePeriodCompleted':
      return _$socialCueEventEventEnum_cuePeriodCompleted;
    case 'unknownDefaultOpenApi':
      return _$socialCueEventEventEnum_unknownDefaultOpenApi;
    default:
      return _$socialCueEventEventEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialCueEventEventEnum> _$socialCueEventEventEnumValues =
    BuiltSet<SocialCueEventEventEnum>(const <SocialCueEventEventEnum>[
      _$socialCueEventEventEnum_cuePeriodCompleted,
      _$socialCueEventEventEnum_unknownDefaultOpenApi,
    ]);

Serializer<SocialCueEventEventEnum> _$socialCueEventEventEnumSerializer =
    _$SocialCueEventEventEnumSerializer();

class _$SocialCueEventEventEnumSerializer
    implements PrimitiveSerializer<SocialCueEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cuePeriodCompleted': 'cue.completed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cue.completed': 'cuePeriodCompleted',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialCueEventEventEnum];
  @override
  final String wireName = 'SocialCueEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialCueEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialCueEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialCueEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialCueEvent extends SocialCueEvent {
  @override
  final SocialCueEventEventEnum event;
  @override
  final SocialCue cue;

  factory _$SocialCueEvent([void Function(SocialCueEventBuilder)? updates]) =>
      (SocialCueEventBuilder()..update(updates))._build();

  _$SocialCueEvent._({required this.event, required this.cue}) : super._();
  @override
  SocialCueEvent rebuild(void Function(SocialCueEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCueEventBuilder toBuilder() => SocialCueEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCueEvent && event == other.event && cue == other.cue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, cue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCueEvent')
          ..add('event', event)
          ..add('cue', cue))
        .toString();
  }
}

class SocialCueEventBuilder
    implements Builder<SocialCueEvent, SocialCueEventBuilder> {
  _$SocialCueEvent? _$v;

  SocialCueEventEventEnum? _event;
  SocialCueEventEventEnum? get event => _$this._event;
  set event(SocialCueEventEventEnum? event) => _$this._event = event;

  SocialCueBuilder? _cue;
  SocialCueBuilder get cue => _$this._cue ??= SocialCueBuilder();
  set cue(SocialCueBuilder? cue) => _$this._cue = cue;

  SocialCueEventBuilder() {
    SocialCueEvent._defaults(this);
  }

  SocialCueEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _cue = $v.cue.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCueEvent other) {
    _$v = other as _$SocialCueEvent;
  }

  @override
  void update(void Function(SocialCueEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCueEvent build() => _build();

  _$SocialCueEvent _build() {
    _$SocialCueEvent _$result;
    try {
      _$result =
          _$v ??
          _$SocialCueEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'SocialCueEvent',
              'event',
            ),
            cue: cue.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cue';
        cue.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialCueEvent',
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
