// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductLinks extends ProductLinks {
  @override
  final String? self;
  @override
  final String? frames;
  @override
  final String? latest;
  @override
  final String? tilejson;
  @override
  final String? legend;
  @override
  final String? timeline;

  factory _$ProductLinks([void Function(ProductLinksBuilder)? updates]) =>
      (ProductLinksBuilder()..update(updates))._build();

  _$ProductLinks._(
      {this.self,
      this.frames,
      this.latest,
      this.tilejson,
      this.legend,
      this.timeline})
      : super._();
  @override
  ProductLinks rebuild(void Function(ProductLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductLinksBuilder toBuilder() => ProductLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductLinks &&
        self == other.self &&
        frames == other.frames &&
        latest == other.latest &&
        tilejson == other.tilejson &&
        legend == other.legend &&
        timeline == other.timeline;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, self.hashCode);
    _$hash = $jc(_$hash, frames.hashCode);
    _$hash = $jc(_$hash, latest.hashCode);
    _$hash = $jc(_$hash, tilejson.hashCode);
    _$hash = $jc(_$hash, legend.hashCode);
    _$hash = $jc(_$hash, timeline.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductLinks')
          ..add('self', self)
          ..add('frames', frames)
          ..add('latest', latest)
          ..add('tilejson', tilejson)
          ..add('legend', legend)
          ..add('timeline', timeline))
        .toString();
  }
}

class ProductLinksBuilder
    implements Builder<ProductLinks, ProductLinksBuilder> {
  _$ProductLinks? _$v;

  String? _self;
  String? get self => _$this._self;
  set self(String? self) => _$this._self = self;

  String? _frames;
  String? get frames => _$this._frames;
  set frames(String? frames) => _$this._frames = frames;

  String? _latest;
  String? get latest => _$this._latest;
  set latest(String? latest) => _$this._latest = latest;

  String? _tilejson;
  String? get tilejson => _$this._tilejson;
  set tilejson(String? tilejson) => _$this._tilejson = tilejson;

  String? _legend;
  String? get legend => _$this._legend;
  set legend(String? legend) => _$this._legend = legend;

  String? _timeline;
  String? get timeline => _$this._timeline;
  set timeline(String? timeline) => _$this._timeline = timeline;

  ProductLinksBuilder() {
    ProductLinks._defaults(this);
  }

  ProductLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _self = $v.self;
      _frames = $v.frames;
      _latest = $v.latest;
      _tilejson = $v.tilejson;
      _legend = $v.legend;
      _timeline = $v.timeline;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductLinks other) {
    _$v = other as _$ProductLinks;
  }

  @override
  void update(void Function(ProductLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductLinks build() => _build();

  _$ProductLinks _build() {
    final _$result = _$v ??
        _$ProductLinks._(
          self: self,
          frames: frames,
          latest: latest,
          tilejson: tilejson,
          legend: legend,
          timeline: timeline,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
