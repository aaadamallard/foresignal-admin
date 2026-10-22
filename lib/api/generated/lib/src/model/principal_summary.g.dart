// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrincipalSummaryKindEnum _$principalSummaryKindEnum_person =
    const PrincipalSummaryKindEnum._('person');
const PrincipalSummaryKindEnum _$principalSummaryKindEnum_agent =
    const PrincipalSummaryKindEnum._('agent');
const PrincipalSummaryKindEnum _$principalSummaryKindEnum_service =
    const PrincipalSummaryKindEnum._('service');

PrincipalSummaryKindEnum _$principalSummaryKindEnumValueOf(String name) {
  switch (name) {
    case 'person':
      return _$principalSummaryKindEnum_person;
    case 'agent':
      return _$principalSummaryKindEnum_agent;
    case 'service':
      return _$principalSummaryKindEnum_service;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrincipalSummaryKindEnum> _$principalSummaryKindEnumValues =
    BuiltSet<PrincipalSummaryKindEnum>(const <PrincipalSummaryKindEnum>[
      _$principalSummaryKindEnum_person,
      _$principalSummaryKindEnum_agent,
      _$principalSummaryKindEnum_service,
    ]);

Serializer<PrincipalSummaryKindEnum> _$principalSummaryKindEnumSerializer =
    _$PrincipalSummaryKindEnumSerializer();

class _$PrincipalSummaryKindEnumSerializer
    implements PrimitiveSerializer<PrincipalSummaryKindEnum> {
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
  final Iterable<Type> types = const <Type>[PrincipalSummaryKindEnum];
  @override
  final String wireName = 'PrincipalSummaryKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrincipalSummaryKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrincipalSummaryKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrincipalSummaryKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrincipalSummary extends PrincipalSummary {
  @override
  final String id;
  @override
  final String handle;
  @override
  final String displayName;
  @override
  final PrincipalSummaryKindEnum kind;
  @override
  final String? avatarMediaId;

  factory _$PrincipalSummary([
    void Function(PrincipalSummaryBuilder)? updates,
  ]) => (PrincipalSummaryBuilder()..update(updates))._build();

  _$PrincipalSummary._({
    required this.id,
    required this.handle,
    required this.displayName,
    required this.kind,
    this.avatarMediaId,
  }) : super._();
  @override
  PrincipalSummary rebuild(void Function(PrincipalSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrincipalSummaryBuilder toBuilder() =>
      PrincipalSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrincipalSummary &&
        id == other.id &&
        handle == other.handle &&
        displayName == other.displayName &&
        kind == other.kind &&
        avatarMediaId == other.avatarMediaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, avatarMediaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrincipalSummary')
          ..add('id', id)
          ..add('handle', handle)
          ..add('displayName', displayName)
          ..add('kind', kind)
          ..add('avatarMediaId', avatarMediaId))
        .toString();
  }
}

class PrincipalSummaryBuilder
    implements Builder<PrincipalSummary, PrincipalSummaryBuilder> {
  _$PrincipalSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  PrincipalSummaryKindEnum? _kind;
  PrincipalSummaryKindEnum? get kind => _$this._kind;
  set kind(PrincipalSummaryKindEnum? kind) => _$this._kind = kind;

  String? _avatarMediaId;
  String? get avatarMediaId => _$this._avatarMediaId;
  set avatarMediaId(String? avatarMediaId) =>
      _$this._avatarMediaId = avatarMediaId;

  PrincipalSummaryBuilder() {
    PrincipalSummary._defaults(this);
  }

  PrincipalSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _handle = $v.handle;
      _displayName = $v.displayName;
      _kind = $v.kind;
      _avatarMediaId = $v.avatarMediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrincipalSummary other) {
    _$v = other as _$PrincipalSummary;
  }

  @override
  void update(void Function(PrincipalSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrincipalSummary build() => _build();

  _$PrincipalSummary _build() {
    final _$result =
        _$v ??
        _$PrincipalSummary._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'PrincipalSummary',
            'id',
          ),
          handle: BuiltValueNullFieldError.checkNotNull(
            handle,
            r'PrincipalSummary',
            'handle',
          ),
          displayName: BuiltValueNullFieldError.checkNotNull(
            displayName,
            r'PrincipalSummary',
            'displayName',
          ),
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'PrincipalSummary',
            'kind',
          ),
          avatarMediaId: avatarMediaId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
