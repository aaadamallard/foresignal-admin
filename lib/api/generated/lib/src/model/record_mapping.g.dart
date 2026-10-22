// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_mapping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecordMappingVersionEnum _$recordMappingVersionEnum_number1 =
    const RecordMappingVersionEnum._('number1');

RecordMappingVersionEnum _$recordMappingVersionEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$recordMappingVersionEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RecordMappingVersionEnum> _$recordMappingVersionEnumValues =
    BuiltSet<RecordMappingVersionEnum>(const <RecordMappingVersionEnum>[
  _$recordMappingVersionEnum_number1,
]);

Serializer<RecordMappingVersionEnum> _$recordMappingVersionEnumSerializer =
    _$RecordMappingVersionEnumSerializer();

class _$RecordMappingVersionEnumSerializer
    implements PrimitiveSerializer<RecordMappingVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[RecordMappingVersionEnum];
  @override
  final String wireName = 'RecordMappingVersionEnum';

  @override
  Object serialize(Serializers serializers, RecordMappingVersionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RecordMappingVersionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecordMappingVersionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RecordMapping extends RecordMapping {
  @override
  final RecordMappingVersionEnum version;
  @override
  final String? select;
  @override
  final JsonObject? externalId;
  @override
  final JsonObject? kind;
  @override
  final JsonObject? observedAt;
  @override
  final JsonObject? eventTime;
  @override
  final JsonObject? validUntil;
  @override
  final JsonObject? geometry;
  @override
  final RecordMappingTombstone? tombstone;
  @override
  final RecordMappingQuality? quality;
  @override
  final BuiltList<MappingField>? fields;
  @override
  final RecordMappingPairs? pairs;
  @override
  final BuiltList<String>? drop;
  @override
  final BuiltList<RecordMappingFilterInner>? filter;
  @override
  final RecordMappingSpread? spread;

  factory _$RecordMapping([void Function(RecordMappingBuilder)? updates]) =>
      (RecordMappingBuilder()..update(updates))._build();

  _$RecordMapping._(
      {required this.version,
      this.select,
      this.externalId,
      this.kind,
      this.observedAt,
      this.eventTime,
      this.validUntil,
      this.geometry,
      this.tombstone,
      this.quality,
      this.fields,
      this.pairs,
      this.drop,
      this.filter,
      this.spread})
      : super._();
  @override
  RecordMapping rebuild(void Function(RecordMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordMappingBuilder toBuilder() => RecordMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordMapping &&
        version == other.version &&
        select == other.select &&
        externalId == other.externalId &&
        kind == other.kind &&
        observedAt == other.observedAt &&
        eventTime == other.eventTime &&
        validUntil == other.validUntil &&
        geometry == other.geometry &&
        tombstone == other.tombstone &&
        quality == other.quality &&
        fields == other.fields &&
        pairs == other.pairs &&
        drop == other.drop &&
        filter == other.filter &&
        spread == other.spread;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, select.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, tombstone.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, pairs.hashCode);
    _$hash = $jc(_$hash, drop.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, spread.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordMapping')
          ..add('version', version)
          ..add('select', select)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('observedAt', observedAt)
          ..add('eventTime', eventTime)
          ..add('validUntil', validUntil)
          ..add('geometry', geometry)
          ..add('tombstone', tombstone)
          ..add('quality', quality)
          ..add('fields', fields)
          ..add('pairs', pairs)
          ..add('drop', drop)
          ..add('filter', filter)
          ..add('spread', spread))
        .toString();
  }
}

class RecordMappingBuilder
    implements Builder<RecordMapping, RecordMappingBuilder> {
  _$RecordMapping? _$v;

  RecordMappingVersionEnum? _version;
  RecordMappingVersionEnum? get version => _$this._version;
  set version(RecordMappingVersionEnum? version) => _$this._version = version;

  String? _select;
  String? get select => _$this._select;
  set select(String? select) => _$this._select = select;

  JsonObject? _externalId;
  JsonObject? get externalId => _$this._externalId;
  set externalId(JsonObject? externalId) => _$this._externalId = externalId;

  JsonObject? _kind;
  JsonObject? get kind => _$this._kind;
  set kind(JsonObject? kind) => _$this._kind = kind;

  JsonObject? _observedAt;
  JsonObject? get observedAt => _$this._observedAt;
  set observedAt(JsonObject? observedAt) => _$this._observedAt = observedAt;

  JsonObject? _eventTime;
  JsonObject? get eventTime => _$this._eventTime;
  set eventTime(JsonObject? eventTime) => _$this._eventTime = eventTime;

  JsonObject? _validUntil;
  JsonObject? get validUntil => _$this._validUntil;
  set validUntil(JsonObject? validUntil) => _$this._validUntil = validUntil;

  JsonObject? _geometry;
  JsonObject? get geometry => _$this._geometry;
  set geometry(JsonObject? geometry) => _$this._geometry = geometry;

  RecordMappingTombstoneBuilder? _tombstone;
  RecordMappingTombstoneBuilder get tombstone =>
      _$this._tombstone ??= RecordMappingTombstoneBuilder();
  set tombstone(RecordMappingTombstoneBuilder? tombstone) =>
      _$this._tombstone = tombstone;

  RecordMappingQualityBuilder? _quality;
  RecordMappingQualityBuilder get quality =>
      _$this._quality ??= RecordMappingQualityBuilder();
  set quality(RecordMappingQualityBuilder? quality) =>
      _$this._quality = quality;

  ListBuilder<MappingField>? _fields;
  ListBuilder<MappingField> get fields =>
      _$this._fields ??= ListBuilder<MappingField>();
  set fields(ListBuilder<MappingField>? fields) => _$this._fields = fields;

  RecordMappingPairsBuilder? _pairs;
  RecordMappingPairsBuilder get pairs =>
      _$this._pairs ??= RecordMappingPairsBuilder();
  set pairs(RecordMappingPairsBuilder? pairs) => _$this._pairs = pairs;

  ListBuilder<String>? _drop;
  ListBuilder<String> get drop => _$this._drop ??= ListBuilder<String>();
  set drop(ListBuilder<String>? drop) => _$this._drop = drop;

  ListBuilder<RecordMappingFilterInner>? _filter;
  ListBuilder<RecordMappingFilterInner> get filter =>
      _$this._filter ??= ListBuilder<RecordMappingFilterInner>();
  set filter(ListBuilder<RecordMappingFilterInner>? filter) =>
      _$this._filter = filter;

  RecordMappingSpreadBuilder? _spread;
  RecordMappingSpreadBuilder get spread =>
      _$this._spread ??= RecordMappingSpreadBuilder();
  set spread(RecordMappingSpreadBuilder? spread) => _$this._spread = spread;

  RecordMappingBuilder() {
    RecordMapping._defaults(this);
  }

  RecordMappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _select = $v.select;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _observedAt = $v.observedAt;
      _eventTime = $v.eventTime;
      _validUntil = $v.validUntil;
      _geometry = $v.geometry;
      _tombstone = $v.tombstone?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _fields = $v.fields?.toBuilder();
      _pairs = $v.pairs?.toBuilder();
      _drop = $v.drop?.toBuilder();
      _filter = $v.filter?.toBuilder();
      _spread = $v.spread?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordMapping other) {
    _$v = other as _$RecordMapping;
  }

  @override
  void update(void Function(RecordMappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordMapping build() => _build();

  _$RecordMapping _build() {
    _$RecordMapping _$result;
    try {
      _$result = _$v ??
          _$RecordMapping._(
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'RecordMapping', 'version'),
            select: select,
            externalId: externalId,
            kind: kind,
            observedAt: observedAt,
            eventTime: eventTime,
            validUntil: validUntil,
            geometry: geometry,
            tombstone: _tombstone?.build(),
            quality: _quality?.build(),
            fields: _fields?.build(),
            pairs: _pairs?.build(),
            drop: _drop?.build(),
            filter: _filter?.build(),
            spread: _spread?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tombstone';
        _tombstone?.build();
        _$failedField = 'quality';
        _quality?.build();
        _$failedField = 'fields';
        _fields?.build();
        _$failedField = 'pairs';
        _pairs?.build();
        _$failedField = 'drop';
        _drop?.build();
        _$failedField = 'filter';
        _filter?.build();
        _$failedField = 'spread';
        _spread?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecordMapping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
