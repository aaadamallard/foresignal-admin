// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_acl_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectAclInput extends ObjectAclInput {
  @override
  final Visibility? visibility;
  @override
  final BuiltList<ObjectAclEntryInput> entries;
  @override
  final String? owner;
  @override
  final String? tlp;

  factory _$ObjectAclInput([void Function(ObjectAclInputBuilder)? updates]) =>
      (ObjectAclInputBuilder()..update(updates))._build();

  _$ObjectAclInput._(
      {this.visibility, required this.entries, this.owner, this.tlp})
      : super._();
  @override
  ObjectAclInput rebuild(void Function(ObjectAclInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectAclInputBuilder toBuilder() => ObjectAclInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectAclInput &&
        visibility == other.visibility &&
        entries == other.entries &&
        owner == other.owner &&
        tlp == other.tlp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectAclInput')
          ..add('visibility', visibility)
          ..add('entries', entries)
          ..add('owner', owner)
          ..add('tlp', tlp))
        .toString();
  }
}

class ObjectAclInputBuilder
    implements Builder<ObjectAclInput, ObjectAclInputBuilder> {
  _$ObjectAclInput? _$v;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  ListBuilder<ObjectAclEntryInput>? _entries;
  ListBuilder<ObjectAclEntryInput> get entries =>
      _$this._entries ??= ListBuilder<ObjectAclEntryInput>();
  set entries(ListBuilder<ObjectAclEntryInput>? entries) =>
      _$this._entries = entries;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ObjectAclInputBuilder() {
    ObjectAclInput._defaults(this);
  }

  ObjectAclInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _visibility = $v.visibility;
      _entries = $v.entries.toBuilder();
      _owner = $v.owner;
      _tlp = $v.tlp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectAclInput other) {
    _$v = other as _$ObjectAclInput;
  }

  @override
  void update(void Function(ObjectAclInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectAclInput build() => _build();

  _$ObjectAclInput _build() {
    _$ObjectAclInput _$result;
    try {
      _$result = _$v ??
          _$ObjectAclInput._(
            visibility: visibility,
            entries: entries.build(),
            owner: owner,
            tlp: tlp,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        entries.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ObjectAclInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
