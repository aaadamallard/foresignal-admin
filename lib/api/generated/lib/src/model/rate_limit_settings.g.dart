// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_limit_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RateLimitSettings extends RateLimitSettings {
  @override
  final int? read;
  @override
  final int? tiles;
  @override
  final RateLimitSettingsStream? stream;
  @override
  final int? expensive;
  @override
  final int? write;
  @override
  final int? anonymous;
  @override
  final int? metricsPerMinute;

  factory _$RateLimitSettings(
          [void Function(RateLimitSettingsBuilder)? updates]) =>
      (RateLimitSettingsBuilder()..update(updates))._build();

  _$RateLimitSettings._(
      {this.read,
      this.tiles,
      this.stream,
      this.expensive,
      this.write,
      this.anonymous,
      this.metricsPerMinute})
      : super._();
  @override
  RateLimitSettings rebuild(void Function(RateLimitSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateLimitSettingsBuilder toBuilder() =>
      RateLimitSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateLimitSettings &&
        read == other.read &&
        tiles == other.tiles &&
        stream == other.stream &&
        expensive == other.expensive &&
        write == other.write &&
        anonymous == other.anonymous &&
        metricsPerMinute == other.metricsPerMinute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jc(_$hash, tiles.hashCode);
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, expensive.hashCode);
    _$hash = $jc(_$hash, write.hashCode);
    _$hash = $jc(_$hash, anonymous.hashCode);
    _$hash = $jc(_$hash, metricsPerMinute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RateLimitSettings')
          ..add('read', read)
          ..add('tiles', tiles)
          ..add('stream', stream)
          ..add('expensive', expensive)
          ..add('write', write)
          ..add('anonymous', anonymous)
          ..add('metricsPerMinute', metricsPerMinute))
        .toString();
  }
}

class RateLimitSettingsBuilder
    implements Builder<RateLimitSettings, RateLimitSettingsBuilder> {
  _$RateLimitSettings? _$v;

  int? _read;
  int? get read => _$this._read;
  set read(int? read) => _$this._read = read;

  int? _tiles;
  int? get tiles => _$this._tiles;
  set tiles(int? tiles) => _$this._tiles = tiles;

  RateLimitSettingsStreamBuilder? _stream;
  RateLimitSettingsStreamBuilder get stream =>
      _$this._stream ??= RateLimitSettingsStreamBuilder();
  set stream(RateLimitSettingsStreamBuilder? stream) => _$this._stream = stream;

  int? _expensive;
  int? get expensive => _$this._expensive;
  set expensive(int? expensive) => _$this._expensive = expensive;

  int? _write;
  int? get write => _$this._write;
  set write(int? write) => _$this._write = write;

  int? _anonymous;
  int? get anonymous => _$this._anonymous;
  set anonymous(int? anonymous) => _$this._anonymous = anonymous;

  int? _metricsPerMinute;
  int? get metricsPerMinute => _$this._metricsPerMinute;
  set metricsPerMinute(int? metricsPerMinute) =>
      _$this._metricsPerMinute = metricsPerMinute;

  RateLimitSettingsBuilder() {
    RateLimitSettings._defaults(this);
  }

  RateLimitSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _read = $v.read;
      _tiles = $v.tiles;
      _stream = $v.stream?.toBuilder();
      _expensive = $v.expensive;
      _write = $v.write;
      _anonymous = $v.anonymous;
      _metricsPerMinute = $v.metricsPerMinute;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RateLimitSettings other) {
    _$v = other as _$RateLimitSettings;
  }

  @override
  void update(void Function(RateLimitSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RateLimitSettings build() => _build();

  _$RateLimitSettings _build() {
    _$RateLimitSettings _$result;
    try {
      _$result = _$v ??
          _$RateLimitSettings._(
            read: read,
            tiles: tiles,
            stream: _stream?.build(),
            expensive: expensive,
            write: write,
            anonymous: anonymous,
            metricsPerMinute: metricsPerMinute,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stream';
        _stream?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RateLimitSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
