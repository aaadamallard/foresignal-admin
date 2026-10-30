// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_subscription_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsSubscriptionView extends NewsSubscriptionView {
  @override
  final BuiltList<NewsSubscription> subscriptions;
  @override
  final DateTime? updatedAt;

  factory _$NewsSubscriptionView([
    void Function(NewsSubscriptionViewBuilder)? updates,
  ]) => (NewsSubscriptionViewBuilder()..update(updates))._build();

  _$NewsSubscriptionView._({required this.subscriptions, this.updatedAt})
    : super._();
  @override
  NewsSubscriptionView rebuild(
    void Function(NewsSubscriptionViewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NewsSubscriptionViewBuilder toBuilder() =>
      NewsSubscriptionViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsSubscriptionView &&
        subscriptions == other.subscriptions &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subscriptions.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsSubscriptionView')
          ..add('subscriptions', subscriptions)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class NewsSubscriptionViewBuilder
    implements Builder<NewsSubscriptionView, NewsSubscriptionViewBuilder> {
  _$NewsSubscriptionView? _$v;

  ListBuilder<NewsSubscription>? _subscriptions;
  ListBuilder<NewsSubscription> get subscriptions =>
      _$this._subscriptions ??= ListBuilder<NewsSubscription>();
  set subscriptions(ListBuilder<NewsSubscription>? subscriptions) =>
      _$this._subscriptions = subscriptions;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  NewsSubscriptionViewBuilder() {
    NewsSubscriptionView._defaults(this);
  }

  NewsSubscriptionViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subscriptions = $v.subscriptions.toBuilder();
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsSubscriptionView other) {
    _$v = other as _$NewsSubscriptionView;
  }

  @override
  void update(void Function(NewsSubscriptionViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsSubscriptionView build() => _build();

  _$NewsSubscriptionView _build() {
    _$NewsSubscriptionView _$result;
    try {
      _$result =
          _$v ??
          _$NewsSubscriptionView._(
            subscriptions: subscriptions.build(),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscriptions';
        subscriptions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NewsSubscriptionView',
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
