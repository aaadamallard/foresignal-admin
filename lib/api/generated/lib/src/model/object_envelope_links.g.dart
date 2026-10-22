// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_envelope_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectEnvelopeLinks extends ObjectEnvelopeLinks {
  @override
  final String? self;
  @override
  final String? related;

  factory _$ObjectEnvelopeLinks(
          [void Function(ObjectEnvelopeLinksBuilder)? updates]) =>
      (ObjectEnvelopeLinksBuilder()..update(updates))._build();

  _$ObjectEnvelopeLinks._({this.self, this.related}) : super._();
  @override
  ObjectEnvelopeLinks rebuild(
          void Function(ObjectEnvelopeLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectEnvelopeLinksBuilder toBuilder() =>
      ObjectEnvelopeLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectEnvelopeLinks &&
        self == other.self &&
        related == other.related;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, self.hashCode);
    _$hash = $jc(_$hash, related.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectEnvelopeLinks')
          ..add('self', self)
          ..add('related', related))
        .toString();
  }
}

class ObjectEnvelopeLinksBuilder
    implements Builder<ObjectEnvelopeLinks, ObjectEnvelopeLinksBuilder> {
  _$ObjectEnvelopeLinks? _$v;

  String? _self;
  String? get self => _$this._self;
  set self(String? self) => _$this._self = self;

  String? _related;
  String? get related => _$this._related;
  set related(String? related) => _$this._related = related;

  ObjectEnvelopeLinksBuilder() {
    ObjectEnvelopeLinks._defaults(this);
  }

  ObjectEnvelopeLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _self = $v.self;
      _related = $v.related;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectEnvelopeLinks other) {
    _$v = other as _$ObjectEnvelopeLinks;
  }

  @override
  void update(void Function(ObjectEnvelopeLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectEnvelopeLinks build() => _build();

  _$ObjectEnvelopeLinks _build() {
    final _$result = _$v ??
        _$ObjectEnvelopeLinks._(
          self: self,
          related: related,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
