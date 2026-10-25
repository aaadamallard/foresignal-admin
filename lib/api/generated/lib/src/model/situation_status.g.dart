// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationStatus _$emerging = const SituationStatus._('emerging');
const SituationStatus _$active = const SituationStatus._('active');
const SituationStatus _$dormant = const SituationStatus._('dormant');
const SituationStatus _$closed = const SituationStatus._('closed');
const SituationStatus _$unknownDefaultOpenApi = const SituationStatus._(
  'unknownDefaultOpenApi',
);

SituationStatus _$valueOf(String name) {
  switch (name) {
    case 'emerging':
      return _$emerging;
    case 'active':
      return _$active;
    case 'dormant':
      return _$dormant;
    case 'closed':
      return _$closed;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SituationStatus> _$values = BuiltSet<SituationStatus>(
  const <SituationStatus>[
    _$emerging,
    _$active,
    _$dormant,
    _$closed,
    _$unknownDefaultOpenApi,
  ],
);

class _$SituationStatusMeta {
  const _$SituationStatusMeta();
  SituationStatus get emerging => _$emerging;
  SituationStatus get active => _$active;
  SituationStatus get dormant => _$dormant;
  SituationStatus get closed => _$closed;
  SituationStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SituationStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<SituationStatus> get values => _$values;
}

mixin _$SituationStatusMixin {
  // ignore: non_constant_identifier_names
  _$SituationStatusMeta get SituationStatus => const _$SituationStatusMeta();
}

Serializer<SituationStatus> _$situationStatusSerializer =
    _$SituationStatusSerializer();

class _$SituationStatusSerializer
    implements PrimitiveSerializer<SituationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'emerging': 'emerging',
    'active': 'active',
    'dormant': 'dormant',
    'closed': 'closed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'emerging': 'emerging',
    'active': 'active',
    'dormant': 'dormant',
    'closed': 'closed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationStatus];
  @override
  final String wireName = 'SituationStatus';

  @override
  Object serialize(
    Serializers serializers,
    SituationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
