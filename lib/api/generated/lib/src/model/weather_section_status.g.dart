// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_section_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WeatherSectionStatus _$ok = const WeatherSectionStatus._('ok');
const WeatherSectionStatus _$stale = const WeatherSectionStatus._('stale');
const WeatherSectionStatus _$noCoverage = const WeatherSectionStatus._(
  'noCoverage',
);
const WeatherSectionStatus _$unavailable = const WeatherSectionStatus._(
  'unavailable',
);
const WeatherSectionStatus _$unknownDefaultOpenApi =
    const WeatherSectionStatus._('unknownDefaultOpenApi');

WeatherSectionStatus _$valueOf(String name) {
  switch (name) {
    case 'ok':
      return _$ok;
    case 'stale':
      return _$stale;
    case 'noCoverage':
      return _$noCoverage;
    case 'unavailable':
      return _$unavailable;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<WeatherSectionStatus> _$values = BuiltSet<WeatherSectionStatus>(
  const <WeatherSectionStatus>[
    _$ok,
    _$stale,
    _$noCoverage,
    _$unavailable,
    _$unknownDefaultOpenApi,
  ],
);

class _$WeatherSectionStatusMeta {
  const _$WeatherSectionStatusMeta();
  WeatherSectionStatus get ok => _$ok;
  WeatherSectionStatus get stale => _$stale;
  WeatherSectionStatus get noCoverage => _$noCoverage;
  WeatherSectionStatus get unavailable => _$unavailable;
  WeatherSectionStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  WeatherSectionStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<WeatherSectionStatus> get values => _$values;
}

mixin _$WeatherSectionStatusMixin {
  // ignore: non_constant_identifier_names
  _$WeatherSectionStatusMeta get WeatherSectionStatus =>
      const _$WeatherSectionStatusMeta();
}

Serializer<WeatherSectionStatus> _$weatherSectionStatusSerializer =
    _$WeatherSectionStatusSerializer();

class _$WeatherSectionStatusSerializer
    implements PrimitiveSerializer<WeatherSectionStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'stale': 'stale',
    'noCoverage': 'no-coverage',
    'unavailable': 'unavailable',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'stale': 'stale',
    'no-coverage': 'noCoverage',
    'unavailable': 'unavailable',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[WeatherSectionStatus];
  @override
  final String wireName = 'WeatherSectionStatus';

  @override
  Object serialize(
    Serializers serializers,
    WeatherSectionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WeatherSectionStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WeatherSectionStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
