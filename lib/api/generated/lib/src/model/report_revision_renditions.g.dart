// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_revision_renditions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportRevisionRenditions extends ReportRevisionRenditions {
  @override
  final String? markdown;
  @override
  final String? html;
  @override
  final String? json;

  factory _$ReportRevisionRenditions(
          [void Function(ReportRevisionRenditionsBuilder)? updates]) =>
      (ReportRevisionRenditionsBuilder()..update(updates))._build();

  _$ReportRevisionRenditions._({this.markdown, this.html, this.json})
      : super._();
  @override
  ReportRevisionRenditions rebuild(
          void Function(ReportRevisionRenditionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportRevisionRenditionsBuilder toBuilder() =>
      ReportRevisionRenditionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportRevisionRenditions &&
        markdown == other.markdown &&
        html == other.html &&
        json == other.json;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, markdown.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, json.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportRevisionRenditions')
          ..add('markdown', markdown)
          ..add('html', html)
          ..add('json', json))
        .toString();
  }
}

class ReportRevisionRenditionsBuilder
    implements
        Builder<ReportRevisionRenditions, ReportRevisionRenditionsBuilder> {
  _$ReportRevisionRenditions? _$v;

  String? _markdown;
  String? get markdown => _$this._markdown;
  set markdown(String? markdown) => _$this._markdown = markdown;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  String? _json;
  String? get json => _$this._json;
  set json(String? json) => _$this._json = json;

  ReportRevisionRenditionsBuilder() {
    ReportRevisionRenditions._defaults(this);
  }

  ReportRevisionRenditionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _markdown = $v.markdown;
      _html = $v.html;
      _json = $v.json;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportRevisionRenditions other) {
    _$v = other as _$ReportRevisionRenditions;
  }

  @override
  void update(void Function(ReportRevisionRenditionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportRevisionRenditions build() => _build();

  _$ReportRevisionRenditions _build() {
    final _$result = _$v ??
        _$ReportRevisionRenditions._(
          markdown: markdown,
          html: html,
          json: json,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
