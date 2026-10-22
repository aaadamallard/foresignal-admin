// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finding_severity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FindingSeverity _$info = const FindingSeverity._('info');
const FindingSeverity _$notable = const FindingSeverity._('notable');
const FindingSeverity _$significant = const FindingSeverity._('significant');

FindingSeverity _$valueOf(String name) {
  switch (name) {
    case 'info':
      return _$info;
    case 'notable':
      return _$notable;
    case 'significant':
      return _$significant;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FindingSeverity> _$values = BuiltSet<FindingSeverity>(
  const <FindingSeverity>[_$info, _$notable, _$significant],
);

class _$FindingSeverityMeta {
  const _$FindingSeverityMeta();
  FindingSeverity get info => _$info;
  FindingSeverity get notable => _$notable;
  FindingSeverity get significant => _$significant;
  FindingSeverity valueOf(String name) => _$valueOf(name);
  BuiltSet<FindingSeverity> get values => _$values;
}

mixin _$FindingSeverityMixin {
  // ignore: non_constant_identifier_names
  _$FindingSeverityMeta get FindingSeverity => const _$FindingSeverityMeta();
}

Serializer<FindingSeverity> _$findingSeveritySerializer =
    _$FindingSeveritySerializer();

class _$FindingSeveritySerializer
    implements PrimitiveSerializer<FindingSeverity> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'notable': 'notable',
    'significant': 'significant',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'notable': 'notable',
    'significant': 'significant',
  };

  @override
  final Iterable<Type> types = const <Type>[FindingSeverity];
  @override
  final String wireName = 'FindingSeverity';

  @override
  Object serialize(
    Serializers serializers,
    FindingSeverity object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FindingSeverity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FindingSeverity.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
