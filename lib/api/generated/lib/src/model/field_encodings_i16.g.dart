// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_encodings_i16.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldEncodingsI16 extends FieldEncodingsI16 {
  @override
  final String? url;
  @override
  final num? scale;
  @override
  final num? offset;

  factory _$FieldEncodingsI16([
    void Function(FieldEncodingsI16Builder)? updates,
  ]) => (FieldEncodingsI16Builder()..update(updates))._build();

  _$FieldEncodingsI16._({this.url, this.scale, this.offset}) : super._();
  @override
  FieldEncodingsI16 rebuild(void Function(FieldEncodingsI16Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldEncodingsI16Builder toBuilder() =>
      FieldEncodingsI16Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldEncodingsI16 &&
        url == other.url &&
        scale == other.scale &&
        offset == other.offset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, scale.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldEncodingsI16')
          ..add('url', url)
          ..add('scale', scale)
          ..add('offset', offset))
        .toString();
  }
}

class FieldEncodingsI16Builder
    implements Builder<FieldEncodingsI16, FieldEncodingsI16Builder> {
  _$FieldEncodingsI16? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  num? _scale;
  num? get scale => _$this._scale;
  set scale(num? scale) => _$this._scale = scale;

  num? _offset;
  num? get offset => _$this._offset;
  set offset(num? offset) => _$this._offset = offset;

  FieldEncodingsI16Builder() {
    FieldEncodingsI16._defaults(this);
  }

  FieldEncodingsI16Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _scale = $v.scale;
      _offset = $v.offset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldEncodingsI16 other) {
    _$v = other as _$FieldEncodingsI16;
  }

  @override
  void update(void Function(FieldEncodingsI16Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldEncodingsI16 build() => _build();

  _$FieldEncodingsI16 _build() {
    final _$result =
        _$v ?? _$FieldEncodingsI16._(url: url, scale: scale, offset: offset);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
