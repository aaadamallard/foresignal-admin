// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_stream.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPlatformStream extends SocialPlatformStream {
  @override
  final num? lagSeconds;
  @override
  final String? cursor;
  @override
  final DateTime? connectedSince;
  @override
  final SocialPlatformStreamLastGap? lastGap;

  factory _$SocialPlatformStream(
          [void Function(SocialPlatformStreamBuilder)? updates]) =>
      (SocialPlatformStreamBuilder()..update(updates))._build();

  _$SocialPlatformStream._(
      {this.lagSeconds, this.cursor, this.connectedSince, this.lastGap})
      : super._();
  @override
  SocialPlatformStream rebuild(
          void Function(SocialPlatformStreamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPlatformStreamBuilder toBuilder() =>
      SocialPlatformStreamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformStream &&
        lagSeconds == other.lagSeconds &&
        cursor == other.cursor &&
        connectedSince == other.connectedSince &&
        lastGap == other.lastGap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lagSeconds.hashCode);
    _$hash = $jc(_$hash, cursor.hashCode);
    _$hash = $jc(_$hash, connectedSince.hashCode);
    _$hash = $jc(_$hash, lastGap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformStream')
          ..add('lagSeconds', lagSeconds)
          ..add('cursor', cursor)
          ..add('connectedSince', connectedSince)
          ..add('lastGap', lastGap))
        .toString();
  }
}

class SocialPlatformStreamBuilder
    implements Builder<SocialPlatformStream, SocialPlatformStreamBuilder> {
  _$SocialPlatformStream? _$v;

  num? _lagSeconds;
  num? get lagSeconds => _$this._lagSeconds;
  set lagSeconds(num? lagSeconds) => _$this._lagSeconds = lagSeconds;

  String? _cursor;
  String? get cursor => _$this._cursor;
  set cursor(String? cursor) => _$this._cursor = cursor;

  DateTime? _connectedSince;
  DateTime? get connectedSince => _$this._connectedSince;
  set connectedSince(DateTime? connectedSince) =>
      _$this._connectedSince = connectedSince;

  SocialPlatformStreamLastGapBuilder? _lastGap;
  SocialPlatformStreamLastGapBuilder get lastGap =>
      _$this._lastGap ??= SocialPlatformStreamLastGapBuilder();
  set lastGap(SocialPlatformStreamLastGapBuilder? lastGap) =>
      _$this._lastGap = lastGap;

  SocialPlatformStreamBuilder() {
    SocialPlatformStream._defaults(this);
  }

  SocialPlatformStreamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lagSeconds = $v.lagSeconds;
      _cursor = $v.cursor;
      _connectedSince = $v.connectedSince;
      _lastGap = $v.lastGap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformStream other) {
    _$v = other as _$SocialPlatformStream;
  }

  @override
  void update(void Function(SocialPlatformStreamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformStream build() => _build();

  _$SocialPlatformStream _build() {
    _$SocialPlatformStream _$result;
    try {
      _$result = _$v ??
          _$SocialPlatformStream._(
            lagSeconds: lagSeconds,
            cursor: cursor,
            connectedSince: connectedSince,
            lastGap: _lastGap?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lastGap';
        _lastGap?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialPlatformStream', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
