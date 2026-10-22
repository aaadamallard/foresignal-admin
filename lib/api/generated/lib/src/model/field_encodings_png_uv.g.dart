// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_encodings_png_uv.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldEncodingsPngUv extends FieldEncodingsPngUv {
  @override
  final String? url;
  @override
  final num? uMin;
  @override
  final num? uMax;
  @override
  final num? vMin;
  @override
  final num? vMax;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final BuiltList<num>? bounds;

  factory _$FieldEncodingsPngUv(
          [void Function(FieldEncodingsPngUvBuilder)? updates]) =>
      (FieldEncodingsPngUvBuilder()..update(updates))._build();

  _$FieldEncodingsPngUv._(
      {this.url,
      this.uMin,
      this.uMax,
      this.vMin,
      this.vMax,
      this.width,
      this.height,
      this.bounds})
      : super._();
  @override
  FieldEncodingsPngUv rebuild(
          void Function(FieldEncodingsPngUvBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldEncodingsPngUvBuilder toBuilder() =>
      FieldEncodingsPngUvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldEncodingsPngUv &&
        url == other.url &&
        uMin == other.uMin &&
        uMax == other.uMax &&
        vMin == other.vMin &&
        vMax == other.vMax &&
        width == other.width &&
        height == other.height &&
        bounds == other.bounds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, uMin.hashCode);
    _$hash = $jc(_$hash, uMax.hashCode);
    _$hash = $jc(_$hash, vMin.hashCode);
    _$hash = $jc(_$hash, vMax.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, bounds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldEncodingsPngUv')
          ..add('url', url)
          ..add('uMin', uMin)
          ..add('uMax', uMax)
          ..add('vMin', vMin)
          ..add('vMax', vMax)
          ..add('width', width)
          ..add('height', height)
          ..add('bounds', bounds))
        .toString();
  }
}

class FieldEncodingsPngUvBuilder
    implements Builder<FieldEncodingsPngUv, FieldEncodingsPngUvBuilder> {
  _$FieldEncodingsPngUv? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  num? _uMin;
  num? get uMin => _$this._uMin;
  set uMin(num? uMin) => _$this._uMin = uMin;

  num? _uMax;
  num? get uMax => _$this._uMax;
  set uMax(num? uMax) => _$this._uMax = uMax;

  num? _vMin;
  num? get vMin => _$this._vMin;
  set vMin(num? vMin) => _$this._vMin = vMin;

  num? _vMax;
  num? get vMax => _$this._vMax;
  set vMax(num? vMax) => _$this._vMax = vMax;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  ListBuilder<num>? _bounds;
  ListBuilder<num> get bounds => _$this._bounds ??= ListBuilder<num>();
  set bounds(ListBuilder<num>? bounds) => _$this._bounds = bounds;

  FieldEncodingsPngUvBuilder() {
    FieldEncodingsPngUv._defaults(this);
  }

  FieldEncodingsPngUvBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _uMin = $v.uMin;
      _uMax = $v.uMax;
      _vMin = $v.vMin;
      _vMax = $v.vMax;
      _width = $v.width;
      _height = $v.height;
      _bounds = $v.bounds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldEncodingsPngUv other) {
    _$v = other as _$FieldEncodingsPngUv;
  }

  @override
  void update(void Function(FieldEncodingsPngUvBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldEncodingsPngUv build() => _build();

  _$FieldEncodingsPngUv _build() {
    _$FieldEncodingsPngUv _$result;
    try {
      _$result = _$v ??
          _$FieldEncodingsPngUv._(
            url: url,
            uMin: uMin,
            uMax: uMax,
            vMin: vMin,
            vMax: vMax,
            width: width,
            height: height,
            bounds: _bounds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bounds';
        _bounds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FieldEncodingsPngUv', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
