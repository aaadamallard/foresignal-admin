// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_rasters_glm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemRastersGlm extends SystemRastersGlm {
  @override
  final int? ringFlashes;
  @override
  final int? archiveBytes;
  @override
  final DateTime? newestFileAt;

  factory _$SystemRastersGlm(
          [void Function(SystemRastersGlmBuilder)? updates]) =>
      (SystemRastersGlmBuilder()..update(updates))._build();

  _$SystemRastersGlm._({this.ringFlashes, this.archiveBytes, this.newestFileAt})
      : super._();
  @override
  SystemRastersGlm rebuild(void Function(SystemRastersGlmBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemRastersGlmBuilder toBuilder() =>
      SystemRastersGlmBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemRastersGlm &&
        ringFlashes == other.ringFlashes &&
        archiveBytes == other.archiveBytes &&
        newestFileAt == other.newestFileAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ringFlashes.hashCode);
    _$hash = $jc(_$hash, archiveBytes.hashCode);
    _$hash = $jc(_$hash, newestFileAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemRastersGlm')
          ..add('ringFlashes', ringFlashes)
          ..add('archiveBytes', archiveBytes)
          ..add('newestFileAt', newestFileAt))
        .toString();
  }
}

class SystemRastersGlmBuilder
    implements Builder<SystemRastersGlm, SystemRastersGlmBuilder> {
  _$SystemRastersGlm? _$v;

  int? _ringFlashes;
  int? get ringFlashes => _$this._ringFlashes;
  set ringFlashes(int? ringFlashes) => _$this._ringFlashes = ringFlashes;

  int? _archiveBytes;
  int? get archiveBytes => _$this._archiveBytes;
  set archiveBytes(int? archiveBytes) => _$this._archiveBytes = archiveBytes;

  DateTime? _newestFileAt;
  DateTime? get newestFileAt => _$this._newestFileAt;
  set newestFileAt(DateTime? newestFileAt) =>
      _$this._newestFileAt = newestFileAt;

  SystemRastersGlmBuilder() {
    SystemRastersGlm._defaults(this);
  }

  SystemRastersGlmBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ringFlashes = $v.ringFlashes;
      _archiveBytes = $v.archiveBytes;
      _newestFileAt = $v.newestFileAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemRastersGlm other) {
    _$v = other as _$SystemRastersGlm;
  }

  @override
  void update(void Function(SystemRastersGlmBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemRastersGlm build() => _build();

  _$SystemRastersGlm _build() {
    final _$result = _$v ??
        _$SystemRastersGlm._(
          ringFlashes: ringFlashes,
          archiveBytes: archiveBytes,
          newestFileAt: newestFileAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
