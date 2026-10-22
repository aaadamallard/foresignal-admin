// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_legend.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductLegend extends ProductLegend {
  @override
  final String? summary;
  @override
  final String? url;
  @override
  final String? pngUrl;

  factory _$ProductLegend([void Function(ProductLegendBuilder)? updates]) =>
      (ProductLegendBuilder()..update(updates))._build();

  _$ProductLegend._({this.summary, this.url, this.pngUrl}) : super._();
  @override
  ProductLegend rebuild(void Function(ProductLegendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductLegendBuilder toBuilder() => ProductLegendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductLegend &&
        summary == other.summary &&
        url == other.url &&
        pngUrl == other.pngUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, pngUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductLegend')
          ..add('summary', summary)
          ..add('url', url)
          ..add('pngUrl', pngUrl))
        .toString();
  }
}

class ProductLegendBuilder
    implements Builder<ProductLegend, ProductLegendBuilder> {
  _$ProductLegend? _$v;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _pngUrl;
  String? get pngUrl => _$this._pngUrl;
  set pngUrl(String? pngUrl) => _$this._pngUrl = pngUrl;

  ProductLegendBuilder() {
    ProductLegend._defaults(this);
  }

  ProductLegendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summary = $v.summary;
      _url = $v.url;
      _pngUrl = $v.pngUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductLegend other) {
    _$v = other as _$ProductLegend;
  }

  @override
  void update(void Function(ProductLegendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductLegend build() => _build();

  _$ProductLegend _build() {
    final _$result =
        _$v ?? _$ProductLegend._(summary: summary, url: url, pngUrl: pngUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
