// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Series extends Series {
  @override
  final String productId;
  @override
  final num lon;
  @override
  final num lat;
  @override
  final String? placeId;
  @override
  final String? timezone;
  @override
  final String? units;
  @override
  final String? label;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final String? run;
  @override
  final BuiltList<SeriesSample> items;
  @override
  final Attribution? attribution;
  @override
  final DateTime serverTime;

  factory _$Series([void Function(SeriesBuilder)? updates]) =>
      (SeriesBuilder()..update(updates))._build();

  _$Series._({
    required this.productId,
    required this.lon,
    required this.lat,
    this.placeId,
    this.timezone,
    this.units,
    this.label,
    this.from,
    this.to,
    this.run,
    required this.items,
    this.attribution,
    required this.serverTime,
  }) : super._();
  @override
  Series rebuild(void Function(SeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesBuilder toBuilder() => SeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Series &&
        productId == other.productId &&
        lon == other.lon &&
        lat == other.lat &&
        placeId == other.placeId &&
        timezone == other.timezone &&
        units == other.units &&
        label == other.label &&
        from == other.from &&
        to == other.to &&
        run == other.run &&
        items == other.items &&
        attribution == other.attribution &&
        serverTime == other.serverTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Series')
          ..add('productId', productId)
          ..add('lon', lon)
          ..add('lat', lat)
          ..add('placeId', placeId)
          ..add('timezone', timezone)
          ..add('units', units)
          ..add('label', label)
          ..add('from', from)
          ..add('to', to)
          ..add('run', run)
          ..add('items', items)
          ..add('attribution', attribution)
          ..add('serverTime', serverTime))
        .toString();
  }
}

class SeriesBuilder implements Builder<Series, SeriesBuilder> {
  _$Series? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  ListBuilder<SeriesSample>? _items;
  ListBuilder<SeriesSample> get items =>
      _$this._items ??= ListBuilder<SeriesSample>();
  set items(ListBuilder<SeriesSample>? items) => _$this._items = items;

  AttributionBuilder? _attribution;
  AttributionBuilder get attribution =>
      _$this._attribution ??= AttributionBuilder();
  set attribution(AttributionBuilder? attribution) =>
      _$this._attribution = attribution;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  SeriesBuilder() {
    Series._defaults(this);
  }

  SeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _lon = $v.lon;
      _lat = $v.lat;
      _placeId = $v.placeId;
      _timezone = $v.timezone;
      _units = $v.units;
      _label = $v.label;
      _from = $v.from;
      _to = $v.to;
      _run = $v.run;
      _items = $v.items.toBuilder();
      _attribution = $v.attribution?.toBuilder();
      _serverTime = $v.serverTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Series other) {
    _$v = other as _$Series;
  }

  @override
  void update(void Function(SeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Series build() => _build();

  _$Series _build() {
    _$Series _$result;
    try {
      _$result =
          _$v ??
          _$Series._(
            productId: BuiltValueNullFieldError.checkNotNull(
              productId,
              r'Series',
              'productId',
            ),
            lon: BuiltValueNullFieldError.checkNotNull(lon, r'Series', 'lon'),
            lat: BuiltValueNullFieldError.checkNotNull(lat, r'Series', 'lat'),
            placeId: placeId,
            timezone: timezone,
            units: units,
            label: label,
            from: from,
            to: to,
            run: run,
            items: items.build(),
            attribution: _attribution?.build(),
            serverTime: BuiltValueNullFieldError.checkNotNull(
              serverTime,
              r'Series',
              'serverTime',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
        _$failedField = 'attribution';
        _attribution?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Series',
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
