// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TagNamespaceEnum _$tagNamespaceEnum_personal = const TagNamespaceEnum._(
  'personal',
);
const TagNamespaceEnum _$tagNamespaceEnum_shared = const TagNamespaceEnum._(
  'shared',
);
const TagNamespaceEnum _$tagNamespaceEnum_unknownDefaultOpenApi =
    const TagNamespaceEnum._('unknownDefaultOpenApi');

TagNamespaceEnum _$tagNamespaceEnumValueOf(String name) {
  switch (name) {
    case 'personal':
      return _$tagNamespaceEnum_personal;
    case 'shared':
      return _$tagNamespaceEnum_shared;
    case 'unknownDefaultOpenApi':
      return _$tagNamespaceEnum_unknownDefaultOpenApi;
    default:
      return _$tagNamespaceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<TagNamespaceEnum> _$tagNamespaceEnumValues =
    BuiltSet<TagNamespaceEnum>(const <TagNamespaceEnum>[
      _$tagNamespaceEnum_personal,
      _$tagNamespaceEnum_shared,
      _$tagNamespaceEnum_unknownDefaultOpenApi,
    ]);

Serializer<TagNamespaceEnum> _$tagNamespaceEnumSerializer =
    _$TagNamespaceEnumSerializer();

class _$TagNamespaceEnumSerializer
    implements PrimitiveSerializer<TagNamespaceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'personal': 'personal',
    'shared': 'shared',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'personal': 'personal',
    'shared': 'shared',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TagNamespaceEnum];
  @override
  final String wireName = 'TagNamespaceEnum';

  @override
  Object serialize(
    Serializers serializers,
    TagNamespaceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TagNamespaceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TagNamespaceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Tag extends Tag {
  @override
  final String id;
  @override
  final String name;
  @override
  final TagNamespaceEnum namespace;
  @override
  final String? color;
  @override
  final String? description;
  @override
  final PrincipalSummary owner;
  @override
  final Visibility visibility;
  @override
  final String? tlp;
  @override
  final int? objectCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Tag([void Function(TagBuilder)? updates]) =>
      (TagBuilder()..update(updates))._build();

  _$Tag._({
    required this.id,
    required this.name,
    required this.namespace,
    this.color,
    this.description,
    required this.owner,
    required this.visibility,
    this.tlp,
    this.objectCount,
    required this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Tag rebuild(void Function(TagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag &&
        id == other.id &&
        name == other.name &&
        namespace == other.namespace &&
        color == other.color &&
        description == other.description &&
        owner == other.owner &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        objectCount == other.objectCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, namespace.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, objectCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Tag')
          ..add('id', id)
          ..add('name', name)
          ..add('namespace', namespace)
          ..add('color', color)
          ..add('description', description)
          ..add('owner', owner)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('objectCount', objectCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TagNamespaceEnum? _namespace;
  TagNamespaceEnum? get namespace => _$this._namespace;
  set namespace(TagNamespaceEnum? namespace) => _$this._namespace = namespace;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  PrincipalSummaryBuilder? _owner;
  PrincipalSummaryBuilder get owner =>
      _$this._owner ??= PrincipalSummaryBuilder();
  set owner(PrincipalSummaryBuilder? owner) => _$this._owner = owner;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  int? _objectCount;
  int? get objectCount => _$this._objectCount;
  set objectCount(int? objectCount) => _$this._objectCount = objectCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  TagBuilder() {
    Tag._defaults(this);
  }

  TagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _namespace = $v.namespace;
      _color = $v.color;
      _description = $v.description;
      _owner = $v.owner.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _objectCount = $v.objectCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tag other) {
    _$v = other as _$Tag;
  }

  @override
  void update(void Function(TagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tag build() => _build();

  _$Tag _build() {
    _$Tag _$result;
    try {
      _$result =
          _$v ??
          _$Tag._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Tag', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Tag', 'name'),
            namespace: BuiltValueNullFieldError.checkNotNull(
              namespace,
              r'Tag',
              'namespace',
            ),
            color: color,
            description: description,
            owner: owner.build(),
            visibility: BuiltValueNullFieldError.checkNotNull(
              visibility,
              r'Tag',
              'visibility',
            ),
            tlp: tlp,
            objectCount: objectCount,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Tag',
              'createdAt',
            ),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Tag', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
