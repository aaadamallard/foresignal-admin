// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_subscription_input_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushSubscriptionInputSubscription
    extends PushSubscriptionInputSubscription {
  @override
  final String endpoint;
  @override
  final PushSubscriptionInputSubscriptionKeys keys;

  factory _$PushSubscriptionInputSubscription([
    void Function(PushSubscriptionInputSubscriptionBuilder)? updates,
  ]) => (PushSubscriptionInputSubscriptionBuilder()..update(updates))._build();

  _$PushSubscriptionInputSubscription._({
    required this.endpoint,
    required this.keys,
  }) : super._();
  @override
  PushSubscriptionInputSubscription rebuild(
    void Function(PushSubscriptionInputSubscriptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PushSubscriptionInputSubscriptionBuilder toBuilder() =>
      PushSubscriptionInputSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushSubscriptionInputSubscription &&
        endpoint == other.endpoint &&
        keys == other.keys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushSubscriptionInputSubscription')
          ..add('endpoint', endpoint)
          ..add('keys', keys))
        .toString();
  }
}

class PushSubscriptionInputSubscriptionBuilder
    implements
        Builder<
          PushSubscriptionInputSubscription,
          PushSubscriptionInputSubscriptionBuilder
        > {
  _$PushSubscriptionInputSubscription? _$v;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  PushSubscriptionInputSubscriptionKeysBuilder? _keys;
  PushSubscriptionInputSubscriptionKeysBuilder get keys =>
      _$this._keys ??= PushSubscriptionInputSubscriptionKeysBuilder();
  set keys(PushSubscriptionInputSubscriptionKeysBuilder? keys) =>
      _$this._keys = keys;

  PushSubscriptionInputSubscriptionBuilder() {
    PushSubscriptionInputSubscription._defaults(this);
  }

  PushSubscriptionInputSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _keys = $v.keys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushSubscriptionInputSubscription other) {
    _$v = other as _$PushSubscriptionInputSubscription;
  }

  @override
  void update(
    void Function(PushSubscriptionInputSubscriptionBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  PushSubscriptionInputSubscription build() => _build();

  _$PushSubscriptionInputSubscription _build() {
    _$PushSubscriptionInputSubscription _$result;
    try {
      _$result =
          _$v ??
          _$PushSubscriptionInputSubscription._(
            endpoint: BuiltValueNullFieldError.checkNotNull(
              endpoint,
              r'PushSubscriptionInputSubscription',
              'endpoint',
            ),
            keys: keys.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        keys.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PushSubscriptionInputSubscription',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
