// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaLinks extends MediaLinks {
  @override
  final String? self;
  @override
  final String? meta;
  @override
  final String? thumbnail256;
  @override
  final String? thumbnail1024;

  factory _$MediaLinks([void Function(MediaLinksBuilder)? updates]) =>
      (MediaLinksBuilder()..update(updates))._build();

  _$MediaLinks._({this.self, this.meta, this.thumbnail256, this.thumbnail1024})
      : super._();
  @override
  MediaLinks rebuild(void Function(MediaLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaLinksBuilder toBuilder() => MediaLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaLinks &&
        self == other.self &&
        meta == other.meta &&
        thumbnail256 == other.thumbnail256 &&
        thumbnail1024 == other.thumbnail1024;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, self.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, thumbnail256.hashCode);
    _$hash = $jc(_$hash, thumbnail1024.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaLinks')
          ..add('self', self)
          ..add('meta', meta)
          ..add('thumbnail256', thumbnail256)
          ..add('thumbnail1024', thumbnail1024))
        .toString();
  }
}

class MediaLinksBuilder implements Builder<MediaLinks, MediaLinksBuilder> {
  _$MediaLinks? _$v;

  String? _self;
  String? get self => _$this._self;
  set self(String? self) => _$this._self = self;

  String? _meta;
  String? get meta => _$this._meta;
  set meta(String? meta) => _$this._meta = meta;

  String? _thumbnail256;
  String? get thumbnail256 => _$this._thumbnail256;
  set thumbnail256(String? thumbnail256) => _$this._thumbnail256 = thumbnail256;

  String? _thumbnail1024;
  String? get thumbnail1024 => _$this._thumbnail1024;
  set thumbnail1024(String? thumbnail1024) =>
      _$this._thumbnail1024 = thumbnail1024;

  MediaLinksBuilder() {
    MediaLinks._defaults(this);
  }

  MediaLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _self = $v.self;
      _meta = $v.meta;
      _thumbnail256 = $v.thumbnail256;
      _thumbnail1024 = $v.thumbnail1024;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaLinks other) {
    _$v = other as _$MediaLinks;
  }

  @override
  void update(void Function(MediaLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaLinks build() => _build();

  _$MediaLinks _build() {
    final _$result = _$v ??
        _$MediaLinks._(
          self: self,
          meta: meta,
          thumbnail256: thumbnail256,
          thumbnail1024: thumbnail1024,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
