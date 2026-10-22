// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_raster_formats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoRasterFormats extends SystemInfoRasterFormats {
  @override
  final SystemInfoRasterFormatsWebp? webp;

  factory _$SystemInfoRasterFormats(
          [void Function(SystemInfoRasterFormatsBuilder)? updates]) =>
      (SystemInfoRasterFormatsBuilder()..update(updates))._build();

  _$SystemInfoRasterFormats._({this.webp}) : super._();
  @override
  SystemInfoRasterFormats rebuild(
          void Function(SystemInfoRasterFormatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoRasterFormatsBuilder toBuilder() =>
      SystemInfoRasterFormatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoRasterFormats && webp == other.webp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, webp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoRasterFormats')
          ..add('webp', webp))
        .toString();
  }
}

class SystemInfoRasterFormatsBuilder
    implements
        Builder<SystemInfoRasterFormats, SystemInfoRasterFormatsBuilder> {
  _$SystemInfoRasterFormats? _$v;

  SystemInfoRasterFormatsWebpBuilder? _webp;
  SystemInfoRasterFormatsWebpBuilder get webp =>
      _$this._webp ??= SystemInfoRasterFormatsWebpBuilder();
  set webp(SystemInfoRasterFormatsWebpBuilder? webp) => _$this._webp = webp;

  SystemInfoRasterFormatsBuilder() {
    SystemInfoRasterFormats._defaults(this);
  }

  SystemInfoRasterFormatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _webp = $v.webp?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoRasterFormats other) {
    _$v = other as _$SystemInfoRasterFormats;
  }

  @override
  void update(void Function(SystemInfoRasterFormatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoRasterFormats build() => _build();

  _$SystemInfoRasterFormats _build() {
    _$SystemInfoRasterFormats _$result;
    try {
      _$result = _$v ??
          _$SystemInfoRasterFormats._(
            webp: _webp?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'webp';
        _webp?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SystemInfoRasterFormats', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
