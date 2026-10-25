// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_delete_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpDeleteItemTypeEnum _$edpDeleteItemTypeEnum_delete =
    const EdpDeleteItemTypeEnum._('delete');
const EdpDeleteItemTypeEnum _$edpDeleteItemTypeEnum_unknownDefaultOpenApi =
    const EdpDeleteItemTypeEnum._('unknownDefaultOpenApi');

EdpDeleteItemTypeEnum _$edpDeleteItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'delete':
      return _$edpDeleteItemTypeEnum_delete;
    case 'unknownDefaultOpenApi':
      return _$edpDeleteItemTypeEnum_unknownDefaultOpenApi;
    default:
      return _$edpDeleteItemTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EdpDeleteItemTypeEnum> _$edpDeleteItemTypeEnumValues =
    BuiltSet<EdpDeleteItemTypeEnum>(const <EdpDeleteItemTypeEnum>[
      _$edpDeleteItemTypeEnum_delete,
      _$edpDeleteItemTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<EdpDeleteItemTypeEnum> _$edpDeleteItemTypeEnumSerializer =
    _$EdpDeleteItemTypeEnumSerializer();

class _$EdpDeleteItemTypeEnumSerializer
    implements PrimitiveSerializer<EdpDeleteItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'delete': 'delete',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'delete': 'delete',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpDeleteItemTypeEnum];
  @override
  final String wireName = 'EdpDeleteItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpDeleteItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpDeleteItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpDeleteItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpDeleteItem extends EdpDeleteItem {
  @override
  final String stream;
  @override
  final EdpDeleteItemTypeEnum type;
  @override
  final String id;
  @override
  final DateTime? observedAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;

  factory _$EdpDeleteItem([void Function(EdpDeleteItemBuilder)? updates]) =>
      (EdpDeleteItemBuilder()..update(updates))._build();

  _$EdpDeleteItem._({
    required this.stream,
    required this.type,
    required this.id,
    this.observedAt,
    this.properties,
  }) : super._();
  @override
  EdpDeleteItem rebuild(void Function(EdpDeleteItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpDeleteItemBuilder toBuilder() => EdpDeleteItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpDeleteItem &&
        stream == other.stream &&
        type == other.type &&
        id == other.id &&
        observedAt == other.observedAt &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpDeleteItem')
          ..add('stream', stream)
          ..add('type', type)
          ..add('id', id)
          ..add('observedAt', observedAt)
          ..add('properties', properties))
        .toString();
  }
}

class EdpDeleteItemBuilder
    implements Builder<EdpDeleteItem, EdpDeleteItemBuilder> {
  _$EdpDeleteItem? _$v;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  EdpDeleteItemTypeEnum? _type;
  EdpDeleteItemTypeEnum? get type => _$this._type;
  set type(EdpDeleteItemTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  EdpDeleteItemBuilder() {
    EdpDeleteItem._defaults(this);
  }

  EdpDeleteItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stream = $v.stream;
      _type = $v.type;
      _id = $v.id;
      _observedAt = $v.observedAt;
      _properties = $v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpDeleteItem other) {
    _$v = other as _$EdpDeleteItem;
  }

  @override
  void update(void Function(EdpDeleteItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpDeleteItem build() => _build();

  _$EdpDeleteItem _build() {
    _$EdpDeleteItem _$result;
    try {
      _$result =
          _$v ??
          _$EdpDeleteItem._(
            stream: BuiltValueNullFieldError.checkNotNull(
              stream,
              r'EdpDeleteItem',
              'stream',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EdpDeleteItem',
              'type',
            ),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'EdpDeleteItem',
              'id',
            ),
            observedAt: observedAt,
            properties: _properties?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpDeleteItem',
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
