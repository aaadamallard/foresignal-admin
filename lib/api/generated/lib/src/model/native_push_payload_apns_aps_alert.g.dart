// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload_apns_aps_alert.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NativePushPayloadApnsApsAlert extends NativePushPayloadApnsApsAlert {
  @override
  final String title;
  @override
  final String body;

  factory _$NativePushPayloadApnsApsAlert([
    void Function(NativePushPayloadApnsApsAlertBuilder)? updates,
  ]) => (NativePushPayloadApnsApsAlertBuilder()..update(updates))._build();

  _$NativePushPayloadApnsApsAlert._({required this.title, required this.body})
    : super._();
  @override
  NativePushPayloadApnsApsAlert rebuild(
    void Function(NativePushPayloadApnsApsAlertBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadApnsApsAlertBuilder toBuilder() =>
      NativePushPayloadApnsApsAlertBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayloadApnsApsAlert &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayloadApnsApsAlert')
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class NativePushPayloadApnsApsAlertBuilder
    implements
        Builder<
          NativePushPayloadApnsApsAlert,
          NativePushPayloadApnsApsAlertBuilder
        > {
  _$NativePushPayloadApnsApsAlert? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  NativePushPayloadApnsApsAlertBuilder() {
    NativePushPayloadApnsApsAlert._defaults(this);
  }

  NativePushPayloadApnsApsAlertBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayloadApnsApsAlert other) {
    _$v = other as _$NativePushPayloadApnsApsAlert;
  }

  @override
  void update(void Function(NativePushPayloadApnsApsAlertBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayloadApnsApsAlert build() => _build();

  _$NativePushPayloadApnsApsAlert _build() {
    final _$result =
        _$v ??
        _$NativePushPayloadApnsApsAlert._(
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'NativePushPayloadApnsApsAlert',
            'title',
          ),
          body: BuiltValueNullFieldError.checkNotNull(
            body,
            r'NativePushPayloadApnsApsAlert',
            'body',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
