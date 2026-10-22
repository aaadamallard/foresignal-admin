// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_cue_trigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialCueTriggerTypeEnum _$socialCueTriggerTypeEnum_situationActivated =
    const SocialCueTriggerTypeEnum._('situationActivated');
const SocialCueTriggerTypeEnum _$socialCueTriggerTypeEnum_situationEscalated =
    const SocialCueTriggerTypeEnum._('situationEscalated');
const SocialCueTriggerTypeEnum _$socialCueTriggerTypeEnum_finding =
    const SocialCueTriggerTypeEnum._('finding');
const SocialCueTriggerTypeEnum _$socialCueTriggerTypeEnum_anomaly =
    const SocialCueTriggerTypeEnum._('anomaly');
const SocialCueTriggerTypeEnum _$socialCueTriggerTypeEnum_alert =
    const SocialCueTriggerTypeEnum._('alert');
const SocialCueTriggerTypeEnum _$socialCueTriggerTypeEnum_canonicalEvent =
    const SocialCueTriggerTypeEnum._('canonicalEvent');
const SocialCueTriggerTypeEnum _$socialCueTriggerTypeEnum_manual =
    const SocialCueTriggerTypeEnum._('manual');

SocialCueTriggerTypeEnum _$socialCueTriggerTypeEnumValueOf(String name) {
  switch (name) {
    case 'situationActivated':
      return _$socialCueTriggerTypeEnum_situationActivated;
    case 'situationEscalated':
      return _$socialCueTriggerTypeEnum_situationEscalated;
    case 'finding':
      return _$socialCueTriggerTypeEnum_finding;
    case 'anomaly':
      return _$socialCueTriggerTypeEnum_anomaly;
    case 'alert':
      return _$socialCueTriggerTypeEnum_alert;
    case 'canonicalEvent':
      return _$socialCueTriggerTypeEnum_canonicalEvent;
    case 'manual':
      return _$socialCueTriggerTypeEnum_manual;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialCueTriggerTypeEnum> _$socialCueTriggerTypeEnumValues =
    BuiltSet<SocialCueTriggerTypeEnum>(const <SocialCueTriggerTypeEnum>[
  _$socialCueTriggerTypeEnum_situationActivated,
  _$socialCueTriggerTypeEnum_situationEscalated,
  _$socialCueTriggerTypeEnum_finding,
  _$socialCueTriggerTypeEnum_anomaly,
  _$socialCueTriggerTypeEnum_alert,
  _$socialCueTriggerTypeEnum_canonicalEvent,
  _$socialCueTriggerTypeEnum_manual,
]);

Serializer<SocialCueTriggerTypeEnum> _$socialCueTriggerTypeEnumSerializer =
    _$SocialCueTriggerTypeEnumSerializer();

class _$SocialCueTriggerTypeEnumSerializer
    implements PrimitiveSerializer<SocialCueTriggerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'situationActivated': 'situation-activated',
    'situationEscalated': 'situation-escalated',
    'finding': 'finding',
    'anomaly': 'anomaly',
    'alert': 'alert',
    'canonicalEvent': 'canonical-event',
    'manual': 'manual',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'situation-activated': 'situationActivated',
    'situation-escalated': 'situationEscalated',
    'finding': 'finding',
    'anomaly': 'anomaly',
    'alert': 'alert',
    'canonical-event': 'canonicalEvent',
    'manual': 'manual',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialCueTriggerTypeEnum];
  @override
  final String wireName = 'SocialCueTriggerTypeEnum';

  @override
  Object serialize(Serializers serializers, SocialCueTriggerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialCueTriggerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialCueTriggerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialCueTrigger extends SocialCueTrigger {
  @override
  final SocialCueTriggerTypeEnum type;
  @override
  final String? ref;

  factory _$SocialCueTrigger(
          [void Function(SocialCueTriggerBuilder)? updates]) =>
      (SocialCueTriggerBuilder()..update(updates))._build();

  _$SocialCueTrigger._({required this.type, this.ref}) : super._();
  @override
  SocialCueTrigger rebuild(void Function(SocialCueTriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCueTriggerBuilder toBuilder() =>
      SocialCueTriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCueTrigger && type == other.type && ref == other.ref;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCueTrigger')
          ..add('type', type)
          ..add('ref', ref))
        .toString();
  }
}

class SocialCueTriggerBuilder
    implements Builder<SocialCueTrigger, SocialCueTriggerBuilder> {
  _$SocialCueTrigger? _$v;

  SocialCueTriggerTypeEnum? _type;
  SocialCueTriggerTypeEnum? get type => _$this._type;
  set type(SocialCueTriggerTypeEnum? type) => _$this._type = type;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  SocialCueTriggerBuilder() {
    SocialCueTrigger._defaults(this);
  }

  SocialCueTriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _ref = $v.ref;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCueTrigger other) {
    _$v = other as _$SocialCueTrigger;
  }

  @override
  void update(void Function(SocialCueTriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCueTrigger build() => _build();

  _$SocialCueTrigger _build() {
    final _$result = _$v ??
        _$SocialCueTrigger._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'SocialCueTrigger', 'type'),
          ref: ref,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
