// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_collection_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialCollectionType _$complete = const SocialCollectionType._(
  'complete',
);
const SocialCollectionType _$paged = const SocialCollectionType._('paged');
const SocialCollectionType _$sampled = const SocialCollectionType._('sampled');

SocialCollectionType _$valueOf(String name) {
  switch (name) {
    case 'complete':
      return _$complete;
    case 'paged':
      return _$paged;
    case 'sampled':
      return _$sampled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialCollectionType> _$values = BuiltSet<SocialCollectionType>(
  const <SocialCollectionType>[_$complete, _$paged, _$sampled],
);

class _$SocialCollectionTypeMeta {
  const _$SocialCollectionTypeMeta();
  SocialCollectionType get complete => _$complete;
  SocialCollectionType get paged => _$paged;
  SocialCollectionType get sampled => _$sampled;
  SocialCollectionType valueOf(String name) => _$valueOf(name);
  BuiltSet<SocialCollectionType> get values => _$values;
}

mixin _$SocialCollectionTypeMixin {
  // ignore: non_constant_identifier_names
  _$SocialCollectionTypeMeta get SocialCollectionType =>
      const _$SocialCollectionTypeMeta();
}

Serializer<SocialCollectionType> _$socialCollectionTypeSerializer =
    _$SocialCollectionTypeSerializer();

class _$SocialCollectionTypeSerializer
    implements PrimitiveSerializer<SocialCollectionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'complete': 'complete',
    'paged': 'paged',
    'sampled': 'sampled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'complete': 'complete',
    'paged': 'paged',
    'sampled': 'sampled',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialCollectionType];
  @override
  final String wireName = 'SocialCollectionType';

  @override
  Object serialize(
    Serializers serializers,
    SocialCollectionType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialCollectionType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialCollectionType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
