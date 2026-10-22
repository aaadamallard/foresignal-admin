// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationLink extends NotificationLink {
  @override
  final String label;
  @override
  final String url;

  factory _$NotificationLink(
          [void Function(NotificationLinkBuilder)? updates]) =>
      (NotificationLinkBuilder()..update(updates))._build();

  _$NotificationLink._({required this.label, required this.url}) : super._();
  @override
  NotificationLink rebuild(void Function(NotificationLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationLinkBuilder toBuilder() =>
      NotificationLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationLink &&
        label == other.label &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationLink')
          ..add('label', label)
          ..add('url', url))
        .toString();
  }
}

class NotificationLinkBuilder
    implements Builder<NotificationLink, NotificationLinkBuilder> {
  _$NotificationLink? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  NotificationLinkBuilder() {
    NotificationLink._defaults(this);
  }

  NotificationLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationLink other) {
    _$v = other as _$NotificationLink;
  }

  @override
  void update(void Function(NotificationLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationLink build() => _build();

  _$NotificationLink _build() {
    final _$result = _$v ??
        _$NotificationLink._(
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'NotificationLink', 'label'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'NotificationLink', 'url'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
