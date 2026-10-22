// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_status_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpStatusItemTypeEnum _$edpStatusItemTypeEnum_status =
    const EdpStatusItemTypeEnum._('status');

EdpStatusItemTypeEnum _$edpStatusItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'status':
      return _$edpStatusItemTypeEnum_status;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpStatusItemTypeEnum> _$edpStatusItemTypeEnumValues =
    BuiltSet<EdpStatusItemTypeEnum>(const <EdpStatusItemTypeEnum>[
  _$edpStatusItemTypeEnum_status,
]);

const EdpStatusItemHealthEnum _$edpStatusItemHealthEnum_ok =
    const EdpStatusItemHealthEnum._('ok');
const EdpStatusItemHealthEnum _$edpStatusItemHealthEnum_degraded =
    const EdpStatusItemHealthEnum._('degraded');
const EdpStatusItemHealthEnum _$edpStatusItemHealthEnum_blocked =
    const EdpStatusItemHealthEnum._('blocked');
const EdpStatusItemHealthEnum _$edpStatusItemHealthEnum_layoutChanged =
    const EdpStatusItemHealthEnum._('layoutChanged');
const EdpStatusItemHealthEnum _$edpStatusItemHealthEnum_geoRestricted =
    const EdpStatusItemHealthEnum._('geoRestricted');

EdpStatusItemHealthEnum _$edpStatusItemHealthEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$edpStatusItemHealthEnum_ok;
    case 'degraded':
      return _$edpStatusItemHealthEnum_degraded;
    case 'blocked':
      return _$edpStatusItemHealthEnum_blocked;
    case 'layoutChanged':
      return _$edpStatusItemHealthEnum_layoutChanged;
    case 'geoRestricted':
      return _$edpStatusItemHealthEnum_geoRestricted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpStatusItemHealthEnum> _$edpStatusItemHealthEnumValues =
    BuiltSet<EdpStatusItemHealthEnum>(const <EdpStatusItemHealthEnum>[
  _$edpStatusItemHealthEnum_ok,
  _$edpStatusItemHealthEnum_degraded,
  _$edpStatusItemHealthEnum_blocked,
  _$edpStatusItemHealthEnum_layoutChanged,
  _$edpStatusItemHealthEnum_geoRestricted,
]);

Serializer<EdpStatusItemTypeEnum> _$edpStatusItemTypeEnumSerializer =
    _$EdpStatusItemTypeEnumSerializer();
Serializer<EdpStatusItemHealthEnum> _$edpStatusItemHealthEnumSerializer =
    _$EdpStatusItemHealthEnumSerializer();

class _$EdpStatusItemTypeEnumSerializer
    implements PrimitiveSerializer<EdpStatusItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'status': 'status',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'status': 'status',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpStatusItemTypeEnum];
  @override
  final String wireName = 'EdpStatusItemTypeEnum';

  @override
  Object serialize(Serializers serializers, EdpStatusItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpStatusItemTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpStatusItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpStatusItemHealthEnumSerializer
    implements PrimitiveSerializer<EdpStatusItemHealthEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'degraded': 'degraded',
    'blocked': 'blocked',
    'layoutChanged': 'layout-changed',
    'geoRestricted': 'geo-restricted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'degraded': 'degraded',
    'blocked': 'blocked',
    'layout-changed': 'layoutChanged',
    'geo-restricted': 'geoRestricted',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpStatusItemHealthEnum];
  @override
  final String wireName = 'EdpStatusItemHealthEnum';

  @override
  Object serialize(Serializers serializers, EdpStatusItemHealthEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpStatusItemHealthEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpStatusItemHealthEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpStatusItem extends EdpStatusItem {
  @override
  final String? stream;
  @override
  final EdpStatusItemTypeEnum type;
  @override
  final EdpStatusItemHealthEnum health;
  @override
  final String? message;

  factory _$EdpStatusItem([void Function(EdpStatusItemBuilder)? updates]) =>
      (EdpStatusItemBuilder()..update(updates))._build();

  _$EdpStatusItem._(
      {this.stream, required this.type, required this.health, this.message})
      : super._();
  @override
  EdpStatusItem rebuild(void Function(EdpStatusItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpStatusItemBuilder toBuilder() => EdpStatusItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpStatusItem &&
        stream == other.stream &&
        type == other.type &&
        health == other.health &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpStatusItem')
          ..add('stream', stream)
          ..add('type', type)
          ..add('health', health)
          ..add('message', message))
        .toString();
  }
}

class EdpStatusItemBuilder
    implements Builder<EdpStatusItem, EdpStatusItemBuilder> {
  _$EdpStatusItem? _$v;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  EdpStatusItemTypeEnum? _type;
  EdpStatusItemTypeEnum? get type => _$this._type;
  set type(EdpStatusItemTypeEnum? type) => _$this._type = type;

  EdpStatusItemHealthEnum? _health;
  EdpStatusItemHealthEnum? get health => _$this._health;
  set health(EdpStatusItemHealthEnum? health) => _$this._health = health;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  EdpStatusItemBuilder() {
    EdpStatusItem._defaults(this);
  }

  EdpStatusItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stream = $v.stream;
      _type = $v.type;
      _health = $v.health;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpStatusItem other) {
    _$v = other as _$EdpStatusItem;
  }

  @override
  void update(void Function(EdpStatusItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpStatusItem build() => _build();

  _$EdpStatusItem _build() {
    final _$result = _$v ??
        _$EdpStatusItem._(
          stream: stream,
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'EdpStatusItem', 'type'),
          health: BuiltValueNullFieldError.checkNotNull(
              health, r'EdpStatusItem', 'health'),
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
