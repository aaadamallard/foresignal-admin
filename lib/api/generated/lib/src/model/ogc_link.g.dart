// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcLink extends OgcLink {
  @override
  final String href;
  @override
  final String rel;
  @override
  final String? type;
  @override
  final String? title;
  @override
  final bool? templated;

  factory _$OgcLink([void Function(OgcLinkBuilder)? updates]) =>
      (OgcLinkBuilder()..update(updates))._build();

  _$OgcLink._(
      {required this.href,
      required this.rel,
      this.type,
      this.title,
      this.templated})
      : super._();
  @override
  OgcLink rebuild(void Function(OgcLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcLinkBuilder toBuilder() => OgcLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcLink &&
        href == other.href &&
        rel == other.rel &&
        type == other.type &&
        title == other.title &&
        templated == other.templated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, href.hashCode);
    _$hash = $jc(_$hash, rel.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, templated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcLink')
          ..add('href', href)
          ..add('rel', rel)
          ..add('type', type)
          ..add('title', title)
          ..add('templated', templated))
        .toString();
  }
}

class OgcLinkBuilder implements Builder<OgcLink, OgcLinkBuilder> {
  _$OgcLink? _$v;

  String? _href;
  String? get href => _$this._href;
  set href(String? href) => _$this._href = href;

  String? _rel;
  String? get rel => _$this._rel;
  set rel(String? rel) => _$this._rel = rel;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _templated;
  bool? get templated => _$this._templated;
  set templated(bool? templated) => _$this._templated = templated;

  OgcLinkBuilder() {
    OgcLink._defaults(this);
  }

  OgcLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _href = $v.href;
      _rel = $v.rel;
      _type = $v.type;
      _title = $v.title;
      _templated = $v.templated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcLink other) {
    _$v = other as _$OgcLink;
  }

  @override
  void update(void Function(OgcLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcLink build() => _build();

  _$OgcLink _build() {
    final _$result = _$v ??
        _$OgcLink._(
          href: BuiltValueNullFieldError.checkNotNull(href, r'OgcLink', 'href'),
          rel: BuiltValueNullFieldError.checkNotNull(rel, r'OgcLink', 'rel'),
          type: type,
          title: title,
          templated: templated,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
