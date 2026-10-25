// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_request_grant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccessRequestGrantDeliveredAsEnum
_$accessRequestGrantDeliveredAsEnum_acl =
    const AccessRequestGrantDeliveredAsEnum._('acl');
const AccessRequestGrantDeliveredAsEnum
_$accessRequestGrantDeliveredAsEnum_report =
    const AccessRequestGrantDeliveredAsEnum._('report');
const AccessRequestGrantDeliveredAsEnum
_$accessRequestGrantDeliveredAsEnum_chronicleExtract =
    const AccessRequestGrantDeliveredAsEnum._('chronicleExtract');
const AccessRequestGrantDeliveredAsEnum
_$accessRequestGrantDeliveredAsEnum_unknownDefaultOpenApi =
    const AccessRequestGrantDeliveredAsEnum._('unknownDefaultOpenApi');

AccessRequestGrantDeliveredAsEnum _$accessRequestGrantDeliveredAsEnumValueOf(
  String name,
) {
  switch (name) {
    case 'acl':
      return _$accessRequestGrantDeliveredAsEnum_acl;
    case 'report':
      return _$accessRequestGrantDeliveredAsEnum_report;
    case 'chronicleExtract':
      return _$accessRequestGrantDeliveredAsEnum_chronicleExtract;
    case 'unknownDefaultOpenApi':
      return _$accessRequestGrantDeliveredAsEnum_unknownDefaultOpenApi;
    default:
      return _$accessRequestGrantDeliveredAsEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AccessRequestGrantDeliveredAsEnum>
_$accessRequestGrantDeliveredAsEnumValues =
    BuiltSet<AccessRequestGrantDeliveredAsEnum>(
      const <AccessRequestGrantDeliveredAsEnum>[
        _$accessRequestGrantDeliveredAsEnum_acl,
        _$accessRequestGrantDeliveredAsEnum_report,
        _$accessRequestGrantDeliveredAsEnum_chronicleExtract,
        _$accessRequestGrantDeliveredAsEnum_unknownDefaultOpenApi,
      ],
    );

const AccessRequestGrantRoleEnum _$accessRequestGrantRoleEnum_viewer =
    const AccessRequestGrantRoleEnum._('viewer');
const AccessRequestGrantRoleEnum _$accessRequestGrantRoleEnum_commenter =
    const AccessRequestGrantRoleEnum._('commenter');
const AccessRequestGrantRoleEnum
_$accessRequestGrantRoleEnum_unknownDefaultOpenApi =
    const AccessRequestGrantRoleEnum._('unknownDefaultOpenApi');

AccessRequestGrantRoleEnum _$accessRequestGrantRoleEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$accessRequestGrantRoleEnum_viewer;
    case 'commenter':
      return _$accessRequestGrantRoleEnum_commenter;
    case 'unknownDefaultOpenApi':
      return _$accessRequestGrantRoleEnum_unknownDefaultOpenApi;
    default:
      return _$accessRequestGrantRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AccessRequestGrantRoleEnum> _$accessRequestGrantRoleEnumValues =
    BuiltSet<AccessRequestGrantRoleEnum>(const <AccessRequestGrantRoleEnum>[
      _$accessRequestGrantRoleEnum_viewer,
      _$accessRequestGrantRoleEnum_commenter,
      _$accessRequestGrantRoleEnum_unknownDefaultOpenApi,
    ]);

Serializer<AccessRequestGrantDeliveredAsEnum>
_$accessRequestGrantDeliveredAsEnumSerializer =
    _$AccessRequestGrantDeliveredAsEnumSerializer();
Serializer<AccessRequestGrantRoleEnum> _$accessRequestGrantRoleEnumSerializer =
    _$AccessRequestGrantRoleEnumSerializer();

class _$AccessRequestGrantDeliveredAsEnumSerializer
    implements PrimitiveSerializer<AccessRequestGrantDeliveredAsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'acl': 'acl',
    'report': 'report',
    'chronicleExtract': 'chronicle-extract',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'acl': 'acl',
    'report': 'report',
    'chronicle-extract': 'chronicleExtract',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AccessRequestGrantDeliveredAsEnum];
  @override
  final String wireName = 'AccessRequestGrantDeliveredAsEnum';

  @override
  Object serialize(
    Serializers serializers,
    AccessRequestGrantDeliveredAsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AccessRequestGrantDeliveredAsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AccessRequestGrantDeliveredAsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AccessRequestGrantRoleEnumSerializer
    implements PrimitiveSerializer<AccessRequestGrantRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AccessRequestGrantRoleEnum];
  @override
  final String wireName = 'AccessRequestGrantRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    AccessRequestGrantRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AccessRequestGrantRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AccessRequestGrantRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AccessRequestGrant extends AccessRequestGrant {
  @override
  final AccessRequestGrantDeliveredAsEnum deliveredAs;
  @override
  final AccessRequestGrantRoleEnum? role;
  @override
  final String? packageId;

  factory _$AccessRequestGrant([
    void Function(AccessRequestGrantBuilder)? updates,
  ]) => (AccessRequestGrantBuilder()..update(updates))._build();

  _$AccessRequestGrant._({required this.deliveredAs, this.role, this.packageId})
    : super._();
  @override
  AccessRequestGrant rebuild(
    void Function(AccessRequestGrantBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AccessRequestGrantBuilder toBuilder() =>
      AccessRequestGrantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessRequestGrant &&
        deliveredAs == other.deliveredAs &&
        role == other.role &&
        packageId == other.packageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveredAs.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, packageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessRequestGrant')
          ..add('deliveredAs', deliveredAs)
          ..add('role', role)
          ..add('packageId', packageId))
        .toString();
  }
}

class AccessRequestGrantBuilder
    implements Builder<AccessRequestGrant, AccessRequestGrantBuilder> {
  _$AccessRequestGrant? _$v;

  AccessRequestGrantDeliveredAsEnum? _deliveredAs;
  AccessRequestGrantDeliveredAsEnum? get deliveredAs => _$this._deliveredAs;
  set deliveredAs(AccessRequestGrantDeliveredAsEnum? deliveredAs) =>
      _$this._deliveredAs = deliveredAs;

  AccessRequestGrantRoleEnum? _role;
  AccessRequestGrantRoleEnum? get role => _$this._role;
  set role(AccessRequestGrantRoleEnum? role) => _$this._role = role;

  String? _packageId;
  String? get packageId => _$this._packageId;
  set packageId(String? packageId) => _$this._packageId = packageId;

  AccessRequestGrantBuilder() {
    AccessRequestGrant._defaults(this);
  }

  AccessRequestGrantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveredAs = $v.deliveredAs;
      _role = $v.role;
      _packageId = $v.packageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessRequestGrant other) {
    _$v = other as _$AccessRequestGrant;
  }

  @override
  void update(void Function(AccessRequestGrantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessRequestGrant build() => _build();

  _$AccessRequestGrant _build() {
    final _$result =
        _$v ??
        _$AccessRequestGrant._(
          deliveredAs: BuiltValueNullFieldError.checkNotNull(
            deliveredAs,
            r'AccessRequestGrant',
            'deliveredAs',
          ),
          role: role,
          packageId: packageId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
