// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_acl.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectAcl extends ObjectAcl {
  @override
  final String ref;
  @override
  final ShareableType type;
  @override
  final PrincipalSummary owner;
  @override
  final Visibility visibility;
  @override
  final String tlp;
  @override
  final BuiltList<ObjectAclEntry> entries;
  @override
  final DateTime? updatedAt;

  factory _$ObjectAcl([void Function(ObjectAclBuilder)? updates]) =>
      (ObjectAclBuilder()..update(updates))._build();

  _$ObjectAcl._(
      {required this.ref,
      required this.type,
      required this.owner,
      required this.visibility,
      required this.tlp,
      required this.entries,
      this.updatedAt})
      : super._();
  @override
  ObjectAcl rebuild(void Function(ObjectAclBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectAclBuilder toBuilder() => ObjectAclBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectAcl &&
        ref == other.ref &&
        type == other.type &&
        owner == other.owner &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        entries == other.entries &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectAcl')
          ..add('ref', ref)
          ..add('type', type)
          ..add('owner', owner)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('entries', entries)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ObjectAclBuilder implements Builder<ObjectAcl, ObjectAclBuilder> {
  _$ObjectAcl? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ShareableType? _type;
  ShareableType? get type => _$this._type;
  set type(ShareableType? type) => _$this._type = type;

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

  ListBuilder<ObjectAclEntry>? _entries;
  ListBuilder<ObjectAclEntry> get entries =>
      _$this._entries ??= ListBuilder<ObjectAclEntry>();
  set entries(ListBuilder<ObjectAclEntry>? entries) =>
      _$this._entries = entries;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ObjectAclBuilder() {
    ObjectAcl._defaults(this);
  }

  ObjectAclBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _type = $v.type;
      _owner = $v.owner.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _entries = $v.entries.toBuilder();
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectAcl other) {
    _$v = other as _$ObjectAcl;
  }

  @override
  void update(void Function(ObjectAclBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectAcl build() => _build();

  _$ObjectAcl _build() {
    _$ObjectAcl _$result;
    try {
      _$result = _$v ??
          _$ObjectAcl._(
            ref:
                BuiltValueNullFieldError.checkNotNull(ref, r'ObjectAcl', 'ref'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ObjectAcl', 'type'),
            owner: owner.build(),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'ObjectAcl', 'visibility'),
            tlp:
                BuiltValueNullFieldError.checkNotNull(tlp, r'ObjectAcl', 'tlp'),
            entries: entries.build(),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();

        _$failedField = 'entries';
        entries.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ObjectAcl', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
