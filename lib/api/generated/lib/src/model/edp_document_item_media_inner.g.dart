// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_document_item_media_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpDocumentItemMediaInner extends EdpDocumentItemMediaInner {
  @override
  final String? type;
  @override
  final String url;
  @override
  final String? thumbUrl;

  factory _$EdpDocumentItemMediaInner(
          [void Function(EdpDocumentItemMediaInnerBuilder)? updates]) =>
      (EdpDocumentItemMediaInnerBuilder()..update(updates))._build();

  _$EdpDocumentItemMediaInner._({this.type, required this.url, this.thumbUrl})
      : super._();
  @override
  EdpDocumentItemMediaInner rebuild(
          void Function(EdpDocumentItemMediaInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpDocumentItemMediaInnerBuilder toBuilder() =>
      EdpDocumentItemMediaInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpDocumentItemMediaInner &&
        type == other.type &&
        url == other.url &&
        thumbUrl == other.thumbUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, thumbUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpDocumentItemMediaInner')
          ..add('type', type)
          ..add('url', url)
          ..add('thumbUrl', thumbUrl))
        .toString();
  }
}

class EdpDocumentItemMediaInnerBuilder
    implements
        Builder<EdpDocumentItemMediaInner, EdpDocumentItemMediaInnerBuilder> {
  _$EdpDocumentItemMediaInner? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _thumbUrl;
  String? get thumbUrl => _$this._thumbUrl;
  set thumbUrl(String? thumbUrl) => _$this._thumbUrl = thumbUrl;

  EdpDocumentItemMediaInnerBuilder() {
    EdpDocumentItemMediaInner._defaults(this);
  }

  EdpDocumentItemMediaInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _url = $v.url;
      _thumbUrl = $v.thumbUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpDocumentItemMediaInner other) {
    _$v = other as _$EdpDocumentItemMediaInner;
  }

  @override
  void update(void Function(EdpDocumentItemMediaInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpDocumentItemMediaInner build() => _build();

  _$EdpDocumentItemMediaInner _build() {
    final _$result = _$v ??
        _$EdpDocumentItemMediaInner._(
          type: type,
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'EdpDocumentItemMediaInner', 'url'),
          thumbUrl: thumbUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
