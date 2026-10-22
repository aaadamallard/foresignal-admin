// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_encodings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldEncodings extends FieldEncodings {
  @override
  final FieldEncodingsVelocityJson? velocityJson;
  @override
  final FieldEncodingsPngUv? pngUv;
  @override
  final FieldEncodingsI16? i16;
  @override
  final FieldEncodingsPngTiles? pngTiles;
  @override
  final String? tilejson;

  factory _$FieldEncodings([void Function(FieldEncodingsBuilder)? updates]) =>
      (FieldEncodingsBuilder()..update(updates))._build();

  _$FieldEncodings._(
      {this.velocityJson, this.pngUv, this.i16, this.pngTiles, this.tilejson})
      : super._();
  @override
  FieldEncodings rebuild(void Function(FieldEncodingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldEncodingsBuilder toBuilder() => FieldEncodingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldEncodings &&
        velocityJson == other.velocityJson &&
        pngUv == other.pngUv &&
        i16 == other.i16 &&
        pngTiles == other.pngTiles &&
        tilejson == other.tilejson;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, velocityJson.hashCode);
    _$hash = $jc(_$hash, pngUv.hashCode);
    _$hash = $jc(_$hash, i16.hashCode);
    _$hash = $jc(_$hash, pngTiles.hashCode);
    _$hash = $jc(_$hash, tilejson.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldEncodings')
          ..add('velocityJson', velocityJson)
          ..add('pngUv', pngUv)
          ..add('i16', i16)
          ..add('pngTiles', pngTiles)
          ..add('tilejson', tilejson))
        .toString();
  }
}

class FieldEncodingsBuilder
    implements Builder<FieldEncodings, FieldEncodingsBuilder> {
  _$FieldEncodings? _$v;

  FieldEncodingsVelocityJsonBuilder? _velocityJson;
  FieldEncodingsVelocityJsonBuilder get velocityJson =>
      _$this._velocityJson ??= FieldEncodingsVelocityJsonBuilder();
  set velocityJson(FieldEncodingsVelocityJsonBuilder? velocityJson) =>
      _$this._velocityJson = velocityJson;

  FieldEncodingsPngUvBuilder? _pngUv;
  FieldEncodingsPngUvBuilder get pngUv =>
      _$this._pngUv ??= FieldEncodingsPngUvBuilder();
  set pngUv(FieldEncodingsPngUvBuilder? pngUv) => _$this._pngUv = pngUv;

  FieldEncodingsI16Builder? _i16;
  FieldEncodingsI16Builder get i16 =>
      _$this._i16 ??= FieldEncodingsI16Builder();
  set i16(FieldEncodingsI16Builder? i16) => _$this._i16 = i16;

  FieldEncodingsPngTilesBuilder? _pngTiles;
  FieldEncodingsPngTilesBuilder get pngTiles =>
      _$this._pngTiles ??= FieldEncodingsPngTilesBuilder();
  set pngTiles(FieldEncodingsPngTilesBuilder? pngTiles) =>
      _$this._pngTiles = pngTiles;

  String? _tilejson;
  String? get tilejson => _$this._tilejson;
  set tilejson(String? tilejson) => _$this._tilejson = tilejson;

  FieldEncodingsBuilder() {
    FieldEncodings._defaults(this);
  }

  FieldEncodingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _velocityJson = $v.velocityJson?.toBuilder();
      _pngUv = $v.pngUv?.toBuilder();
      _i16 = $v.i16?.toBuilder();
      _pngTiles = $v.pngTiles?.toBuilder();
      _tilejson = $v.tilejson;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldEncodings other) {
    _$v = other as _$FieldEncodings;
  }

  @override
  void update(void Function(FieldEncodingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldEncodings build() => _build();

  _$FieldEncodings _build() {
    _$FieldEncodings _$result;
    try {
      _$result = _$v ??
          _$FieldEncodings._(
            velocityJson: _velocityJson?.build(),
            pngUv: _pngUv?.build(),
            i16: _i16?.build(),
            pngTiles: _pngTiles?.build(),
            tilejson: tilejson,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'velocityJson';
        _velocityJson?.build();
        _$failedField = 'pngUv';
        _pngUv?.build();
        _$failedField = 'i16';
        _i16?.build();
        _$failedField = 'pngTiles';
        _pngTiles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FieldEncodings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
