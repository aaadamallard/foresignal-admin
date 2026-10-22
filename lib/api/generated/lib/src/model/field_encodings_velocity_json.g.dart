// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_encodings_velocity_json.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldEncodingsVelocityJson extends FieldEncodingsVelocityJson {
  @override
  final String? url;

  factory _$FieldEncodingsVelocityJson([
    void Function(FieldEncodingsVelocityJsonBuilder)? updates,
  ]) => (FieldEncodingsVelocityJsonBuilder()..update(updates))._build();

  _$FieldEncodingsVelocityJson._({this.url}) : super._();
  @override
  FieldEncodingsVelocityJson rebuild(
    void Function(FieldEncodingsVelocityJsonBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FieldEncodingsVelocityJsonBuilder toBuilder() =>
      FieldEncodingsVelocityJsonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldEncodingsVelocityJson && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'FieldEncodingsVelocityJson',
    )..add('url', url)).toString();
  }
}

class FieldEncodingsVelocityJsonBuilder
    implements
        Builder<FieldEncodingsVelocityJson, FieldEncodingsVelocityJsonBuilder> {
  _$FieldEncodingsVelocityJson? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  FieldEncodingsVelocityJsonBuilder() {
    FieldEncodingsVelocityJson._defaults(this);
  }

  FieldEncodingsVelocityJsonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldEncodingsVelocityJson other) {
    _$v = other as _$FieldEncodingsVelocityJson;
  }

  @override
  void update(void Function(FieldEncodingsVelocityJsonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldEncodingsVelocityJson build() => _build();

  _$FieldEncodingsVelocityJson _build() {
    final _$result = _$v ?? _$FieldEncodingsVelocityJson._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
