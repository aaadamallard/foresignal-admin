// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagPatch extends TagPatch {
  @override
  final String? name;
  @override
  final String? color;
  @override
  final String? description;
  @override
  final Visibility? visibility;
  @override
  final String? tlp;

  factory _$TagPatch([void Function(TagPatchBuilder)? updates]) =>
      (TagPatchBuilder()..update(updates))._build();

  _$TagPatch._({
    this.name,
    this.color,
    this.description,
    this.visibility,
    this.tlp,
  }) : super._();
  @override
  TagPatch rebuild(void Function(TagPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagPatchBuilder toBuilder() => TagPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagPatch &&
        name == other.name &&
        color == other.color &&
        description == other.description &&
        visibility == other.visibility &&
        tlp == other.tlp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagPatch')
          ..add('name', name)
          ..add('color', color)
          ..add('description', description)
          ..add('visibility', visibility)
          ..add('tlp', tlp))
        .toString();
  }
}

class TagPatchBuilder implements Builder<TagPatch, TagPatchBuilder> {
  _$TagPatch? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  TagPatchBuilder() {
    TagPatch._defaults(this);
  }

  TagPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _color = $v.color;
      _description = $v.description;
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagPatch other) {
    _$v = other as _$TagPatch;
  }

  @override
  void update(void Function(TagPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagPatch build() => _build();

  _$TagPatch _build() {
    final _$result =
        _$v ??
        _$TagPatch._(
          name: name,
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
