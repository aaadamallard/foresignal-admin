// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collab_attachment_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollabAttachmentLinks extends CollabAttachmentLinks {
  @override
  final String? content;

  factory _$CollabAttachmentLinks(
          [void Function(CollabAttachmentLinksBuilder)? updates]) =>
      (CollabAttachmentLinksBuilder()..update(updates))._build();

  _$CollabAttachmentLinks._({this.content}) : super._();
  @override
  CollabAttachmentLinks rebuild(
          void Function(CollabAttachmentLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollabAttachmentLinksBuilder toBuilder() =>
      CollabAttachmentLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollabAttachmentLinks && content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollabAttachmentLinks')
          ..add('content', content))
        .toString();
  }
}

class CollabAttachmentLinksBuilder
    implements Builder<CollabAttachmentLinks, CollabAttachmentLinksBuilder> {
  _$CollabAttachmentLinks? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  CollabAttachmentLinksBuilder() {
    CollabAttachmentLinks._defaults(this);
  }

  CollabAttachmentLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollabAttachmentLinks other) {
    _$v = other as _$CollabAttachmentLinks;
  }

  @override
  void update(void Function(CollabAttachmentLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollabAttachmentLinks build() => _build();

  _$CollabAttachmentLinks _build() {
    final _$result = _$v ??
        _$CollabAttachmentLinks._(
          content: content,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
