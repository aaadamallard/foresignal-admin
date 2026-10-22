// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_grant_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccessGrantInputRoleEnum _$accessGrantInputRoleEnum_viewer =
    const AccessGrantInputRoleEnum._('viewer');
const AccessGrantInputRoleEnum _$accessGrantInputRoleEnum_commenter =
    const AccessGrantInputRoleEnum._('commenter');

AccessGrantInputRoleEnum _$accessGrantInputRoleEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$accessGrantInputRoleEnum_viewer;
    case 'commenter':
      return _$accessGrantInputRoleEnum_commenter;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AccessGrantInputRoleEnum> _$accessGrantInputRoleEnumValues =
    BuiltSet<AccessGrantInputRoleEnum>(const <AccessGrantInputRoleEnum>[
  _$accessGrantInputRoleEnum_viewer,
  _$accessGrantInputRoleEnum_commenter,
]);

const AccessGrantInputDeliverAsEnum _$accessGrantInputDeliverAsEnum_report =
    const AccessGrantInputDeliverAsEnum._('report');
const AccessGrantInputDeliverAsEnum
    _$accessGrantInputDeliverAsEnum_chronicleExtract =
    const AccessGrantInputDeliverAsEnum._('chronicleExtract');

AccessGrantInputDeliverAsEnum _$accessGrantInputDeliverAsEnumValueOf(
    String name) {
  switch (name) {
    case 'report':
      return _$accessGrantInputDeliverAsEnum_report;
    case 'chronicleExtract':
      return _$accessGrantInputDeliverAsEnum_chronicleExtract;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AccessGrantInputDeliverAsEnum>
    _$accessGrantInputDeliverAsEnumValues = BuiltSet<
        AccessGrantInputDeliverAsEnum>(const <AccessGrantInputDeliverAsEnum>[
  _$accessGrantInputDeliverAsEnum_report,
  _$accessGrantInputDeliverAsEnum_chronicleExtract,
]);

Serializer<AccessGrantInputRoleEnum> _$accessGrantInputRoleEnumSerializer =
    _$AccessGrantInputRoleEnumSerializer();
Serializer<AccessGrantInputDeliverAsEnum>
    _$accessGrantInputDeliverAsEnumSerializer =
    _$AccessGrantInputDeliverAsEnumSerializer();

class _$AccessGrantInputRoleEnumSerializer
    implements PrimitiveSerializer<AccessGrantInputRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'commenter': 'commenter',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'commenter': 'commenter',
  };

  @override
  final Iterable<Type> types = const <Type>[AccessGrantInputRoleEnum];
  @override
  final String wireName = 'AccessGrantInputRoleEnum';

  @override
  Object serialize(Serializers serializers, AccessGrantInputRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccessGrantInputRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccessGrantInputRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccessGrantInputDeliverAsEnumSerializer
    implements PrimitiveSerializer<AccessGrantInputDeliverAsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'report': 'report',
    'chronicleExtract': 'chronicle-extract',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'report': 'report',
    'chronicle-extract': 'chronicleExtract',
  };

  @override
  final Iterable<Type> types = const <Type>[AccessGrantInputDeliverAsEnum];
  @override
  final String wireName = 'AccessGrantInputDeliverAsEnum';

  @override
  Object serialize(
          Serializers serializers, AccessGrantInputDeliverAsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccessGrantInputDeliverAsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccessGrantInputDeliverAsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccessGrantInput extends AccessGrantInput {
  @override
  final AccessGrantInputRoleEnum? role;
  @override
  final DateTime? expiresAt;
  @override
  final AccessGrantInputDeliverAsEnum? deliverAs;
  @override
  final String? message;

  factory _$AccessGrantInput(
          [void Function(AccessGrantInputBuilder)? updates]) =>
      (AccessGrantInputBuilder()..update(updates))._build();

  _$AccessGrantInput._(
      {this.role, this.expiresAt, this.deliverAs, this.message})
      : super._();
  @override
  AccessGrantInput rebuild(void Function(AccessGrantInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessGrantInputBuilder toBuilder() =>
      AccessGrantInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessGrantInput &&
        role == other.role &&
        expiresAt == other.expiresAt &&
        deliverAs == other.deliverAs &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, deliverAs.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessGrantInput')
          ..add('role', role)
          ..add('expiresAt', expiresAt)
          ..add('deliverAs', deliverAs)
          ..add('message', message))
        .toString();
  }
}

class AccessGrantInputBuilder
    implements Builder<AccessGrantInput, AccessGrantInputBuilder> {
  _$AccessGrantInput? _$v;

  AccessGrantInputRoleEnum? _role;
  AccessGrantInputRoleEnum? get role => _$this._role;
  set role(AccessGrantInputRoleEnum? role) => _$this._role = role;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  AccessGrantInputDeliverAsEnum? _deliverAs;
  AccessGrantInputDeliverAsEnum? get deliverAs => _$this._deliverAs;
  set deliverAs(AccessGrantInputDeliverAsEnum? deliverAs) =>
      _$this._deliverAs = deliverAs;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AccessGrantInputBuilder() {
    AccessGrantInput._defaults(this);
  }

  AccessGrantInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _expiresAt = $v.expiresAt;
      _deliverAs = $v.deliverAs;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessGrantInput other) {
    _$v = other as _$AccessGrantInput;
  }

  @override
  void update(void Function(AccessGrantInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessGrantInput build() => _build();

  _$AccessGrantInput _build() {
    final _$result = _$v ??
        _$AccessGrantInput._(
          role: role,
          expiresAt: expiresAt,
          deliverAs: deliverAs,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
