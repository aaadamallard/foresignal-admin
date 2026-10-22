// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_key_created_urls_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeedKeyCreatedUrlsInner extends FeedKeyCreatedUrlsInner {
  @override
  final String prefix;
  @override
  final String url;

  factory _$FeedKeyCreatedUrlsInner([
    void Function(FeedKeyCreatedUrlsInnerBuilder)? updates,
  ]) => (FeedKeyCreatedUrlsInnerBuilder()..update(updates))._build();

  _$FeedKeyCreatedUrlsInner._({required this.prefix, required this.url})
    : super._();
  @override
  FeedKeyCreatedUrlsInner rebuild(
    void Function(FeedKeyCreatedUrlsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FeedKeyCreatedUrlsInnerBuilder toBuilder() =>
      FeedKeyCreatedUrlsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedKeyCreatedUrlsInner &&
        prefix == other.prefix &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedKeyCreatedUrlsInner')
          ..add('prefix', prefix)
          ..add('url', url))
        .toString();
  }
}

class FeedKeyCreatedUrlsInnerBuilder
    implements
        Builder<FeedKeyCreatedUrlsInner, FeedKeyCreatedUrlsInnerBuilder> {
  _$FeedKeyCreatedUrlsInner? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  FeedKeyCreatedUrlsInnerBuilder() {
    FeedKeyCreatedUrlsInner._defaults(this);
  }

  FeedKeyCreatedUrlsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedKeyCreatedUrlsInner other) {
    _$v = other as _$FeedKeyCreatedUrlsInner;
  }

  @override
  void update(void Function(FeedKeyCreatedUrlsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedKeyCreatedUrlsInner build() => _build();

  _$FeedKeyCreatedUrlsInner _build() {
    final _$result =
        _$v ??
        _$FeedKeyCreatedUrlsInner._(
          prefix: BuiltValueNullFieldError.checkNotNull(
            prefix,
            r'FeedKeyCreatedUrlsInner',
            'prefix',
          ),
          url: BuiltValueNullFieldError.checkNotNull(
            url,
            r'FeedKeyCreatedUrlsInner',
            'url',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
