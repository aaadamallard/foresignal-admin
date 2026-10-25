// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrincipalInputKindEnum _$principalInputKindEnum_person =
    const PrincipalInputKindEnum._('person');
const PrincipalInputKindEnum _$principalInputKindEnum_agent =
    const PrincipalInputKindEnum._('agent');
const PrincipalInputKindEnum _$principalInputKindEnum_service =
    const PrincipalInputKindEnum._('service');
const PrincipalInputKindEnum _$principalInputKindEnum_unknownDefaultOpenApi =
    const PrincipalInputKindEnum._('unknownDefaultOpenApi');

PrincipalInputKindEnum _$principalInputKindEnumValueOf(String name) {
  switch (name) {
    case 'person':
      return _$principalInputKindEnum_person;
    case 'agent':
      return _$principalInputKindEnum_agent;
    case 'service':
      return _$principalInputKindEnum_service;
    case 'unknownDefaultOpenApi':
      return _$principalInputKindEnum_unknownDefaultOpenApi;
    default:
      return _$principalInputKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrincipalInputKindEnum> _$principalInputKindEnumValues =
    BuiltSet<PrincipalInputKindEnum>(const <PrincipalInputKindEnum>[
      _$principalInputKindEnum_person,
      _$principalInputKindEnum_agent,
      _$principalInputKindEnum_service,
      _$principalInputKindEnum_unknownDefaultOpenApi,
    ]);

Serializer<PrincipalInputKindEnum> _$principalInputKindEnumSerializer =
    _$PrincipalInputKindEnumSerializer();

class _$PrincipalInputKindEnumSerializer
    implements PrimitiveSerializer<PrincipalInputKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'person': 'person',
    'agent': 'agent',
    'service': 'service',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'person': 'person',
    'agent': 'agent',
    'service': 'service',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrincipalInputKindEnum];
  @override
  final String wireName = 'PrincipalInputKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrincipalInputKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrincipalInputKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrincipalInputKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrincipalInput extends PrincipalInput {
  @override
  final String handle;
  @override
  final String displayName;
  @override
  final PrincipalInputKindEnum kind;
  @override
  final String? email;
  @override
  final String? avatarMediaId;
  @override
  final String? timezone;
  @override
  final String? organization;

  factory _$PrincipalInput([void Function(PrincipalInputBuilder)? updates]) =>
      (PrincipalInputBuilder()..update(updates))._build();

  _$PrincipalInput._({
    required this.handle,
    required this.displayName,
    required this.kind,
    this.email,
    this.avatarMediaId,
    this.timezone,
    this.organization,
  }) : super._();
  @override
  PrincipalInput rebuild(void Function(PrincipalInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrincipalInputBuilder toBuilder() => PrincipalInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrincipalInput &&
        handle == other.handle &&
        displayName == other.displayName &&
        kind == other.kind &&
        email == other.email &&
        avatarMediaId == other.avatarMediaId &&
        timezone == other.timezone &&
        organization == other.organization;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, avatarMediaId.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, organization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrincipalInput')
          ..add('handle', handle)
          ..add('displayName', displayName)
          ..add('kind', kind)
          ..add('email', email)
          ..add('avatarMediaId', avatarMediaId)
          ..add('timezone', timezone)
          ..add('organization', organization))
        .toString();
  }
}

class PrincipalInputBuilder
    implements Builder<PrincipalInput, PrincipalInputBuilder> {
  _$PrincipalInput? _$v;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  PrincipalInputKindEnum? _kind;
  PrincipalInputKindEnum? get kind => _$this._kind;
  set kind(PrincipalInputKindEnum? kind) => _$this._kind = kind;

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

  PrincipalInputBuilder() {
    PrincipalInput._defaults(this);
  }

  PrincipalInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _handle = $v.handle;
      _displayName = $v.displayName;
      _kind = $v.kind;
      _email = $v.email;
      _avatarMediaId = $v.avatarMediaId;
      _timezone = $v.timezone;
      _organization = $v.organization;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrincipalInput other) {
    _$v = other as _$PrincipalInput;
  }

  @override
  void update(void Function(PrincipalInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrincipalInput build() => _build();

  _$PrincipalInput _build() {
    final _$result =
        _$v ??
        _$PrincipalInput._(
          handle: BuiltValueNullFieldError.checkNotNull(
            handle,
            r'PrincipalInput',
            'handle',
          ),
          displayName: BuiltValueNullFieldError.checkNotNull(
            displayName,
            r'PrincipalInput',
            'displayName',
          ),
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'PrincipalInput',
            'kind',
          ),
          email: email,
          avatarMediaId: avatarMediaId,
          timezone: timezone,
          organization: organization,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
