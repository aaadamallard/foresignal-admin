// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_feature_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpFeatureItemTypeEnum _$edpFeatureItemTypeEnum_feature =
    const EdpFeatureItemTypeEnum._('feature');

EdpFeatureItemTypeEnum _$edpFeatureItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'feature':
      return _$edpFeatureItemTypeEnum_feature;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpFeatureItemTypeEnum> _$edpFeatureItemTypeEnumValues =
    BuiltSet<EdpFeatureItemTypeEnum>(const <EdpFeatureItemTypeEnum>[
      _$edpFeatureItemTypeEnum_feature,
    ]);

Serializer<EdpFeatureItemTypeEnum> _$edpFeatureItemTypeEnumSerializer =
    _$EdpFeatureItemTypeEnumSerializer();

class _$EdpFeatureItemTypeEnumSerializer
    implements PrimitiveSerializer<EdpFeatureItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'feature': 'feature',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'feature': 'feature',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpFeatureItemTypeEnum];
  @override
  final String wireName = 'EdpFeatureItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpFeatureItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpFeatureItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpFeatureItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpFeatureItem extends EdpFeatureItem {
  @override
  final String stream;
  @override
  final EdpFeatureItemTypeEnum type;
  @override
  final String id;
  @override
  final DateTime? observedAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final EdpGeometry? geometry;
  @override
  final DateTime? eventTime;
  @override
  final DateTime? validUntil;
  @override
  final EdpOrigin? origin;

  factory _$EdpFeatureItem([void Function(EdpFeatureItemBuilder)? updates]) =>
      (EdpFeatureItemBuilder()..update(updates))._build();

  _$EdpFeatureItem._({
    required this.stream,
    required this.type,
    required this.id,
    this.observedAt,
    this.properties,
    this.geometry,
    this.eventTime,
    this.validUntil,
    this.origin,
  }) : super._();
  @override
  EdpFeatureItem rebuild(void Function(EdpFeatureItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpFeatureItemBuilder toBuilder() => EdpFeatureItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpFeatureItem &&
        stream == other.stream &&
        type == other.type &&
        id == other.id &&
        observedAt == other.observedAt &&
        properties == other.properties &&
        geometry == other.geometry &&
        eventTime == other.eventTime &&
        validUntil == other.validUntil &&
        origin == other.origin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpFeatureItem')
          ..add('stream', stream)
          ..add('type', type)
          ..add('id', id)
          ..add('observedAt', observedAt)
          ..add('properties', properties)
          ..add('geometry', geometry)
          ..add('eventTime', eventTime)
          ..add('validUntil', validUntil)
          ..add('origin', origin))
        .toString();
  }
}

class EdpFeatureItemBuilder
    implements Builder<EdpFeatureItem, EdpFeatureItemBuilder> {
  _$EdpFeatureItem? _$v;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  EdpFeatureItemTypeEnum? _type;
  EdpFeatureItemTypeEnum? get type => _$this._type;
  set type(EdpFeatureItemTypeEnum? type) => _$this._type = type;

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

  EdpGeometryBuilder? _geometry;
  EdpGeometryBuilder get geometry => _$this._geometry ??= EdpGeometryBuilder();
  set geometry(EdpGeometryBuilder? geometry) => _$this._geometry = geometry;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  EdpOriginBuilder? _origin;
  EdpOriginBuilder get origin => _$this._origin ??= EdpOriginBuilder();
  set origin(EdpOriginBuilder? origin) => _$this._origin = origin;

  EdpFeatureItemBuilder() {
    EdpFeatureItem._defaults(this);
  }

  EdpFeatureItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stream = $v.stream;
      _type = $v.type;
      _id = $v.id;
      _observedAt = $v.observedAt;
      _properties = $v.properties?.toBuilder();
      _geometry = $v.geometry?.toBuilder();
      _eventTime = $v.eventTime;
      _validUntil = $v.validUntil;
      _origin = $v.origin?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpFeatureItem other) {
    _$v = other as _$EdpFeatureItem;
  }

  @override
  void update(void Function(EdpFeatureItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpFeatureItem build() => _build();

  _$EdpFeatureItem _build() {
    _$EdpFeatureItem _$result;
    try {
      _$result =
          _$v ??
          _$EdpFeatureItem._(
            stream: BuiltValueNullFieldError.checkNotNull(
              stream,
              r'EdpFeatureItem',
              'stream',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EdpFeatureItem',
              'type',
            ),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'EdpFeatureItem',
              'id',
            ),
            observedAt: observedAt,
            properties: _properties?.build(),
            geometry: _geometry?.build(),
            eventTime: eventTime,
            validUntil: validUntil,
            origin: _origin?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
        _$failedField = 'geometry';
        _geometry?.build();

        _$failedField = 'origin';
        _origin?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpFeatureItem',
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
