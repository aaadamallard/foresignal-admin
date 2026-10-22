// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribution.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Attribution extends Attribution {
  @override
  final String text;
  @override
  final String? html;
  @override
  final String? url;
  @override
  final String licence;
  @override
  final String? licenceUrl;
  @override
  final bool requiredDisplay;
  @override
  final String? sourceId;
  @override
  final String? termsUrl;
  @override
  final int? count;

  factory _$Attribution([void Function(AttributionBuilder)? updates]) =>
      (AttributionBuilder()..update(updates))._build();

  _$Attribution._(
      {required this.text,
      this.html,
      this.url,
      required this.licence,
      this.licenceUrl,
      required this.requiredDisplay,
      this.sourceId,
      this.termsUrl,
      this.count})
      : super._();
  @override
  Attribution rebuild(void Function(AttributionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributionBuilder toBuilder() => AttributionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attribution &&
        text == other.text &&
        html == other.html &&
        url == other.url &&
        licence == other.licence &&
        licenceUrl == other.licenceUrl &&
        requiredDisplay == other.requiredDisplay &&
        sourceId == other.sourceId &&
        termsUrl == other.termsUrl &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, licenceUrl.hashCode);
    _$hash = $jc(_$hash, requiredDisplay.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, termsUrl.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Attribution')
          ..add('text', text)
          ..add('html', html)
          ..add('url', url)
          ..add('licence', licence)
          ..add('licenceUrl', licenceUrl)
          ..add('requiredDisplay', requiredDisplay)
          ..add('sourceId', sourceId)
          ..add('termsUrl', termsUrl)
          ..add('count', count))
        .toString();
  }
}

class AttributionBuilder implements Builder<Attribution, AttributionBuilder> {
  _$Attribution? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  String? _licenceUrl;
  String? get licenceUrl => _$this._licenceUrl;
  set licenceUrl(String? licenceUrl) => _$this._licenceUrl = licenceUrl;

  bool? _requiredDisplay;
  bool? get requiredDisplay => _$this._requiredDisplay;
  set requiredDisplay(bool? requiredDisplay) =>
      _$this._requiredDisplay = requiredDisplay;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _termsUrl;
  String? get termsUrl => _$this._termsUrl;
  set termsUrl(String? termsUrl) => _$this._termsUrl = termsUrl;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  AttributionBuilder() {
    Attribution._defaults(this);
  }

  AttributionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _html = $v.html;
      _url = $v.url;
      _licence = $v.licence;
      _licenceUrl = $v.licenceUrl;
      _requiredDisplay = $v.requiredDisplay;
      _sourceId = $v.sourceId;
      _termsUrl = $v.termsUrl;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attribution other) {
    _$v = other as _$Attribution;
  }

  @override
  void update(void Function(AttributionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Attribution build() => _build();

  _$Attribution _build() {
    final _$result = _$v ??
        _$Attribution._(
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'Attribution', 'text'),
          html: html,
          url: url,
          licence: BuiltValueNullFieldError.checkNotNull(
              licence, r'Attribution', 'licence'),
          licenceUrl: licenceUrl,
          requiredDisplay: BuiltValueNullFieldError.checkNotNull(
              requiredDisplay, r'Attribution', 'requiredDisplay'),
          sourceId: sourceId,
          termsUrl: termsUrl,
          count: count,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
