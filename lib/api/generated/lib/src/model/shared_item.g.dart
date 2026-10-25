// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SharedItemRoleEnum _$sharedItemRoleEnum_viewer =
    const SharedItemRoleEnum._('viewer');
const SharedItemRoleEnum _$sharedItemRoleEnum_commenter =
    const SharedItemRoleEnum._('commenter');
const SharedItemRoleEnum _$sharedItemRoleEnum_editor =
    const SharedItemRoleEnum._('editor');
const SharedItemRoleEnum _$sharedItemRoleEnum_owner =
    const SharedItemRoleEnum._('owner');
const SharedItemRoleEnum _$sharedItemRoleEnum_unknownDefaultOpenApi =
    const SharedItemRoleEnum._('unknownDefaultOpenApi');

SharedItemRoleEnum _$sharedItemRoleEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$sharedItemRoleEnum_viewer;
    case 'commenter':
      return _$sharedItemRoleEnum_commenter;
    case 'editor':
      return _$sharedItemRoleEnum_editor;
    case 'owner':
      return _$sharedItemRoleEnum_owner;
    case 'unknownDefaultOpenApi':
      return _$sharedItemRoleEnum_unknownDefaultOpenApi;
    default:
      return _$sharedItemRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SharedItemRoleEnum> _$sharedItemRoleEnumValues =
    BuiltSet<SharedItemRoleEnum>(const <SharedItemRoleEnum>[
      _$sharedItemRoleEnum_viewer,
      _$sharedItemRoleEnum_commenter,
      _$sharedItemRoleEnum_editor,
      _$sharedItemRoleEnum_owner,
      _$sharedItemRoleEnum_unknownDefaultOpenApi,
    ]);

const SharedItemViaEnum _$sharedItemViaEnum_principal =
    const SharedItemViaEnum._('principal');
const SharedItemViaEnum _$sharedItemViaEnum_group = const SharedItemViaEnum._(
  'group',
);
const SharedItemViaEnum _$sharedItemViaEnum_instance =
    const SharedItemViaEnum._('instance');
const SharedItemViaEnum _$sharedItemViaEnum_unknownDefaultOpenApi =
    const SharedItemViaEnum._('unknownDefaultOpenApi');

SharedItemViaEnum _$sharedItemViaEnumValueOf(String name) {
  switch (name) {
    case 'principal':
      return _$sharedItemViaEnum_principal;
    case 'group':
      return _$sharedItemViaEnum_group;
    case 'instance':
      return _$sharedItemViaEnum_instance;
    case 'unknownDefaultOpenApi':
      return _$sharedItemViaEnum_unknownDefaultOpenApi;
    default:
      return _$sharedItemViaEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SharedItemViaEnum> _$sharedItemViaEnumValues =
    BuiltSet<SharedItemViaEnum>(const <SharedItemViaEnum>[
      _$sharedItemViaEnum_principal,
      _$sharedItemViaEnum_group,
      _$sharedItemViaEnum_instance,
      _$sharedItemViaEnum_unknownDefaultOpenApi,
    ]);

Serializer<SharedItemRoleEnum> _$sharedItemRoleEnumSerializer =
    _$SharedItemRoleEnumSerializer();
Serializer<SharedItemViaEnum> _$sharedItemViaEnumSerializer =
    _$SharedItemViaEnumSerializer();

class _$SharedItemRoleEnumSerializer
    implements PrimitiveSerializer<SharedItemRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'owner': 'owner',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'owner': 'owner',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SharedItemRoleEnum];
  @override
  final String wireName = 'SharedItemRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    SharedItemRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SharedItemRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SharedItemRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SharedItemViaEnumSerializer
    implements PrimitiveSerializer<SharedItemViaEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'principal': 'principal',
    'group': 'group',
    'instance': 'instance',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'principal': 'principal',
    'group': 'group',
    'instance': 'instance',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SharedItemViaEnum];
  @override
  final String wireName = 'SharedItemViaEnum';

  @override
  Object serialize(
    Serializers serializers,
    SharedItemViaEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SharedItemViaEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SharedItemViaEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SharedItem extends SharedItem {
  @override
  final ObjectEnvelope envelope;
  @override
  final SharedItemRoleEnum role;
  @override
  final SharedItemViaEnum via;
  @override
  final String? groupId;
  @override
  final PrincipalSummary? sharedBy;
  @override
  final DateTime sharedAt;

  factory _$SharedItem([void Function(SharedItemBuilder)? updates]) =>
      (SharedItemBuilder()..update(updates))._build();

  _$SharedItem._({
    required this.envelope,
    required this.role,
    required this.via,
    this.groupId,
    this.sharedBy,
    required this.sharedAt,
  }) : super._();
  @override
  SharedItem rebuild(void Function(SharedItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SharedItemBuilder toBuilder() => SharedItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SharedItem &&
        envelope == other.envelope &&
        role == other.role &&
        via == other.via &&
        groupId == other.groupId &&
        sharedBy == other.sharedBy &&
        sharedAt == other.sharedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, via.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, sharedBy.hashCode);
    _$hash = $jc(_$hash, sharedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SharedItem')
          ..add('envelope', envelope)
          ..add('role', role)
          ..add('via', via)
          ..add('groupId', groupId)
          ..add('sharedBy', sharedBy)
          ..add('sharedAt', sharedAt))
        .toString();
  }
}

class SharedItemBuilder implements Builder<SharedItem, SharedItemBuilder> {
  _$SharedItem? _$v;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  SharedItemRoleEnum? _role;
  SharedItemRoleEnum? get role => _$this._role;
  set role(SharedItemRoleEnum? role) => _$this._role = role;

  SharedItemViaEnum? _via;
  SharedItemViaEnum? get via => _$this._via;
  set via(SharedItemViaEnum? via) => _$this._via = via;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  PrincipalSummaryBuilder? _sharedBy;
  PrincipalSummaryBuilder get sharedBy =>
      _$this._sharedBy ??= PrincipalSummaryBuilder();
  set sharedBy(PrincipalSummaryBuilder? sharedBy) =>
      _$this._sharedBy = sharedBy;

  DateTime? _sharedAt;
  DateTime? get sharedAt => _$this._sharedAt;
  set sharedAt(DateTime? sharedAt) => _$this._sharedAt = sharedAt;

  SharedItemBuilder() {
    SharedItem._defaults(this);
  }

  SharedItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _envelope = $v.envelope.toBuilder();
      _role = $v.role;
      _via = $v.via;
      _groupId = $v.groupId;
      _sharedBy = $v.sharedBy?.toBuilder();
      _sharedAt = $v.sharedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SharedItem other) {
    _$v = other as _$SharedItem;
  }

  @override
  void update(void Function(SharedItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SharedItem build() => _build();

  _$SharedItem _build() {
    _$SharedItem _$result;
    try {
      _$result =
          _$v ??
          _$SharedItem._(
            envelope: envelope.build(),
            role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'SharedItem',
              'role',
            ),
            via: BuiltValueNullFieldError.checkNotNull(
              via,
              r'SharedItem',
              'via',
            ),
            groupId: groupId,
            sharedBy: _sharedBy?.build(),
            sharedAt: BuiltValueNullFieldError.checkNotNull(
              sharedAt,
              r'SharedItem',
              'sharedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        envelope.build();

        _$failedField = 'sharedBy';
        _sharedBy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SharedItem',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
