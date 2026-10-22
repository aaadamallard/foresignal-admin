// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_source_info_terms.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpSourceInfoTerms extends EdpSourceInfoTerms {
  @override
  final String? summary;
  @override
  final String? url;

  factory _$EdpSourceInfoTerms([
    void Function(EdpSourceInfoTermsBuilder)? updates,
  ]) => (EdpSourceInfoTermsBuilder()..update(updates))._build();

  _$EdpSourceInfoTerms._({this.summary, this.url}) : super._();
  @override
  EdpSourceInfoTerms rebuild(
    void Function(EdpSourceInfoTermsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdpSourceInfoTermsBuilder toBuilder() =>
      EdpSourceInfoTermsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSourceInfoTerms &&
        summary == other.summary &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSourceInfoTerms')
          ..add('summary', summary)
          ..add('url', url))
        .toString();
  }
}

class EdpSourceInfoTermsBuilder
    implements Builder<EdpSourceInfoTerms, EdpSourceInfoTermsBuilder> {
  _$EdpSourceInfoTerms? _$v;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  EdpSourceInfoTermsBuilder() {
    EdpSourceInfoTerms._defaults(this);
  }

  EdpSourceInfoTermsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summary = $v.summary;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSourceInfoTerms other) {
    _$v = other as _$EdpSourceInfoTerms;
  }

  @override
  void update(void Function(EdpSourceInfoTermsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSourceInfoTerms build() => _build();

  _$EdpSourceInfoTerms _build() {
    final _$result = _$v ?? _$EdpSourceInfoTerms._(summary: summary, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
