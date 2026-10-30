// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_subscription_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsSubscriptionUpdate extends NewsSubscriptionUpdate {
  @override
  final BuiltList<NewsSubscription> subscriptions;

  factory _$NewsSubscriptionUpdate([
    void Function(NewsSubscriptionUpdateBuilder)? updates,
  ]) => (NewsSubscriptionUpdateBuilder()..update(updates))._build();

  _$NewsSubscriptionUpdate._({required this.subscriptions}) : super._();
  @override
  NewsSubscriptionUpdate rebuild(
    void Function(NewsSubscriptionUpdateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NewsSubscriptionUpdateBuilder toBuilder() =>
      NewsSubscriptionUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsSubscriptionUpdate &&
        subscriptions == other.subscriptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subscriptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'NewsSubscriptionUpdate',
    )..add('subscriptions', subscriptions)).toString();
  }
}

class NewsSubscriptionUpdateBuilder
    implements Builder<NewsSubscriptionUpdate, NewsSubscriptionUpdateBuilder> {
  _$NewsSubscriptionUpdate? _$v;

  ListBuilder<NewsSubscription>? _subscriptions;
  ListBuilder<NewsSubscription> get subscriptions =>
      _$this._subscriptions ??= ListBuilder<NewsSubscription>();
  set subscriptions(ListBuilder<NewsSubscription>? subscriptions) =>
      _$this._subscriptions = subscriptions;

  NewsSubscriptionUpdateBuilder() {
    NewsSubscriptionUpdate._defaults(this);
  }

  NewsSubscriptionUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subscriptions = $v.subscriptions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsSubscriptionUpdate other) {
    _$v = other as _$NewsSubscriptionUpdate;
  }

  @override
  void update(void Function(NewsSubscriptionUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsSubscriptionUpdate build() => _build();

  _$NewsSubscriptionUpdate _build() {
    _$NewsSubscriptionUpdate _$result;
    try {
      _$result =
          _$v ??
          _$NewsSubscriptionUpdate._(subscriptions: subscriptions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscriptions';
        subscriptions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NewsSubscriptionUpdate',
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
