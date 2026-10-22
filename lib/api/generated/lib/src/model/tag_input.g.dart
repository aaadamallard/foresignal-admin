// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TagInputNamespaceEnum _$tagInputNamespaceEnum_personal =
    const TagInputNamespaceEnum._('personal');
const TagInputNamespaceEnum _$tagInputNamespaceEnum_shared =
    const TagInputNamespaceEnum._('shared');

TagInputNamespaceEnum _$tagInputNamespaceEnumValueOf(String name) {
  switch (name) {
    case 'personal':
      return _$tagInputNamespaceEnum_personal;
    case 'shared':
      return _$tagInputNamespaceEnum_shared;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TagInputNamespaceEnum> _$tagInputNamespaceEnumValues =
    BuiltSet<TagInputNamespaceEnum>(const <TagInputNamespaceEnum>[
      _$tagInputNamespaceEnum_personal,
      _$tagInputNamespaceEnum_shared,
    ]);

Serializer<TagInputNamespaceEnum> _$tagInputNamespaceEnumSerializer =
    _$TagInputNamespaceEnumSerializer();

class _$TagInputNamespaceEnumSerializer
    implements PrimitiveSerializer<TagInputNamespaceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'personal': 'personal',
    'shared': 'shared',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'personal': 'personal',
    'shared': 'shared',
  };

  @override
  final Iterable<Type> types = const <Type>[TagInputNamespaceEnum];
  @override
  final String wireName = 'TagInputNamespaceEnum';

  @override
  Object serialize(
    Serializers serializers,
    TagInputNamespaceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TagInputNamespaceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TagInputNamespaceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TagInput extends TagInput {
  @override
  final String name;
  @override
  final TagInputNamespaceEnum? namespace;
  @override
  final String? color;
  @override
  final String? description;
  @override
  final Visibility? visibility;
  @override
  final String? tlp;

  factory _$TagInput([void Function(TagInputBuilder)? updates]) =>
      (TagInputBuilder()..update(updates))._build();

  _$TagInput._({
    required this.name,
    this.namespace,
    this.color,
    this.description,
    this.visibility,
    this.tlp,
  }) : super._();
  @override
  TagInput rebuild(void Function(TagInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagInputBuilder toBuilder() => TagInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagInput &&
        name == other.name &&
        namespace == other.namespace &&
        color == other.color &&
        description == other.description &&
        visibility == other.visibility &&
        tlp == other.tlp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, namespace.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagInput')
          ..add('name', name)
          ..add('namespace', namespace)
          ..add('color', color)
          ..add('description', description)
          ..add('visibility', visibility)
          ..add('tlp', tlp))
        .toString();
  }
}

class TagInputBuilder implements Builder<TagInput, TagInputBuilder> {
  _$TagInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TagInputNamespaceEnum? _namespace;
  TagInputNamespaceEnum? get namespace => _$this._namespace;
  set namespace(TagInputNamespaceEnum? namespace) =>
      _$this._namespace = namespace;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  TagInputBuilder() {
    TagInput._defaults(this);
  }

  TagInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _namespace = $v.namespace;
      _color = $v.color;
      _description = $v.description;
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagInput other) {
    _$v = other as _$TagInput;
  }

  @override
  void update(void Function(TagInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagInput build() => _build();

  _$TagInput _build() {
    final _$result =
        _$v ??
        _$TagInput._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'TagInput',
            'name',
          ),
          namespace: namespace,
          color: color,
          description: description,
          visibility: visibility,
          tlp: tlp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
