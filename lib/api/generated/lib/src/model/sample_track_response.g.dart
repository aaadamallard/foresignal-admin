// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_track_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SampleTrackResponse extends SampleTrackResponse {
  @override
  final String? record;
  @override
  final BuiltList<String> products;
  @override
  final BuiltList<SampleTrackResponsePointsInner> points;
  @override
  final BuiltList<Attribution>? attribution;
  @override
  final DateTime? serverTime;

  factory _$SampleTrackResponse([
    void Function(SampleTrackResponseBuilder)? updates,
  ]) => (SampleTrackResponseBuilder()..update(updates))._build();

  _$SampleTrackResponse._({
    this.record,
    required this.products,
    required this.points,
    this.attribution,
    this.serverTime,
  }) : super._();
  @override
  SampleTrackResponse rebuild(
    void Function(SampleTrackResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SampleTrackResponseBuilder toBuilder() =>
      SampleTrackResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleTrackResponse &&
        record == other.record &&
        products == other.products &&
        points == other.points &&
        attribution == other.attribution &&
        serverTime == other.serverTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleTrackResponse')
          ..add('record', record)
          ..add('products', products)
          ..add('points', points)
          ..add('attribution', attribution)
          ..add('serverTime', serverTime))
        .toString();
  }
}

class SampleTrackResponseBuilder
    implements Builder<SampleTrackResponse, SampleTrackResponseBuilder> {
  _$SampleTrackResponse? _$v;

  String? _record;
  String? get record => _$this._record;
  set record(String? record) => _$this._record = record;

  ListBuilder<String>? _products;
  ListBuilder<String> get products =>
      _$this._products ??= ListBuilder<String>();
  set products(ListBuilder<String>? products) => _$this._products = products;

  ListBuilder<SampleTrackResponsePointsInner>? _points;
  ListBuilder<SampleTrackResponsePointsInner> get points =>
      _$this._points ??= ListBuilder<SampleTrackResponsePointsInner>();
  set points(ListBuilder<SampleTrackResponsePointsInner>? points) =>
      _$this._points = points;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  SampleTrackResponseBuilder() {
    SampleTrackResponse._defaults(this);
  }

  SampleTrackResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _record = $v.record;
      _products = $v.products.toBuilder();
      _points = $v.points.toBuilder();
      _attribution = $v.attribution?.toBuilder();
      _serverTime = $v.serverTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleTrackResponse other) {
    _$v = other as _$SampleTrackResponse;
  }

  @override
  void update(void Function(SampleTrackResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleTrackResponse build() => _build();

  _$SampleTrackResponse _build() {
    _$SampleTrackResponse _$result;
    try {
      _$result =
          _$v ??
          _$SampleTrackResponse._(
            record: record,
            products: products.build(),
            points: points.build(),
            attribution: _attribution?.build(),
            serverTime: serverTime,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
        _$failedField = 'points';
        points.build();
        _$failedField = 'attribution';
        _attribution?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SampleTrackResponse',
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
