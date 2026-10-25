// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ObjectActionMethodEnum _$objectActionMethodEnum_GET =
    const ObjectActionMethodEnum._('GET');
const ObjectActionMethodEnum _$objectActionMethodEnum_POST =
    const ObjectActionMethodEnum._('POST');
const ObjectActionMethodEnum _$objectActionMethodEnum_PUT =
    const ObjectActionMethodEnum._('PUT');
const ObjectActionMethodEnum _$objectActionMethodEnum_PATCH =
    const ObjectActionMethodEnum._('PATCH');
const ObjectActionMethodEnum _$objectActionMethodEnum_DELETE =
    const ObjectActionMethodEnum._('DELETE');
const ObjectActionMethodEnum _$objectActionMethodEnum_unknownDefaultOpenApi =
    const ObjectActionMethodEnum._('unknownDefaultOpenApi');

ObjectActionMethodEnum _$objectActionMethodEnumValueOf(String name) {
  switch (name) {
    case 'GET':
      return _$objectActionMethodEnum_GET;
    case 'POST':
      return _$objectActionMethodEnum_POST;
    case 'PUT':
      return _$objectActionMethodEnum_PUT;
    case 'PATCH':
      return _$objectActionMethodEnum_PATCH;
    case 'DELETE':
      return _$objectActionMethodEnum_DELETE;
    case 'unknownDefaultOpenApi':
      return _$objectActionMethodEnum_unknownDefaultOpenApi;
    default:
      return _$objectActionMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ObjectActionMethodEnum> _$objectActionMethodEnumValues =
    BuiltSet<ObjectActionMethodEnum>(const <ObjectActionMethodEnum>[
      _$objectActionMethodEnum_GET,
      _$objectActionMethodEnum_POST,
      _$objectActionMethodEnum_PUT,
      _$objectActionMethodEnum_PATCH,
      _$objectActionMethodEnum_DELETE,
      _$objectActionMethodEnum_unknownDefaultOpenApi,
    ]);

const ObjectActionScopeEnum _$objectActionScopeEnum_read =
    const ObjectActionScopeEnum._('read');
const ObjectActionScopeEnum _$objectActionScopeEnum_agent =
    const ObjectActionScopeEnum._('agent');
const ObjectActionScopeEnum _$objectActionScopeEnum_admin =
    const ObjectActionScopeEnum._('admin');
const ObjectActionScopeEnum _$objectActionScopeEnum_unknownDefaultOpenApi =
    const ObjectActionScopeEnum._('unknownDefaultOpenApi');

ObjectActionScopeEnum _$objectActionScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$objectActionScopeEnum_read;
    case 'agent':
      return _$objectActionScopeEnum_agent;
    case 'admin':
      return _$objectActionScopeEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$objectActionScopeEnum_unknownDefaultOpenApi;
    default:
      return _$objectActionScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ObjectActionScopeEnum> _$objectActionScopeEnumValues =
    BuiltSet<ObjectActionScopeEnum>(const <ObjectActionScopeEnum>[
      _$objectActionScopeEnum_read,
      _$objectActionScopeEnum_agent,
      _$objectActionScopeEnum_admin,
      _$objectActionScopeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ObjectActionMethodEnum> _$objectActionMethodEnumSerializer =
    _$ObjectActionMethodEnumSerializer();
Serializer<ObjectActionScopeEnum> _$objectActionScopeEnumSerializer =
    _$ObjectActionScopeEnumSerializer();

class _$ObjectActionMethodEnumSerializer
    implements PrimitiveSerializer<ObjectActionMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GET': 'GET',
    'POST': 'POST',
    'PUT': 'PUT',
    'PATCH': 'PATCH',
    'DELETE': 'DELETE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GET': 'GET',
    'POST': 'POST',
    'PUT': 'PUT',
    'PATCH': 'PATCH',
    'DELETE': 'DELETE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ObjectActionMethodEnum];
  @override
  final String wireName = 'ObjectActionMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    ObjectActionMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ObjectActionMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ObjectActionMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ObjectActionScopeEnumSerializer
    implements PrimitiveSerializer<ObjectActionScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ObjectActionScopeEnum];
  @override
  final String wireName = 'ObjectActionScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ObjectActionScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ObjectActionScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ObjectActionScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ObjectAction extends ObjectAction {
  @override
  final String id;
  @override
  final String? label;
  @override
  final ObjectActionMethodEnum method;
  @override
  final String href;
  @override
  final ObjectActionScopeEnum scope;

  factory _$ObjectAction([void Function(ObjectActionBuilder)? updates]) =>
      (ObjectActionBuilder()..update(updates))._build();

  _$ObjectAction._({
    required this.id,
    this.label,
    required this.method,
    required this.href,
    required this.scope,
  }) : super._();
  @override
  ObjectAction rebuild(void Function(ObjectActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectActionBuilder toBuilder() => ObjectActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectAction &&
        id == other.id &&
        label == other.label &&
        method == other.method &&
        href == other.href &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, href.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectAction')
          ..add('id', id)
          ..add('label', label)
          ..add('method', method)
          ..add('href', href)
          ..add('scope', scope))
        .toString();
  }
}

class ObjectActionBuilder
    implements Builder<ObjectAction, ObjectActionBuilder> {
  _$ObjectAction? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  ObjectActionMethodEnum? _method;
  ObjectActionMethodEnum? get method => _$this._method;
  set method(ObjectActionMethodEnum? method) => _$this._method = method;

  String? _href;
  String? get href => _$this._href;
  set href(String? href) => _$this._href = href;

  ObjectActionScopeEnum? _scope;
  ObjectActionScopeEnum? get scope => _$this._scope;
  set scope(ObjectActionScopeEnum? scope) => _$this._scope = scope;

  ObjectActionBuilder() {
    ObjectAction._defaults(this);
  }

  ObjectActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _method = $v.method;
      _href = $v.href;
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectAction other) {
    _$v = other as _$ObjectAction;
  }

  @override
  void update(void Function(ObjectActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectAction build() => _build();

  _$ObjectAction _build() {
    final _$result =
        _$v ??
        _$ObjectAction._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'ObjectAction', 'id'),
          label: label,
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'ObjectAction',
            'method',
          ),
          href: BuiltValueNullFieldError.checkNotNull(
            href,
            r'ObjectAction',
            'href',
          ),
          scope: BuiltValueNullFieldError.checkNotNull(
            scope,
            r'ObjectAction',
            'scope',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
