// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preferences_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationPreferencesInput extends NotificationPreferencesInput {
  @override
  final BuiltList<NotificationPreferenceInput> items;

  factory _$NotificationPreferencesInput([
    void Function(NotificationPreferencesInputBuilder)? updates,
  ]) => (NotificationPreferencesInputBuilder()..update(updates))._build();

  _$NotificationPreferencesInput._({required this.items}) : super._();
  @override
  NotificationPreferencesInput rebuild(
    void Function(NotificationPreferencesInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationPreferencesInputBuilder toBuilder() =>
      NotificationPreferencesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPreferencesInput && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'NotificationPreferencesInput',
    )..add('items', items)).toString();
  }
}

class NotificationPreferencesInputBuilder
    implements
        Builder<
          NotificationPreferencesInput,
          NotificationPreferencesInputBuilder
        > {
  _$NotificationPreferencesInput? _$v;

  ListBuilder<NotificationPreferenceInput>? _items;
  ListBuilder<NotificationPreferenceInput> get items =>
      _$this._items ??= ListBuilder<NotificationPreferenceInput>();
  set items(ListBuilder<NotificationPreferenceInput>? items) =>
      _$this._items = items;

  NotificationPreferencesInputBuilder() {
    NotificationPreferencesInput._defaults(this);
  }

  NotificationPreferencesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPreferencesInput other) {
    _$v = other as _$NotificationPreferencesInput;
  }

  @override
  void update(void Function(NotificationPreferencesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPreferencesInput build() => _build();

  _$NotificationPreferencesInput _build() {
    _$NotificationPreferencesInput _$result;
    try {
      _$result = _$v ?? _$NotificationPreferencesInput._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationPreferencesInput',
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
