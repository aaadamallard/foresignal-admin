// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_tier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HistoryTier _$STANDARD = const HistoryTier._('STANDARD');
const HistoryTier _$TRACK = const HistoryTier._('TRACK');

HistoryTier _$valueOf(String name) {
  switch (name) {
    case 'STANDARD':
      return _$STANDARD;
    case 'TRACK':
      return _$TRACK;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HistoryTier> _$values = BuiltSet<HistoryTier>(
  const <HistoryTier>[_$STANDARD, _$TRACK],
);

class _$HistoryTierMeta {
  const _$HistoryTierMeta();
  HistoryTier get STANDARD => _$STANDARD;
  HistoryTier get TRACK => _$TRACK;
  HistoryTier valueOf(String name) => _$valueOf(name);
  BuiltSet<HistoryTier> get values => _$values;
}

mixin _$HistoryTierMixin {
  // ignore: non_constant_identifier_names
  _$HistoryTierMeta get HistoryTier => const _$HistoryTierMeta();
}

Serializer<HistoryTier> _$historyTierSerializer = _$HistoryTierSerializer();

class _$HistoryTierSerializer implements PrimitiveSerializer<HistoryTier> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'STANDARD': 'STANDARD',
    'TRACK': 'TRACK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'STANDARD': 'STANDARD',
    'TRACK': 'TRACK',
  };

  @override
  final Iterable<Type> types = const <Type>[HistoryTier];
  @override
  final String wireName = 'HistoryTier';

  @override
  Object serialize(
    Serializers serializers,
    HistoryTier object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HistoryTier deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HistoryTier.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
