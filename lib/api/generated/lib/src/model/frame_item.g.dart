// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frame_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FrameItem extends FrameItem {
  @override
  final String id;
  @override
  final String kind;
  @override
  final String? title;
  @override
  final DateTime observedAt;
  @override
  final int version;
  @override
  final num? lon;
  @override
  final num? lat;
  @override
  final Geometry? geometry;
  @override
  final BuiltMap<String, JsonObject?>? props;

  factory _$FrameItem([void Function(FrameItemBuilder)? updates]) =>
      (FrameItemBuilder()..update(updates))._build();

  _$FrameItem._({
    required this.id,
    required this.kind,
    this.title,
    required this.observedAt,
    required this.version,
    this.lon,
    this.lat,
    this.geometry,
    this.props,
  }) : super._();
  @override
  FrameItem rebuild(void Function(FrameItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FrameItemBuilder toBuilder() => FrameItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FrameItem &&
        id == other.id &&
        kind == other.kind &&
        title == other.title &&
        observedAt == other.observedAt &&
        version == other.version &&
        lon == other.lon &&
        lat == other.lat &&
        geometry == other.geometry &&
        props == other.props;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, props.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FrameItem')
          ..add('id', id)
          ..add('kind', kind)
          ..add('title', title)
          ..add('observedAt', observedAt)
          ..add('version', version)
          ..add('lon', lon)
          ..add('lat', lat)
          ..add('geometry', geometry)
          ..add('props', props))
        .toString();
  }
}

class FrameItemBuilder implements Builder<FrameItem, FrameItemBuilder> {
  _$FrameItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  MapBuilder<String, JsonObject?>? _props;
  MapBuilder<String, JsonObject?> get props =>
      _$this._props ??= MapBuilder<String, JsonObject?>();
  set props(MapBuilder<String, JsonObject?>? props) => _$this._props = props;

  FrameItemBuilder() {
    FrameItem._defaults(this);
  }

  FrameItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _kind = $v.kind;
      _title = $v.title;
      _observedAt = $v.observedAt;
      _version = $v.version;
      _lon = $v.lon;
      _lat = $v.lat;
      _geometry = $v.geometry?.toBuilder();
      _props = $v.props?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FrameItem other) {
    _$v = other as _$FrameItem;
  }

  @override
  void update(void Function(FrameItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FrameItem build() => _build();

  _$FrameItem _build() {
    _$FrameItem _$result;
    try {
      _$result =
          _$v ??
          _$FrameItem._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'FrameItem', 'id'),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'FrameItem',
              'kind',
            ),
            title: title,
            observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt,
              r'FrameItem',
              'observedAt',
            ),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'FrameItem',
              'version',
            ),
            lon: lon,
            lat: lat,
            geometry: _geometry?.build(),
            props: _props?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'props';
        _props?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FrameItem',
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
