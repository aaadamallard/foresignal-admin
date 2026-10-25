// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrackTypeEnum _$trackTypeEnum_feature = const TrackTypeEnum._('feature');
const TrackTypeEnum _$trackTypeEnum_unknownDefaultOpenApi =
    const TrackTypeEnum._('unknownDefaultOpenApi');

TrackTypeEnum _$trackTypeEnumValueOf(String name) {
  switch (name) {
    case 'feature':
      return _$trackTypeEnum_feature;
    case 'unknownDefaultOpenApi':
      return _$trackTypeEnum_unknownDefaultOpenApi;
    default:
      return _$trackTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<TrackTypeEnum> _$trackTypeEnumValues = BuiltSet<TrackTypeEnum>(
  const <TrackTypeEnum>[
    _$trackTypeEnum_feature,
    _$trackTypeEnum_unknownDefaultOpenApi,
  ],
);

Serializer<TrackTypeEnum> _$trackTypeEnumSerializer =
    _$TrackTypeEnumSerializer();

class _$TrackTypeEnumSerializer implements PrimitiveSerializer<TrackTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'feature': 'Feature',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Feature': 'feature',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackTypeEnum];
  @override
  final String wireName = 'TrackTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    TrackTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TrackTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TrackTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Track extends Track {
  @override
  final TrackTypeEnum type;
  @override
  final Geometry? geometry;
  @override
  final TrackProperties properties;

  factory _$Track([void Function(TrackBuilder)? updates]) =>
      (TrackBuilder()..update(updates))._build();

  _$Track._({required this.type, this.geometry, required this.properties})
    : super._();
  @override
  Track rebuild(void Function(TrackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackBuilder toBuilder() => TrackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Track &&
        type == other.type &&
        geometry == other.geometry &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Track')
          ..add('type', type)
          ..add('geometry', geometry)
          ..add('properties', properties))
        .toString();
  }
}

class TrackBuilder implements Builder<Track, TrackBuilder> {
  _$Track? _$v;

  TrackTypeEnum? _type;
  TrackTypeEnum? get type => _$this._type;
  set type(TrackTypeEnum? type) => _$this._type = type;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  TrackPropertiesBuilder? _properties;
  TrackPropertiesBuilder get properties =>
      _$this._properties ??= TrackPropertiesBuilder();
  set properties(TrackPropertiesBuilder? properties) =>
      _$this._properties = properties;

  TrackBuilder() {
    Track._defaults(this);
  }

  TrackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _geometry = $v.geometry?.toBuilder();
      _properties = $v.properties.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Track other) {
    _$v = other as _$Track;
  }

  @override
  void update(void Function(TrackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Track build() => _build();

  _$Track _build() {
    _$Track _$result;
    try {
      _$result =
          _$v ??
          _$Track._(
            type: BuiltValueNullFieldError.checkNotNull(type, r'Track', 'type'),
            geometry: _geometry?.build(),
            properties: properties.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Track', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
