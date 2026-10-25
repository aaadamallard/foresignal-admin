// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provenance_chain_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProvenanceChainEntryRoleEnum _$provenanceChainEntryRoleEnum_origin =
    const ProvenanceChainEntryRoleEnum._('origin');
const ProvenanceChainEntryRoleEnum _$provenanceChainEntryRoleEnum_author =
    const ProvenanceChainEntryRoleEnum._('author');
const ProvenanceChainEntryRoleEnum _$provenanceChainEntryRoleEnum_forwarder =
    const ProvenanceChainEntryRoleEnum._('forwarder');
const ProvenanceChainEntryRoleEnum _$provenanceChainEntryRoleEnum_importer =
    const ProvenanceChainEntryRoleEnum._('importer');
const ProvenanceChainEntryRoleEnum
_$provenanceChainEntryRoleEnum_unknownDefaultOpenApi =
    const ProvenanceChainEntryRoleEnum._('unknownDefaultOpenApi');

ProvenanceChainEntryRoleEnum _$provenanceChainEntryRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'origin':
      return _$provenanceChainEntryRoleEnum_origin;
    case 'author':
      return _$provenanceChainEntryRoleEnum_author;
    case 'forwarder':
      return _$provenanceChainEntryRoleEnum_forwarder;
    case 'importer':
      return _$provenanceChainEntryRoleEnum_importer;
    case 'unknownDefaultOpenApi':
      return _$provenanceChainEntryRoleEnum_unknownDefaultOpenApi;
    default:
      return _$provenanceChainEntryRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProvenanceChainEntryRoleEnum>
_$provenanceChainEntryRoleEnumValues =
    BuiltSet<ProvenanceChainEntryRoleEnum>(const <ProvenanceChainEntryRoleEnum>[
      _$provenanceChainEntryRoleEnum_origin,
      _$provenanceChainEntryRoleEnum_author,
      _$provenanceChainEntryRoleEnum_forwarder,
      _$provenanceChainEntryRoleEnum_importer,
      _$provenanceChainEntryRoleEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProvenanceChainEntryRoleEnum>
_$provenanceChainEntryRoleEnumSerializer =
    _$ProvenanceChainEntryRoleEnumSerializer();

class _$ProvenanceChainEntryRoleEnumSerializer
    implements PrimitiveSerializer<ProvenanceChainEntryRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'origin': 'origin',
    'author': 'author',
    'forwarder': 'forwarder',
    'importer': 'importer',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'origin': 'origin',
    'author': 'author',
    'forwarder': 'forwarder',
    'importer': 'importer',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProvenanceChainEntryRoleEnum];
  @override
  final String wireName = 'ProvenanceChainEntryRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProvenanceChainEntryRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProvenanceChainEntryRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProvenanceChainEntryRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProvenanceChainEntry extends ProvenanceChainEntry {
  @override
  final String instanceId;
  @override
  final String principal;
  @override
  final String productRef;
  @override
  final String? manifestId;
  @override
  final ProvenanceChainEntryRoleEnum? role;
  @override
  final DateTime? at;

  factory _$ProvenanceChainEntry([
    void Function(ProvenanceChainEntryBuilder)? updates,
  ]) => (ProvenanceChainEntryBuilder()..update(updates))._build();

  _$ProvenanceChainEntry._({
    required this.instanceId,
    required this.principal,
    required this.productRef,
    this.manifestId,
    this.role,
    this.at,
  }) : super._();
  @override
  ProvenanceChainEntry rebuild(
    void Function(ProvenanceChainEntryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProvenanceChainEntryBuilder toBuilder() =>
      ProvenanceChainEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvenanceChainEntry &&
        instanceId == other.instanceId &&
        principal == other.principal &&
        productRef == other.productRef &&
        manifestId == other.manifestId &&
        role == other.role &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, productRef.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProvenanceChainEntry')
          ..add('instanceId', instanceId)
          ..add('principal', principal)
          ..add('productRef', productRef)
          ..add('manifestId', manifestId)
          ..add('role', role)
          ..add('at', at))
        .toString();
  }
}

class ProvenanceChainEntryBuilder
    implements Builder<ProvenanceChainEntry, ProvenanceChainEntryBuilder> {
  _$ProvenanceChainEntry? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _principal;
  String? get principal => _$this._principal;
  set principal(String? principal) => _$this._principal = principal;

  String? _productRef;
  String? get productRef => _$this._productRef;
  set productRef(String? productRef) => _$this._productRef = productRef;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ProvenanceChainEntryRoleEnum? _role;
  ProvenanceChainEntryRoleEnum? get role => _$this._role;
  set role(ProvenanceChainEntryRoleEnum? role) => _$this._role = role;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ProvenanceChainEntryBuilder() {
    ProvenanceChainEntry._defaults(this);
  }

  ProvenanceChainEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _principal = $v.principal;
      _productRef = $v.productRef;
      _manifestId = $v.manifestId;
      _role = $v.role;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvenanceChainEntry other) {
    _$v = other as _$ProvenanceChainEntry;
  }

  @override
  void update(void Function(ProvenanceChainEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvenanceChainEntry build() => _build();

  _$ProvenanceChainEntry _build() {
    final _$result =
        _$v ??
        _$ProvenanceChainEntry._(
          instanceId: BuiltValueNullFieldError.checkNotNull(
            instanceId,
            r'ProvenanceChainEntry',
            'instanceId',
          ),
          principal: BuiltValueNullFieldError.checkNotNull(
            principal,
            r'ProvenanceChainEntry',
            'principal',
          ),
          productRef: BuiltValueNullFieldError.checkNotNull(
            productRef,
            r'ProvenanceChainEntry',
            'productRef',
          ),
          manifestId: manifestId,
          role: role,
          at: at,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
