// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glance_briefing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlanceBriefing extends GlanceBriefing {
  @override
  final String? title;
  @override
  final DateTime? at;
  @override
  final String? url;

  factory _$GlanceBriefing([void Function(GlanceBriefingBuilder)? updates]) =>
      (GlanceBriefingBuilder()..update(updates))._build();

  _$GlanceBriefing._({this.title, this.at, this.url}) : super._();
  @override
  GlanceBriefing rebuild(void Function(GlanceBriefingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlanceBriefingBuilder toBuilder() => GlanceBriefingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlanceBriefing &&
        title == other.title &&
        at == other.at &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlanceBriefing')
          ..add('title', title)
          ..add('at', at)
          ..add('url', url))
        .toString();
  }
}

class GlanceBriefingBuilder
    implements Builder<GlanceBriefing, GlanceBriefingBuilder> {
  _$GlanceBriefing? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GlanceBriefingBuilder() {
    GlanceBriefing._defaults(this);
  }

  GlanceBriefingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _at = $v.at;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlanceBriefing other) {
    _$v = other as _$GlanceBriefing;
  }

  @override
  void update(void Function(GlanceBriefingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlanceBriefing build() => _build();

  _$GlanceBriefing _build() {
    final _$result = _$v ??
        _$GlanceBriefing._(
          title: title,
          at: at,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
