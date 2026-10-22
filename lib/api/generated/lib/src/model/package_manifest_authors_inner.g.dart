// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_manifest_authors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PackageManifestAuthorsInnerRoleEnum
    _$packageManifestAuthorsInnerRoleEnum_author =
    const PackageManifestAuthorsInnerRoleEnum._('author');
const PackageManifestAuthorsInnerRoleEnum
    _$packageManifestAuthorsInnerRoleEnum_forwarder =
    const PackageManifestAuthorsInnerRoleEnum._('forwarder');

PackageManifestAuthorsInnerRoleEnum
    _$packageManifestAuthorsInnerRoleEnumValueOf(String name) {
  switch (name) {
    case 'author':
      return _$packageManifestAuthorsInnerRoleEnum_author;
    case 'forwarder':
      return _$packageManifestAuthorsInnerRoleEnum_forwarder;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PackageManifestAuthorsInnerRoleEnum>
    _$packageManifestAuthorsInnerRoleEnumValues = BuiltSet<
        PackageManifestAuthorsInnerRoleEnum>(const <PackageManifestAuthorsInnerRoleEnum>[
  _$packageManifestAuthorsInnerRoleEnum_author,
  _$packageManifestAuthorsInnerRoleEnum_forwarder,
]);

Serializer<PackageManifestAuthorsInnerRoleEnum>
    _$packageManifestAuthorsInnerRoleEnumSerializer =
    _$PackageManifestAuthorsInnerRoleEnumSerializer();

class _$PackageManifestAuthorsInnerRoleEnumSerializer
    implements PrimitiveSerializer<PackageManifestAuthorsInnerRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'author': 'author',
    'forwarder': 'forwarder',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'author': 'author',
    'forwarder': 'forwarder',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PackageManifestAuthorsInnerRoleEnum
  ];
  @override
  final String wireName = 'PackageManifestAuthorsInnerRoleEnum';

  @override
  Object serialize(
          Serializers serializers, PackageManifestAuthorsInnerRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PackageManifestAuthorsInnerRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PackageManifestAuthorsInnerRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PackageManifestAuthorsInner extends PackageManifestAuthorsInner {
  @override
  final String handle;
  @override
  final String? displayName;
  @override
  final String instanceId;
  @override
  final PackageManifestAuthorsInnerRoleEnum role;

  factory _$PackageManifestAuthorsInner(
          [void Function(PackageManifestAuthorsInnerBuilder)? updates]) =>
      (PackageManifestAuthorsInnerBuilder()..update(updates))._build();

  _$PackageManifestAuthorsInner._(
      {required this.handle,
      this.displayName,
      required this.instanceId,
      required this.role})
      : super._();
  @override
  PackageManifestAuthorsInner rebuild(
          void Function(PackageManifestAuthorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackageManifestAuthorsInnerBuilder toBuilder() =>
      PackageManifestAuthorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackageManifestAuthorsInner &&
        handle == other.handle &&
        displayName == other.displayName &&
        instanceId == other.instanceId &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PackageManifestAuthorsInner')
          ..add('handle', handle)
          ..add('displayName', displayName)
          ..add('instanceId', instanceId)
          ..add('role', role))
        .toString();
  }
}

class PackageManifestAuthorsInnerBuilder
    implements
        Builder<PackageManifestAuthorsInner,
            PackageManifestAuthorsInnerBuilder> {
  _$PackageManifestAuthorsInner? _$v;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  PackageManifestAuthorsInnerRoleEnum? _role;
  PackageManifestAuthorsInnerRoleEnum? get role => _$this._role;
  set role(PackageManifestAuthorsInnerRoleEnum? role) => _$this._role = role;

  PackageManifestAuthorsInnerBuilder() {
    PackageManifestAuthorsInner._defaults(this);
  }

  PackageManifestAuthorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _handle = $v.handle;
      _displayName = $v.displayName;
      _instanceId = $v.instanceId;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackageManifestAuthorsInner other) {
    _$v = other as _$PackageManifestAuthorsInner;
  }

  @override
  void update(void Function(PackageManifestAuthorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackageManifestAuthorsInner build() => _build();

  _$PackageManifestAuthorsInner _build() {
    final _$result = _$v ??
        _$PackageManifestAuthorsInner._(
          handle: BuiltValueNullFieldError.checkNotNull(
              handle, r'PackageManifestAuthorsInner', 'handle'),
          displayName: displayName,
          instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId, r'PackageManifestAuthorsInner', 'instanceId'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'PackageManifestAuthorsInner', 'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
