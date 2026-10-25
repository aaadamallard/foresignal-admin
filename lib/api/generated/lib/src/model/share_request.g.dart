// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShareRequestRoleEnum _$shareRequestRoleEnum_viewer =
    const ShareRequestRoleEnum._('viewer');
const ShareRequestRoleEnum _$shareRequestRoleEnum_commenter =
    const ShareRequestRoleEnum._('commenter');
const ShareRequestRoleEnum _$shareRequestRoleEnum_editor =
    const ShareRequestRoleEnum._('editor');
const ShareRequestRoleEnum _$shareRequestRoleEnum_unknownDefaultOpenApi =
    const ShareRequestRoleEnum._('unknownDefaultOpenApi');

ShareRequestRoleEnum _$shareRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$shareRequestRoleEnum_viewer;
    case 'commenter':
      return _$shareRequestRoleEnum_commenter;
    case 'editor':
      return _$shareRequestRoleEnum_editor;
    case 'unknownDefaultOpenApi':
      return _$shareRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$shareRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ShareRequestRoleEnum> _$shareRequestRoleEnumValues =
    BuiltSet<ShareRequestRoleEnum>(const <ShareRequestRoleEnum>[
      _$shareRequestRoleEnum_viewer,
      _$shareRequestRoleEnum_commenter,
      _$shareRequestRoleEnum_editor,
      _$shareRequestRoleEnum_unknownDefaultOpenApi,
    ]);

Serializer<ShareRequestRoleEnum> _$shareRequestRoleEnumSerializer =
    _$ShareRequestRoleEnumSerializer();

class _$ShareRequestRoleEnumSerializer
    implements PrimitiveSerializer<ShareRequestRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareRequestRoleEnum];
  @override
  final String wireName = 'ShareRequestRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    ShareRequestRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ShareRequestRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ShareRequestRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ShareRequest extends ShareRequest {
  @override
  final BuiltList<String> grantees;
  @override
  final ShareRequestRoleEnum? role;
  @override
  final String? message;
  @override
  final DateTime? expiresAt;

  factory _$ShareRequest([void Function(ShareRequestBuilder)? updates]) =>
      (ShareRequestBuilder()..update(updates))._build();

  _$ShareRequest._({
    required this.grantees,
    this.role,
    this.message,
    this.expiresAt,
  }) : super._();
  @override
  ShareRequest rebuild(void Function(ShareRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareRequestBuilder toBuilder() => ShareRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareRequest &&
        grantees == other.grantees &&
        role == other.role &&
        message == other.message &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantees.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareRequest')
          ..add('grantees', grantees)
          ..add('role', role)
          ..add('message', message)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ShareRequestBuilder
    implements Builder<ShareRequest, ShareRequestBuilder> {
  _$ShareRequest? _$v;

  ListBuilder<String>? _grantees;
  ListBuilder<String> get grantees =>
      _$this._grantees ??= ListBuilder<String>();
  set grantees(ListBuilder<String>? grantees) => _$this._grantees = grantees;

  ShareRequestRoleEnum? _role;
  ShareRequestRoleEnum? get role => _$this._role;
  set role(ShareRequestRoleEnum? role) => _$this._role = role;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ShareRequestBuilder() {
    ShareRequest._defaults(this);
  }

  ShareRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantees = $v.grantees.toBuilder();
      _role = $v.role;
      _message = $v.message;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareRequest other) {
    _$v = other as _$ShareRequest;
  }

  @override
  void update(void Function(ShareRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareRequest build() => _build();

  _$ShareRequest _build() {
    _$ShareRequest _$result;
    try {
      _$result =
          _$v ??
          _$ShareRequest._(
            grantees: grantees.build(),
            role: role,
            message: message,
            expiresAt: expiresAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grantees';
        grantees.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ShareRequest',
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
