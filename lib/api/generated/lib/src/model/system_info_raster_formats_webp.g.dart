// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_raster_formats_webp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoRasterFormatsWebp extends SystemInfoRasterFormatsWebp {
  @override
  final bool? available;
  @override
  final String? reason;

  factory _$SystemInfoRasterFormatsWebp(
          [void Function(SystemInfoRasterFormatsWebpBuilder)? updates]) =>
      (SystemInfoRasterFormatsWebpBuilder()..update(updates))._build();

  _$SystemInfoRasterFormatsWebp._({this.available, this.reason}) : super._();
  @override
  SystemInfoRasterFormatsWebp rebuild(
          void Function(SystemInfoRasterFormatsWebpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoRasterFormatsWebpBuilder toBuilder() =>
      SystemInfoRasterFormatsWebpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoRasterFormatsWebp &&
        available == other.available &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, available.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoRasterFormatsWebp')
          ..add('available', available)
          ..add('reason', reason))
        .toString();
  }
}

class SystemInfoRasterFormatsWebpBuilder
    implements
        Builder<SystemInfoRasterFormatsWebp,
            SystemInfoRasterFormatsWebpBuilder> {
  _$SystemInfoRasterFormatsWebp? _$v;

  bool? _available;
  bool? get available => _$this._available;
  set available(bool? available) => _$this._available = available;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SystemInfoRasterFormatsWebpBuilder() {
    SystemInfoRasterFormatsWebp._defaults(this);
  }

  SystemInfoRasterFormatsWebpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _available = $v.available;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoRasterFormatsWebp other) {
    _$v = other as _$SystemInfoRasterFormatsWebp;
  }

  @override
  void update(void Function(SystemInfoRasterFormatsWebpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoRasterFormatsWebp build() => _build();

  _$SystemInfoRasterFormatsWebp _build() {
    final _$result = _$v ??
        _$SystemInfoRasterFormatsWebp._(
          available: available,
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
