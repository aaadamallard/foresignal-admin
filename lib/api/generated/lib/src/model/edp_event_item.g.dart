// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_event_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpEventItemTypeEnum _$edpEventItemTypeEnum_event =
    const EdpEventItemTypeEnum._('event');

EdpEventItemTypeEnum _$edpEventItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'event':
      return _$edpEventItemTypeEnum_event;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpEventItemTypeEnum> _$edpEventItemTypeEnumValues =
    BuiltSet<EdpEventItemTypeEnum>(const <EdpEventItemTypeEnum>[
      _$edpEventItemTypeEnum_event,
    ]);

Serializer<EdpEventItemTypeEnum> _$edpEventItemTypeEnumSerializer =
    _$EdpEventItemTypeEnumSerializer();

class _$EdpEventItemTypeEnumSerializer
    implements PrimitiveSerializer<EdpEventItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'event': 'event',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'event': 'event',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpEventItemTypeEnum];
  @override
  final String wireName = 'EdpEventItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpEventItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpEventItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpEventItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpEventItem extends EdpEventItem {
  @override
  final String stream;
  @override
  final EdpEventItemTypeEnum type;
  @override
  final String id;
  @override
  final DateTime? observedAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final DateTime eventTime;
  @override
  final EdpGeometry? geometry;
  @override
  final String? upstreamEventId;
  @override
  final EdpOrigin? origin;

  factory _$EdpEventItem([void Function(EdpEventItemBuilder)? updates]) =>
      (EdpEventItemBuilder()..update(updates))._build();

  _$EdpEventItem._({
    required this.stream,
    required this.type,
    required this.id,
    this.observedAt,
    this.properties,
    required this.eventTime,
    this.geometry,
    this.upstreamEventId,
    this.origin,
  }) : super._();
  @override
  EdpEventItem rebuild(void Function(EdpEventItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpEventItemBuilder toBuilder() => EdpEventItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpEventItem &&
        stream == other.stream &&
        type == other.type &&
        id == other.id &&
        observedAt == other.observedAt &&
        properties == other.properties &&
        eventTime == other.eventTime &&
        geometry == other.geometry &&
        upstreamEventId == other.upstreamEventId &&
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
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, upstreamEventId.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpEventItem')
          ..add('stream', stream)
          ..add('type', type)
          ..add('id', id)
          ..add('observedAt', observedAt)
          ..add('properties', properties)
          ..add('eventTime', eventTime)
          ..add('geometry', geometry)
          ..add('upstreamEventId', upstreamEventId)
          ..add('origin', origin))
        .toString();
  }
}

class EdpEventItemBuilder
    implements Builder<EdpEventItem, EdpEventItemBuilder> {
  _$EdpEventItem? _$v;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  EdpEventItemTypeEnum? _type;
  EdpEventItemTypeEnum? get type => _$this._type;
  set type(EdpEventItemTypeEnum? type) => _$this._type = type;

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

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  EdpGeometryBuilder? _geometry;
  EdpGeometryBuilder get geometry => _$this._geometry ??= EdpGeometryBuilder();
  set geometry(EdpGeometryBuilder? geometry) => _$this._geometry = geometry;

  String? _upstreamEventId;
  String? get upstreamEventId => _$this._upstreamEventId;
  set upstreamEventId(String? upstreamEventId) =>
      _$this._upstreamEventId = upstreamEventId;

  EdpOriginBuilder? _origin;
  EdpOriginBuilder get origin => _$this._origin ??= EdpOriginBuilder();
  set origin(EdpOriginBuilder? origin) => _$this._origin = origin;

  EdpEventItemBuilder() {
    EdpEventItem._defaults(this);
  }

  EdpEventItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stream = $v.stream;
      _type = $v.type;
      _id = $v.id;
      _observedAt = $v.observedAt;
      _properties = $v.properties?.toBuilder();
      _eventTime = $v.eventTime;
      _geometry = $v.geometry?.toBuilder();
      _upstreamEventId = $v.upstreamEventId;
      _origin = $v.origin?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpEventItem other) {
    _$v = other as _$EdpEventItem;
  }

  @override
  void update(void Function(EdpEventItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpEventItem build() => _build();

  _$EdpEventItem _build() {
    _$EdpEventItem _$result;
    try {
      _$result =
          _$v ??
          _$EdpEventItem._(
            stream: BuiltValueNullFieldError.checkNotNull(
              stream,
              r'EdpEventItem',
              'stream',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EdpEventItem',
              'type',
            ),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'EdpEventItem',
              'id',
            ),
            observedAt: observedAt,
            properties: _properties?.build(),
            eventTime: BuiltValueNullFieldError.checkNotNull(
              eventTime,
              r'EdpEventItem',
              'eventTime',
            ),
            geometry: _geometry?.build(),
            upstreamEventId: upstreamEventId,
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
          r'EdpEventItem',
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
