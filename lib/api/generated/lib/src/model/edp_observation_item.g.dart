// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_observation_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpObservationItemTypeEnum _$edpObservationItemTypeEnum_observation =
    const EdpObservationItemTypeEnum._('observation');

EdpObservationItemTypeEnum _$edpObservationItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'observation':
      return _$edpObservationItemTypeEnum_observation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpObservationItemTypeEnum> _$edpObservationItemTypeEnumValues =
    BuiltSet<EdpObservationItemTypeEnum>(const <EdpObservationItemTypeEnum>[
  _$edpObservationItemTypeEnum_observation,
]);

Serializer<EdpObservationItemTypeEnum> _$edpObservationItemTypeEnumSerializer =
    _$EdpObservationItemTypeEnumSerializer();

class _$EdpObservationItemTypeEnumSerializer
    implements PrimitiveSerializer<EdpObservationItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'observation': 'observation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'observation': 'observation',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpObservationItemTypeEnum];
  @override
  final String wireName = 'EdpObservationItemTypeEnum';

  @override
  Object serialize(Serializers serializers, EdpObservationItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpObservationItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpObservationItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpObservationItem extends EdpObservationItem {
  @override
  final String stream;
  @override
  final EdpObservationItemTypeEnum type;
  @override
  final String id;
  @override
  final DateTime? observedAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final String seriesKey;
  @override
  final String t;
  @override
  final num? value;
  @override
  final DateTime? knownAt;
  @override
  final String? unit;
  @override
  final EdpOrigin? origin;

  factory _$EdpObservationItem(
          [void Function(EdpObservationItemBuilder)? updates]) =>
      (EdpObservationItemBuilder()..update(updates))._build();

  _$EdpObservationItem._(
      {required this.stream,
      required this.type,
      required this.id,
      this.observedAt,
      this.properties,
      required this.seriesKey,
      required this.t,
      this.value,
      this.knownAt,
      this.unit,
      this.origin})
      : super._();
  @override
  EdpObservationItem rebuild(
          void Function(EdpObservationItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpObservationItemBuilder toBuilder() =>
      EdpObservationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpObservationItem &&
        stream == other.stream &&
        type == other.type &&
        id == other.id &&
        observedAt == other.observedAt &&
        properties == other.properties &&
        seriesKey == other.seriesKey &&
        t == other.t &&
        value == other.value &&
        knownAt == other.knownAt &&
        unit == other.unit &&
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
    _$hash = $jc(_$hash, seriesKey.hashCode);
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, knownAt.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpObservationItem')
          ..add('stream', stream)
          ..add('type', type)
          ..add('id', id)
          ..add('observedAt', observedAt)
          ..add('properties', properties)
          ..add('seriesKey', seriesKey)
          ..add('t', t)
          ..add('value', value)
          ..add('knownAt', knownAt)
          ..add('unit', unit)
          ..add('origin', origin))
        .toString();
  }
}

class EdpObservationItemBuilder
    implements Builder<EdpObservationItem, EdpObservationItemBuilder> {
  _$EdpObservationItem? _$v;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  EdpObservationItemTypeEnum? _type;
  EdpObservationItemTypeEnum? get type => _$this._type;
  set type(EdpObservationItemTypeEnum? type) => _$this._type = type;

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

  String? _seriesKey;
  String? get seriesKey => _$this._seriesKey;
  set seriesKey(String? seriesKey) => _$this._seriesKey = seriesKey;

  String? _t;
  String? get t => _$this._t;
  set t(String? t) => _$this._t = t;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  DateTime? _knownAt;
  DateTime? get knownAt => _$this._knownAt;
  set knownAt(DateTime? knownAt) => _$this._knownAt = knownAt;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  EdpOriginBuilder? _origin;
  EdpOriginBuilder get origin => _$this._origin ??= EdpOriginBuilder();
  set origin(EdpOriginBuilder? origin) => _$this._origin = origin;

  EdpObservationItemBuilder() {
    EdpObservationItem._defaults(this);
  }

  EdpObservationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stream = $v.stream;
      _type = $v.type;
      _id = $v.id;
      _observedAt = $v.observedAt;
      _properties = $v.properties?.toBuilder();
      _seriesKey = $v.seriesKey;
      _t = $v.t;
      _value = $v.value;
      _knownAt = $v.knownAt;
      _unit = $v.unit;
      _origin = $v.origin?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpObservationItem other) {
    _$v = other as _$EdpObservationItem;
  }

  @override
  void update(void Function(EdpObservationItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpObservationItem build() => _build();

  _$EdpObservationItem _build() {
    _$EdpObservationItem _$result;
    try {
      _$result = _$v ??
          _$EdpObservationItem._(
            stream: BuiltValueNullFieldError.checkNotNull(
                stream, r'EdpObservationItem', 'stream'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'EdpObservationItem', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'EdpObservationItem', 'id'),
            observedAt: observedAt,
            properties: _properties?.build(),
            seriesKey: BuiltValueNullFieldError.checkNotNull(
                seriesKey, r'EdpObservationItem', 'seriesKey'),
            t: BuiltValueNullFieldError.checkNotNull(
                t, r'EdpObservationItem', 't'),
            value: value,
            knownAt: knownAt,
            unit: unit,
            origin: _origin?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();

        _$failedField = 'origin';
        _origin?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpObservationItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
