// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confidence_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConfidenceLevel _$low = const ConfidenceLevel._('low');
const ConfidenceLevel _$moderate = const ConfidenceLevel._('moderate');
const ConfidenceLevel _$high = const ConfidenceLevel._('high');

ConfidenceLevel _$valueOf(String name) {
  switch (name) {
    case 'low':
      return _$low;
    case 'moderate':
      return _$moderate;
    case 'high':
      return _$high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConfidenceLevel> _$values =
    BuiltSet<ConfidenceLevel>(const <ConfidenceLevel>[
  _$low,
  _$moderate,
  _$high,
]);

class _$ConfidenceLevelMeta {
  const _$ConfidenceLevelMeta();
  ConfidenceLevel get low => _$low;
  ConfidenceLevel get moderate => _$moderate;
  ConfidenceLevel get high => _$high;
  ConfidenceLevel valueOf(String name) => _$valueOf(name);
  BuiltSet<ConfidenceLevel> get values => _$values;
}

abstract class _$ConfidenceLevelMixin {
  // ignore: non_constant_identifier_names
  _$ConfidenceLevelMeta get ConfidenceLevel => const _$ConfidenceLevelMeta();
}

Serializer<ConfidenceLevel> _$confidenceLevelSerializer =
    _$ConfidenceLevelSerializer();

class _$ConfidenceLevelSerializer
    implements PrimitiveSerializer<ConfidenceLevel> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'moderate': 'moderate',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'moderate': 'moderate',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[ConfidenceLevel];
  @override
  final String wireName = 'ConfidenceLevel';

  @override
  Object serialize(Serializers serializers, ConfidenceLevel object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConfidenceLevel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConfidenceLevel.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
