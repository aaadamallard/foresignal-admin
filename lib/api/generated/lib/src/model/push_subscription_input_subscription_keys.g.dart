// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_subscription_input_subscription_keys.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushSubscriptionInputSubscriptionKeys
    extends PushSubscriptionInputSubscriptionKeys {
  @override
  final String p256dh;
  @override
  final String auth;

  factory _$PushSubscriptionInputSubscriptionKeys(
          [void Function(PushSubscriptionInputSubscriptionKeysBuilder)?
              updates]) =>
      (PushSubscriptionInputSubscriptionKeysBuilder()..update(updates))
          ._build();

  _$PushSubscriptionInputSubscriptionKeys._(
      {required this.p256dh, required this.auth})
      : super._();
  @override
  PushSubscriptionInputSubscriptionKeys rebuild(
          void Function(PushSubscriptionInputSubscriptionKeysBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushSubscriptionInputSubscriptionKeysBuilder toBuilder() =>
      PushSubscriptionInputSubscriptionKeysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushSubscriptionInputSubscriptionKeys &&
        p256dh == other.p256dh &&
        auth == other.auth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p256dh.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PushSubscriptionInputSubscriptionKeys')
          ..add('p256dh', p256dh)
          ..add('auth', auth))
        .toString();
  }
}

class PushSubscriptionInputSubscriptionKeysBuilder
    implements
        Builder<PushSubscriptionInputSubscriptionKeys,
            PushSubscriptionInputSubscriptionKeysBuilder> {
  _$PushSubscriptionInputSubscriptionKeys? _$v;

  String? _p256dh;
  String? get p256dh => _$this._p256dh;
  set p256dh(String? p256dh) => _$this._p256dh = p256dh;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  PushSubscriptionInputSubscriptionKeysBuilder() {
    PushSubscriptionInputSubscriptionKeys._defaults(this);
  }

  PushSubscriptionInputSubscriptionKeysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p256dh = $v.p256dh;
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushSubscriptionInputSubscriptionKeys other) {
    _$v = other as _$PushSubscriptionInputSubscriptionKeys;
  }

  @override
  void update(
      void Function(PushSubscriptionInputSubscriptionKeysBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushSubscriptionInputSubscriptionKeys build() => _build();

  _$PushSubscriptionInputSubscriptionKeys _build() {
    final _$result = _$v ??
        _$PushSubscriptionInputSubscriptionKeys._(
          p256dh: BuiltValueNullFieldError.checkNotNull(
              p256dh, r'PushSubscriptionInputSubscriptionKeys', 'p256dh'),
          auth: BuiltValueNullFieldError.checkNotNull(
              auth, r'PushSubscriptionInputSubscriptionKeys', 'auth'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
