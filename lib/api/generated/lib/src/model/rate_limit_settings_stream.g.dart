// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_limit_settings_stream.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RateLimitSettingsStream extends RateLimitSettingsStream {
  @override
  final int? opensPerMinute;
  @override
  final int? concurrent;

  factory _$RateLimitSettingsStream(
          [void Function(RateLimitSettingsStreamBuilder)? updates]) =>
      (RateLimitSettingsStreamBuilder()..update(updates))._build();

  _$RateLimitSettingsStream._({this.opensPerMinute, this.concurrent})
      : super._();
  @override
  RateLimitSettingsStream rebuild(
          void Function(RateLimitSettingsStreamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateLimitSettingsStreamBuilder toBuilder() =>
      RateLimitSettingsStreamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateLimitSettingsStream &&
        opensPerMinute == other.opensPerMinute &&
        concurrent == other.concurrent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, opensPerMinute.hashCode);
    _$hash = $jc(_$hash, concurrent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RateLimitSettingsStream')
          ..add('opensPerMinute', opensPerMinute)
          ..add('concurrent', concurrent))
        .toString();
  }
}

class RateLimitSettingsStreamBuilder
    implements
        Builder<RateLimitSettingsStream, RateLimitSettingsStreamBuilder> {
  _$RateLimitSettingsStream? _$v;

  int? _opensPerMinute;
  int? get opensPerMinute => _$this._opensPerMinute;
  set opensPerMinute(int? opensPerMinute) =>
      _$this._opensPerMinute = opensPerMinute;

  int? _concurrent;
  int? get concurrent => _$this._concurrent;
  set concurrent(int? concurrent) => _$this._concurrent = concurrent;

  RateLimitSettingsStreamBuilder() {
    RateLimitSettingsStream._defaults(this);
  }

  RateLimitSettingsStreamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _opensPerMinute = $v.opensPerMinute;
      _concurrent = $v.concurrent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RateLimitSettingsStream other) {
    _$v = other as _$RateLimitSettingsStream;
  }

  @override
  void update(void Function(RateLimitSettingsStreamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RateLimitSettingsStream build() => _build();

  _$RateLimitSettingsStream _build() {
    final _$result = _$v ??
        _$RateLimitSettingsStream._(
          opensPerMinute: opensPerMinute,
          concurrent: concurrent,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
