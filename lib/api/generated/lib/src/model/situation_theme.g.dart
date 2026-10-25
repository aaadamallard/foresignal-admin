// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_theme.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationTheme _$maritime = const SituationTheme._('maritime');
const SituationTheme _$aviation = const SituationTheme._('aviation');
const SituationTheme _$conflict = const SituationTheme._('conflict');
const SituationTheme _$infrastructure = const SituationTheme._(
  'infrastructure',
);
const SituationTheme _$weather = const SituationTheme._('weather');
const SituationTheme _$cyber = const SituationTheme._('cyber');
const SituationTheme _$markets = const SituationTheme._('markets');
const SituationTheme _$health = const SituationTheme._('health');
const SituationTheme _$space = const SituationTheme._('space');
const SituationTheme _$mixed = const SituationTheme._('mixed');
const SituationTheme _$unknownDefaultOpenApi = const SituationTheme._(
  'unknownDefaultOpenApi',
);

SituationTheme _$valueOf(String name) {
  switch (name) {
    case 'maritime':
      return _$maritime;
    case 'aviation':
      return _$aviation;
    case 'conflict':
      return _$conflict;
    case 'infrastructure':
      return _$infrastructure;
    case 'weather':
      return _$weather;
    case 'cyber':
      return _$cyber;
    case 'markets':
      return _$markets;
    case 'health':
      return _$health;
    case 'space':
      return _$space;
    case 'mixed':
      return _$mixed;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SituationTheme> _$values =
    BuiltSet<SituationTheme>(const <SituationTheme>[
      _$maritime,
      _$aviation,
      _$conflict,
      _$infrastructure,
      _$weather,
      _$cyber,
      _$markets,
      _$health,
      _$space,
      _$mixed,
      _$unknownDefaultOpenApi,
    ]);

class _$SituationThemeMeta {
  const _$SituationThemeMeta();
  SituationTheme get maritime => _$maritime;
  SituationTheme get aviation => _$aviation;
  SituationTheme get conflict => _$conflict;
  SituationTheme get infrastructure => _$infrastructure;
  SituationTheme get weather => _$weather;
  SituationTheme get cyber => _$cyber;
  SituationTheme get markets => _$markets;
  SituationTheme get health => _$health;
  SituationTheme get space => _$space;
  SituationTheme get mixed => _$mixed;
  SituationTheme get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SituationTheme valueOf(String name) => _$valueOf(name);
  BuiltSet<SituationTheme> get values => _$values;
}

mixin _$SituationThemeMixin {
  // ignore: non_constant_identifier_names
  _$SituationThemeMeta get SituationTheme => const _$SituationThemeMeta();
}

Serializer<SituationTheme> _$situationThemeSerializer =
    _$SituationThemeSerializer();

class _$SituationThemeSerializer
    implements PrimitiveSerializer<SituationTheme> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'maritime': 'maritime',
    'aviation': 'aviation',
    'conflict': 'conflict',
    'infrastructure': 'infrastructure',
    'weather': 'weather',
    'cyber': 'cyber',
    'markets': 'markets',
    'health': 'health',
    'space': 'space',
    'mixed': 'mixed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'maritime': 'maritime',
    'aviation': 'aviation',
    'conflict': 'conflict',
    'infrastructure': 'infrastructure',
    'weather': 'weather',
    'cyber': 'cyber',
    'markets': 'markets',
    'health': 'health',
    'space': 'space',
    'mixed': 'mixed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationTheme];
  @override
  final String wireName = 'SituationTheme';

  @override
  Object serialize(
    Serializers serializers,
    SituationTheme object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationTheme deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationTheme.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
