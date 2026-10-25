// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visibility.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Visibility _$private = const Visibility._('private');
const Visibility _$shared = const Visibility._('shared');
const Visibility _$instance = const Visibility._('instance');
const Visibility _$unknownDefaultOpenApi = const Visibility._(
  'unknownDefaultOpenApi',
);

Visibility _$valueOf(String name) {
  switch (name) {
    case 'private':
      return _$private;
    case 'shared':
      return _$shared;
    case 'instance':
      return _$instance;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<Visibility> _$values = BuiltSet<Visibility>(const <Visibility>[
  _$private,
  _$shared,
  _$instance,
  _$unknownDefaultOpenApi,
]);

class _$VisibilityMeta {
  const _$VisibilityMeta();
  Visibility get private => _$private;
  Visibility get shared => _$shared;
  Visibility get instance => _$instance;
  Visibility get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  Visibility valueOf(String name) => _$valueOf(name);
  BuiltSet<Visibility> get values => _$values;
}

mixin _$VisibilityMixin {
  // ignore: non_constant_identifier_names
  _$VisibilityMeta get Visibility => const _$VisibilityMeta();
}

Serializer<Visibility> _$visibilitySerializer = _$VisibilitySerializer();

class _$VisibilitySerializer implements PrimitiveSerializer<Visibility> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'private': 'private',
    'shared': 'shared',
    'instance': 'instance',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'private': 'private',
    'shared': 'shared',
    'instance': 'instance',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[Visibility];
  @override
  final String wireName = 'Visibility';

  @override
  Object serialize(
    Serializers serializers,
    Visibility object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  Visibility deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => Visibility.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
