// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_delivery_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationDeliveryPage extends NotificationDeliveryPage {
  @override
  final BuiltList<NotificationDelivery> items;
  @override
  final String? nextCursor;

  factory _$NotificationDeliveryPage([
    void Function(NotificationDeliveryPageBuilder)? updates,
  ]) => (NotificationDeliveryPageBuilder()..update(updates))._build();

  _$NotificationDeliveryPage._({required this.items, this.nextCursor})
    : super._();
  @override
  NotificationDeliveryPage rebuild(
    void Function(NotificationDeliveryPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationDeliveryPageBuilder toBuilder() =>
      NotificationDeliveryPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationDeliveryPage &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationDeliveryPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class NotificationDeliveryPageBuilder
    implements
        Builder<NotificationDeliveryPage, NotificationDeliveryPageBuilder> {
  _$NotificationDeliveryPage? _$v;

  ListBuilder<NotificationDelivery>? _items;
  ListBuilder<NotificationDelivery> get items =>
      _$this._items ??= ListBuilder<NotificationDelivery>();
  set items(ListBuilder<NotificationDelivery>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  NotificationDeliveryPageBuilder() {
    NotificationDeliveryPage._defaults(this);
  }

  NotificationDeliveryPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationDeliveryPage other) {
    _$v = other as _$NotificationDeliveryPage;
  }

  @override
  void update(void Function(NotificationDeliveryPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationDeliveryPage build() => _build();

  _$NotificationDeliveryPage _build() {
    _$NotificationDeliveryPage _$result;
    try {
      _$result =
          _$v ??
          _$NotificationDeliveryPage._(
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationDeliveryPage',
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
