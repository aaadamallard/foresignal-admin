// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_landing_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcLandingPage extends OgcLandingPage {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? attribution;
  @override
  final BuiltList<OgcLink> links;

  factory _$OgcLandingPage([void Function(OgcLandingPageBuilder)? updates]) =>
      (OgcLandingPageBuilder()..update(updates))._build();

  _$OgcLandingPage._(
      {this.title, this.description, this.attribution, required this.links})
      : super._();
  @override
  OgcLandingPage rebuild(void Function(OgcLandingPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcLandingPageBuilder toBuilder() => OgcLandingPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcLandingPage &&
        title == other.title &&
        description == other.description &&
        attribution == other.attribution &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcLandingPage')
          ..add('title', title)
          ..add('description', description)
          ..add('attribution', attribution)
          ..add('links', links))
        .toString();
  }
}

class OgcLandingPageBuilder
    implements Builder<OgcLandingPage, OgcLandingPageBuilder> {
  _$OgcLandingPage? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  OgcLandingPageBuilder() {
    OgcLandingPage._defaults(this);
  }

  OgcLandingPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _attribution = $v.attribution;
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcLandingPage other) {
    _$v = other as _$OgcLandingPage;
  }

  @override
  void update(void Function(OgcLandingPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcLandingPage build() => _build();

  _$OgcLandingPage _build() {
    _$OgcLandingPage _$result;
    try {
      _$result = _$v ??
          _$OgcLandingPage._(
            title: title,
            description: description,
            attribution: attribution,
            links: links.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcLandingPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
