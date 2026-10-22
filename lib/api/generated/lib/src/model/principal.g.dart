// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrincipalKindEnum _$principalKindEnum_person =
    const PrincipalKindEnum._('person');
const PrincipalKindEnum _$principalKindEnum_agent =
    const PrincipalKindEnum._('agent');
const PrincipalKindEnum _$principalKindEnum_service =
    const PrincipalKindEnum._('service');

PrincipalKindEnum _$principalKindEnumValueOf(String name) {
  switch (name) {
    case 'person':
      return _$principalKindEnum_person;
    case 'agent':
      return _$principalKindEnum_agent;
    case 'service':
      return _$principalKindEnum_service;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrincipalKindEnum> _$principalKindEnumValues =
    BuiltSet<PrincipalKindEnum>(const <PrincipalKindEnum>[
  _$principalKindEnum_person,
  _$principalKindEnum_agent,
  _$principalKindEnum_service,
]);

Serializer<PrincipalKindEnum> _$principalKindEnumSerializer =
    _$PrincipalKindEnumSerializer();

class _$PrincipalKindEnumSerializer
    implements PrimitiveSerializer<PrincipalKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'person': 'person',
    'agent': 'agent',
    'service': 'service',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'person': 'person',
    'agent': 'agent',
    'service': 'service',
  };

  @override
  final Iterable<Type> types = const <Type>[PrincipalKindEnum];
  @override
  final String wireName = 'PrincipalKindEnum';

  @override
  Object serialize(Serializers serializers, PrincipalKindEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrincipalKindEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrincipalKindEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Principal extends Principal {
  @override
  final String id;
  @override
  final String handle;
  @override
  final String displayName;
  @override
  final PrincipalKindEnum kind;
  @override
  final String? email;
  @override
  final String? avatarMediaId;
  @override
  final String? timezone;
  @override
  final String? organization;
  @override
  final bool disabled;
  @override
  final int? tokenCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Principal([void Function(PrincipalBuilder)? updates]) =>
      (PrincipalBuilder()..update(updates))._build();

  _$Principal._(
      {required this.id,
      required this.handle,
      required this.displayName,
      required this.kind,
      this.email,
      this.avatarMediaId,
      this.timezone,
      this.organization,
      required this.disabled,
      this.tokenCount,
      required this.createdAt,
      this.updatedAt})
      : super._();
  @override
  Principal rebuild(void Function(PrincipalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrincipalBuilder toBuilder() => PrincipalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Principal &&
        id == other.id &&
        handle == other.handle &&
        displayName == other.displayName &&
        kind == other.kind &&
        email == other.email &&
        avatarMediaId == other.avatarMediaId &&
        timezone == other.timezone &&
        organization == other.organization &&
        disabled == other.disabled &&
        tokenCount == other.tokenCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, avatarMediaId.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, organization.hashCode);
    _$hash = $jc(_$hash, disabled.hashCode);
    _$hash = $jc(_$hash, tokenCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Principal')
          ..add('id', id)
          ..add('handle', handle)
          ..add('displayName', displayName)
          ..add('kind', kind)
          ..add('email', email)
          ..add('avatarMediaId', avatarMediaId)
          ..add('timezone', timezone)
          ..add('organization', organization)
          ..add('disabled', disabled)
          ..add('tokenCount', tokenCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PrincipalBuilder implements Builder<Principal, PrincipalBuilder> {
  _$Principal? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  PrincipalKindEnum? _kind;
  PrincipalKindEnum? get kind => _$this._kind;
  set kind(PrincipalKindEnum? kind) => _$this._kind = kind;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _avatarMediaId;
  String? get avatarMediaId => _$this._avatarMediaId;
  set avatarMediaId(String? avatarMediaId) =>
      _$this._avatarMediaId = avatarMediaId;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _organization;
  String? get organization => _$this._organization;
  set organization(String? organization) => _$this._organization = organization;

  bool? _disabled;
  bool? get disabled => _$this._disabled;
  set disabled(bool? disabled) => _$this._disabled = disabled;

  int? _tokenCount;
  int? get tokenCount => _$this._tokenCount;
  set tokenCount(int? tokenCount) => _$this._tokenCount = tokenCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PrincipalBuilder() {
    Principal._defaults(this);
  }

  PrincipalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _handle = $v.handle;
      _displayName = $v.displayName;
      _kind = $v.kind;
      _email = $v.email;
      _avatarMediaId = $v.avatarMediaId;
      _timezone = $v.timezone;
      _organization = $v.organization;
      _disabled = $v.disabled;
      _tokenCount = $v.tokenCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Principal other) {
    _$v = other as _$Principal;
  }

  @override
  void update(void Function(PrincipalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Principal build() => _build();

  _$Principal _build() {
    final _$result = _$v ??
        _$Principal._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Principal', 'id'),
          handle: BuiltValueNullFieldError.checkNotNull(
              handle, r'Principal', 'handle'),
          displayName: BuiltValueNullFieldError.checkNotNull(
              displayName, r'Principal', 'displayName'),
          kind:
              BuiltValueNullFieldError.checkNotNull(kind, r'Principal', 'kind'),
          email: email,
          avatarMediaId: avatarMediaId,
          timezone: timezone,
          organization: organization,
          disabled: BuiltValueNullFieldError.checkNotNull(
              disabled, r'Principal', 'disabled'),
          tokenCount: tokenCount,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Principal', 'createdAt'),
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
