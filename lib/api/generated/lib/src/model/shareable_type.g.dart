// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shareable_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShareableType _$investigation = const ShareableType._('investigation');
const ShareableType _$workspace = const ShareableType._('workspace');
const ShareableType _$chronicle = const ShareableType._('chronicle');
const ShareableType _$report = const ShareableType._('report');
const ShareableType _$savedSearch = const ShareableType._('savedSearch');
const ShareableType _$annotation = const ShareableType._('annotation');
const ShareableType _$attachment = const ShareableType._('attachment');
const ShareableType _$evidenceItem = const ShareableType._('evidenceItem');
const ShareableType _$tag = const ShareableType._('tag');

ShareableType _$valueOf(String name) {
  switch (name) {
    case 'investigation':
      return _$investigation;
    case 'workspace':
      return _$workspace;
    case 'chronicle':
      return _$chronicle;
    case 'report':
      return _$report;
    case 'savedSearch':
      return _$savedSearch;
    case 'annotation':
      return _$annotation;
    case 'attachment':
      return _$attachment;
    case 'evidenceItem':
      return _$evidenceItem;
    case 'tag':
      return _$tag;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShareableType> _$values =
    BuiltSet<ShareableType>(const <ShareableType>[
  _$investigation,
  _$workspace,
  _$chronicle,
  _$report,
  _$savedSearch,
  _$annotation,
  _$attachment,
  _$evidenceItem,
  _$tag,
]);

class _$ShareableTypeMeta {
  const _$ShareableTypeMeta();
  ShareableType get investigation => _$investigation;
  ShareableType get workspace => _$workspace;
  ShareableType get chronicle => _$chronicle;
  ShareableType get report => _$report;
  ShareableType get savedSearch => _$savedSearch;
  ShareableType get annotation => _$annotation;
  ShareableType get attachment => _$attachment;
  ShareableType get evidenceItem => _$evidenceItem;
  ShareableType get tag => _$tag;
  ShareableType valueOf(String name) => _$valueOf(name);
  BuiltSet<ShareableType> get values => _$values;
}

abstract class _$ShareableTypeMixin {
  // ignore: non_constant_identifier_names
  _$ShareableTypeMeta get ShareableType => const _$ShareableTypeMeta();
}

Serializer<ShareableType> _$shareableTypeSerializer =
    _$ShareableTypeSerializer();

class _$ShareableTypeSerializer implements PrimitiveSerializer<ShareableType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'investigation': 'investigation',
    'workspace': 'workspace',
    'chronicle': 'chronicle',
    'report': 'report',
    'savedSearch': 'saved-search',
    'annotation': 'annotation',
    'attachment': 'attachment',
    'evidenceItem': 'evidence-item',
    'tag': 'tag',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'investigation': 'investigation',
    'workspace': 'workspace',
    'chronicle': 'chronicle',
    'report': 'report',
    'saved-search': 'savedSearch',
    'annotation': 'annotation',
    'attachment': 'attachment',
    'evidence-item': 'evidenceItem',
    'tag': 'tag',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareableType];
  @override
  final String wireName = 'ShareableType';

  @override
  Object serialize(Serializers serializers, ShareableType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ShareableType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ShareableType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
