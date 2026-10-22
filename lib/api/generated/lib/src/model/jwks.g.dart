// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Jwks extends Jwks {
  @override
  final BuiltList<Jwk> keys;

  factory _$Jwks([void Function(JwksBuilder)? updates]) =>
      (JwksBuilder()..update(updates))._build();

  _$Jwks._({required this.keys}) : super._();
  @override
  Jwks rebuild(void Function(JwksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwksBuilder toBuilder() => JwksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Jwks && keys == other.keys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Jwks')..add('keys', keys)).toString();
  }
}

class JwksBuilder implements Builder<Jwks, JwksBuilder> {
  _$Jwks? _$v;

  ListBuilder<Jwk>? _keys;
  ListBuilder<Jwk> get keys => _$this._keys ??= ListBuilder<Jwk>();
  set keys(ListBuilder<Jwk>? keys) => _$this._keys = keys;

  JwksBuilder() {
    Jwks._defaults(this);
  }

  JwksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keys = $v.keys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Jwks other) {
    _$v = other as _$Jwks;
  }

  @override
  void update(void Function(JwksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Jwks build() => _build();

  _$Jwks _build() {
    _$Jwks _$result;
    try {
      _$result = _$v ?? _$Jwks._(keys: keys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        keys.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Jwks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
