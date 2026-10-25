// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icd_term.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IcdTerm _$almostNoChance = const IcdTerm._('almostNoChance');
const IcdTerm _$veryUnlikely = const IcdTerm._('veryUnlikely');
const IcdTerm _$unlikely = const IcdTerm._('unlikely');
const IcdTerm _$roughlyEvenChance = const IcdTerm._('roughlyEvenChance');
const IcdTerm _$likely = const IcdTerm._('likely');
const IcdTerm _$veryLikely = const IcdTerm._('veryLikely');
const IcdTerm _$almostCertain = const IcdTerm._('almostCertain');
const IcdTerm _$unknownDefaultOpenApi = const IcdTerm._(
  'unknownDefaultOpenApi',
);

IcdTerm _$valueOf(String name) {
  switch (name) {
    case 'almostNoChance':
      return _$almostNoChance;
    case 'veryUnlikely':
      return _$veryUnlikely;
    case 'unlikely':
      return _$unlikely;
    case 'roughlyEvenChance':
      return _$roughlyEvenChance;
    case 'likely':
      return _$likely;
    case 'veryLikely':
      return _$veryLikely;
    case 'almostCertain':
      return _$almostCertain;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<IcdTerm> _$values = BuiltSet<IcdTerm>(const <IcdTerm>[
  _$almostNoChance,
  _$veryUnlikely,
  _$unlikely,
  _$roughlyEvenChance,
  _$likely,
  _$veryLikely,
  _$almostCertain,
  _$unknownDefaultOpenApi,
]);

class _$IcdTermMeta {
  const _$IcdTermMeta();
  IcdTerm get almostNoChance => _$almostNoChance;
  IcdTerm get veryUnlikely => _$veryUnlikely;
  IcdTerm get unlikely => _$unlikely;
  IcdTerm get roughlyEvenChance => _$roughlyEvenChance;
  IcdTerm get likely => _$likely;
  IcdTerm get veryLikely => _$veryLikely;
  IcdTerm get almostCertain => _$almostCertain;
  IcdTerm get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  IcdTerm valueOf(String name) => _$valueOf(name);
  BuiltSet<IcdTerm> get values => _$values;
}

mixin _$IcdTermMixin {
  // ignore: non_constant_identifier_names
  _$IcdTermMeta get IcdTerm => const _$IcdTermMeta();
}

Serializer<IcdTerm> _$icdTermSerializer = _$IcdTermSerializer();

class _$IcdTermSerializer implements PrimitiveSerializer<IcdTerm> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'almostNoChance': 'almost no chance',
    'veryUnlikely': 'very unlikely',
    'unlikely': 'unlikely',
    'roughlyEvenChance': 'roughly even chance',
    'likely': 'likely',
    'veryLikely': 'very likely',
    'almostCertain': 'almost certain',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'almost no chance': 'almostNoChance',
    'very unlikely': 'veryUnlikely',
    'unlikely': 'unlikely',
    'roughly even chance': 'roughlyEvenChance',
    'likely': 'likely',
    'very likely': 'veryLikely',
    'almost certain': 'almostCertain',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IcdTerm];
  @override
  final String wireName = 'IcdTerm';

  @override
  Object serialize(
    Serializers serializers,
    IcdTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IcdTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IcdTerm.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
