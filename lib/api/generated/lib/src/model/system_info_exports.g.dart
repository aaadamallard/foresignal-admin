// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_exports.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoExports extends SystemInfoExports {
  @override
  final int? queued;
  @override
  final int? running;
  @override
  final int? bytes;
  @override
  final int? quotaBytes;
  @override
  final int? maxConcurrent;

  factory _$SystemInfoExports([
    void Function(SystemInfoExportsBuilder)? updates,
  ]) => (SystemInfoExportsBuilder()..update(updates))._build();

  _$SystemInfoExports._({
    this.queued,
    this.running,
    this.bytes,
    this.quotaBytes,
    this.maxConcurrent,
  }) : super._();
  @override
  SystemInfoExports rebuild(void Function(SystemInfoExportsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoExportsBuilder toBuilder() =>
      SystemInfoExportsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoExports &&
        queued == other.queued &&
        running == other.running &&
        bytes == other.bytes &&
        quotaBytes == other.quotaBytes &&
        maxConcurrent == other.maxConcurrent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queued.hashCode);
    _$hash = $jc(_$hash, running.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, quotaBytes.hashCode);
    _$hash = $jc(_$hash, maxConcurrent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoExports')
          ..add('queued', queued)
          ..add('running', running)
          ..add('bytes', bytes)
          ..add('quotaBytes', quotaBytes)
          ..add('maxConcurrent', maxConcurrent))
        .toString();
  }
}

class SystemInfoExportsBuilder
    implements Builder<SystemInfoExports, SystemInfoExportsBuilder> {
  _$SystemInfoExports? _$v;

  int? _queued;
  int? get queued => _$this._queued;
  set queued(int? queued) => _$this._queued = queued;

  int? _running;
  int? get running => _$this._running;
  set running(int? running) => _$this._running = running;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  int? _quotaBytes;
  int? get quotaBytes => _$this._quotaBytes;
  set quotaBytes(int? quotaBytes) => _$this._quotaBytes = quotaBytes;

  int? _maxConcurrent;
  int? get maxConcurrent => _$this._maxConcurrent;
  set maxConcurrent(int? maxConcurrent) =>
      _$this._maxConcurrent = maxConcurrent;

  SystemInfoExportsBuilder() {
    SystemInfoExports._defaults(this);
  }

  SystemInfoExportsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queued = $v.queued;
      _running = $v.running;
      _bytes = $v.bytes;
      _quotaBytes = $v.quotaBytes;
      _maxConcurrent = $v.maxConcurrent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoExports other) {
    _$v = other as _$SystemInfoExports;
  }

  @override
  void update(void Function(SystemInfoExportsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoExports build() => _build();

  _$SystemInfoExports _build() {
    final _$result =
        _$v ??
        _$SystemInfoExports._(
          queued: queued,
          running: running,
          bytes: bytes,
          quotaBytes: quotaBytes,
          maxConcurrent: maxConcurrent,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
