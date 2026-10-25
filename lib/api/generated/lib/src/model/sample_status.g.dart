// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SampleStatus _$ok = const SampleStatus._('ok');
const SampleStatus _$noCoverage = const SampleStatus._('noCoverage');
const SampleStatus _$noData = const SampleStatus._('noData');
const SampleStatus _$stale = const SampleStatus._('stale');
const SampleStatus _$unavailable = const SampleStatus._('unavailable');
const SampleStatus _$stalePosition = const SampleStatus._('stalePosition');
const SampleStatus _$unknownDefaultOpenApi = const SampleStatus._(
  'unknownDefaultOpenApi',
);

SampleStatus _$valueOf(String name) {
  switch (name) {
    case 'ok':
      return _$ok;
    case 'noCoverage':
      return _$noCoverage;
    case 'noData':
      return _$noData;
    case 'stale':
      return _$stale;
    case 'unavailable':
      return _$unavailable;
    case 'stalePosition':
      return _$stalePosition;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SampleStatus> _$values =
    BuiltSet<SampleStatus>(const <SampleStatus>[
      _$ok,
      _$noCoverage,
      _$noData,
      _$stale,
      _$unavailable,
      _$stalePosition,
      _$unknownDefaultOpenApi,
    ]);

class _$SampleStatusMeta {
  const _$SampleStatusMeta();
  SampleStatus get ok => _$ok;
  SampleStatus get noCoverage => _$noCoverage;
  SampleStatus get noData => _$noData;
  SampleStatus get stale => _$stale;
  SampleStatus get unavailable => _$unavailable;
  SampleStatus get stalePosition => _$stalePosition;
  SampleStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SampleStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<SampleStatus> get values => _$values;
}

mixin _$SampleStatusMixin {
  // ignore: non_constant_identifier_names
  _$SampleStatusMeta get SampleStatus => const _$SampleStatusMeta();
}

Serializer<SampleStatus> _$sampleStatusSerializer = _$SampleStatusSerializer();

class _$SampleStatusSerializer implements PrimitiveSerializer<SampleStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'noCoverage': 'no-coverage',
    'noData': 'no-data',
    'stale': 'stale',
    'unavailable': 'unavailable',
    'stalePosition': 'stale-position',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'no-coverage': 'noCoverage',
    'no-data': 'noData',
    'stale': 'stale',
    'unavailable': 'unavailable',
    'stale-position': 'stalePosition',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SampleStatus];
  @override
  final String wireName = 'SampleStatus';

  @override
  Object serialize(
    Serializers serializers,
    SampleStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SampleStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SampleStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
