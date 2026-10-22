// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload_apns.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NativePushPayloadApns extends NativePushPayloadApns {
  @override
  final NativePushPayloadApnsAps? aps;
  @override
  final NativePushPayloadApnsE? e;

  factory _$NativePushPayloadApns(
          [void Function(NativePushPayloadApnsBuilder)? updates]) =>
      (NativePushPayloadApnsBuilder()..update(updates))._build();

  _$NativePushPayloadApns._({this.aps, this.e}) : super._();
  @override
  NativePushPayloadApns rebuild(
          void Function(NativePushPayloadApnsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadApnsBuilder toBuilder() =>
      NativePushPayloadApnsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayloadApns && aps == other.aps && e == other.e;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, aps.hashCode);
    _$hash = $jc(_$hash, e.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayloadApns')
          ..add('aps', aps)
          ..add('e', e))
        .toString();
  }
}

class NativePushPayloadApnsBuilder
    implements Builder<NativePushPayloadApns, NativePushPayloadApnsBuilder> {
  _$NativePushPayloadApns? _$v;

  NativePushPayloadApnsApsBuilder? _aps;
  NativePushPayloadApnsApsBuilder get aps =>
      _$this._aps ??= NativePushPayloadApnsApsBuilder();
  set aps(NativePushPayloadApnsApsBuilder? aps) => _$this._aps = aps;

  NativePushPayloadApnsEBuilder? _e;
  NativePushPayloadApnsEBuilder get e =>
      _$this._e ??= NativePushPayloadApnsEBuilder();
  set e(NativePushPayloadApnsEBuilder? e) => _$this._e = e;

  NativePushPayloadApnsBuilder() {
    NativePushPayloadApns._defaults(this);
  }

  NativePushPayloadApnsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aps = $v.aps?.toBuilder();
      _e = $v.e?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayloadApns other) {
    _$v = other as _$NativePushPayloadApns;
  }

  @override
  void update(void Function(NativePushPayloadApnsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayloadApns build() => _build();

  _$NativePushPayloadApns _build() {
    _$NativePushPayloadApns _$result;
    try {
      _$result = _$v ??
          _$NativePushPayloadApns._(
            aps: _aps?.build(),
            e: _e?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aps';
        _aps?.build();
        _$failedField = 'e';
        _e?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NativePushPayloadApns', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
