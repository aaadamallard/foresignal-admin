// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_subscription_verify.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushSubscriptionVerify extends PushSubscriptionVerify {
  @override
  final String code;

  factory _$PushSubscriptionVerify([
    void Function(PushSubscriptionVerifyBuilder)? updates,
  ]) => (PushSubscriptionVerifyBuilder()..update(updates))._build();

  _$PushSubscriptionVerify._({required this.code}) : super._();
  @override
  PushSubscriptionVerify rebuild(
    void Function(PushSubscriptionVerifyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PushSubscriptionVerifyBuilder toBuilder() =>
      PushSubscriptionVerifyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushSubscriptionVerify && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PushSubscriptionVerify',
    )..add('code', code)).toString();
  }
}

class PushSubscriptionVerifyBuilder
    implements Builder<PushSubscriptionVerify, PushSubscriptionVerifyBuilder> {
  _$PushSubscriptionVerify? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  PushSubscriptionVerifyBuilder() {
    PushSubscriptionVerify._defaults(this);
  }

  PushSubscriptionVerifyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushSubscriptionVerify other) {
    _$v = other as _$PushSubscriptionVerify;
  }

  @override
  void update(void Function(PushSubscriptionVerifyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushSubscriptionVerify build() => _build();

  _$PushSubscriptionVerify _build() {
    final _$result =
        _$v ??
        _$PushSubscriptionVerify._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'PushSubscriptionVerify',
            'code',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
