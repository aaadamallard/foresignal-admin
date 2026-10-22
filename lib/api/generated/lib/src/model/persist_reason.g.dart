// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persist_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PersistReason _$FIRST = const PersistReason._('FIRST');
const PersistReason _$REAPPEAR = const PersistReason._('REAPPEAR');
const PersistReason _$SIGNIFICANT = const PersistReason._('SIGNIFICANT');
const PersistReason _$TOMBSTONE = const PersistReason._('TOMBSTONE');
const PersistReason _$CHANGE = const PersistReason._('CHANGE');
const PersistReason _$SAMPLE = const PersistReason._('SAMPLE');
const PersistReason _$KEYFRAME = const PersistReason._('KEYFRAME');
const PersistReason _$HEARTBEAT = const PersistReason._('HEARTBEAT');
const PersistReason _$TRIGGER_EDGE = const PersistReason._('TRIGGER_EDGE');

PersistReason _$valueOf(String name) {
  switch (name) {
    case 'FIRST':
      return _$FIRST;
    case 'REAPPEAR':
      return _$REAPPEAR;
    case 'SIGNIFICANT':
      return _$SIGNIFICANT;
    case 'TOMBSTONE':
      return _$TOMBSTONE;
    case 'CHANGE':
      return _$CHANGE;
    case 'SAMPLE':
      return _$SAMPLE;
    case 'KEYFRAME':
      return _$KEYFRAME;
    case 'HEARTBEAT':
      return _$HEARTBEAT;
    case 'TRIGGER_EDGE':
      return _$TRIGGER_EDGE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PersistReason> _$values =
    BuiltSet<PersistReason>(const <PersistReason>[
  _$FIRST,
  _$REAPPEAR,
  _$SIGNIFICANT,
  _$TOMBSTONE,
  _$CHANGE,
  _$SAMPLE,
  _$KEYFRAME,
  _$HEARTBEAT,
  _$TRIGGER_EDGE,
]);

class _$PersistReasonMeta {
  const _$PersistReasonMeta();
  PersistReason get FIRST => _$FIRST;
  PersistReason get REAPPEAR => _$REAPPEAR;
  PersistReason get SIGNIFICANT => _$SIGNIFICANT;
  PersistReason get TOMBSTONE => _$TOMBSTONE;
  PersistReason get CHANGE => _$CHANGE;
  PersistReason get SAMPLE => _$SAMPLE;
  PersistReason get KEYFRAME => _$KEYFRAME;
  PersistReason get HEARTBEAT => _$HEARTBEAT;
  PersistReason get TRIGGER_EDGE => _$TRIGGER_EDGE;
  PersistReason valueOf(String name) => _$valueOf(name);
  BuiltSet<PersistReason> get values => _$values;
}

abstract class _$PersistReasonMixin {
  // ignore: non_constant_identifier_names
  _$PersistReasonMeta get PersistReason => const _$PersistReasonMeta();
}

Serializer<PersistReason> _$persistReasonSerializer =
    _$PersistReasonSerializer();

class _$PersistReasonSerializer implements PrimitiveSerializer<PersistReason> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FIRST': 'FIRST',
    'REAPPEAR': 'REAPPEAR',
    'SIGNIFICANT': 'SIGNIFICANT',
    'TOMBSTONE': 'TOMBSTONE',
    'CHANGE': 'CHANGE',
    'SAMPLE': 'SAMPLE',
    'KEYFRAME': 'KEYFRAME',
    'HEARTBEAT': 'HEARTBEAT',
    'TRIGGER_EDGE': 'TRIGGER_EDGE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FIRST': 'FIRST',
    'REAPPEAR': 'REAPPEAR',
    'SIGNIFICANT': 'SIGNIFICANT',
    'TOMBSTONE': 'TOMBSTONE',
    'CHANGE': 'CHANGE',
    'SAMPLE': 'SAMPLE',
    'KEYFRAME': 'KEYFRAME',
    'HEARTBEAT': 'HEARTBEAT',
    'TRIGGER_EDGE': 'TRIGGER_EDGE',
  };

  @override
  final Iterable<Type> types = const <Type>[PersistReason];
  @override
  final String wireName = 'PersistReason';

  @override
  Object serialize(Serializers serializers, PersistReason object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PersistReason deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PersistReason.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
