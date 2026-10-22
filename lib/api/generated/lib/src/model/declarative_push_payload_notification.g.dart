// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'declarative_push_payload_notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeclarativePushPayloadNotification
    extends DeclarativePushPayloadNotification {
  @override
  final String title;
  @override
  final String? body;
  @override
  final String navigate;
  @override
  final String? lang;
  @override
  final String? tag;
  @override
  final bool? silent;
  @override
  final PushPayload? data;

  factory _$DeclarativePushPayloadNotification([
    void Function(DeclarativePushPayloadNotificationBuilder)? updates,
  ]) => (DeclarativePushPayloadNotificationBuilder()..update(updates))._build();

  _$DeclarativePushPayloadNotification._({
    required this.title,
    this.body,
    required this.navigate,
    this.lang,
    this.tag,
    this.silent,
    this.data,
  }) : super._();
  @override
  DeclarativePushPayloadNotification rebuild(
    void Function(DeclarativePushPayloadNotificationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeclarativePushPayloadNotificationBuilder toBuilder() =>
      DeclarativePushPayloadNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeclarativePushPayloadNotification &&
        title == other.title &&
        body == other.body &&
        navigate == other.navigate &&
        lang == other.lang &&
        tag == other.tag &&
        silent == other.silent &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, navigate.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, silent.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeclarativePushPayloadNotification')
          ..add('title', title)
          ..add('body', body)
          ..add('navigate', navigate)
          ..add('lang', lang)
          ..add('tag', tag)
          ..add('silent', silent)
          ..add('data', data))
        .toString();
  }
}

class DeclarativePushPayloadNotificationBuilder
    implements
        Builder<
          DeclarativePushPayloadNotification,
          DeclarativePushPayloadNotificationBuilder
        > {
  _$DeclarativePushPayloadNotification? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _navigate;
  String? get navigate => _$this._navigate;
  set navigate(String? navigate) => _$this._navigate = navigate;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  bool? _silent;
  bool? get silent => _$this._silent;
  set silent(bool? silent) => _$this._silent = silent;

  PushPayloadBuilder? _data;
  PushPayloadBuilder get data => _$this._data ??= PushPayloadBuilder();
  set data(PushPayloadBuilder? data) => _$this._data = data;

  DeclarativePushPayloadNotificationBuilder() {
    DeclarativePushPayloadNotification._defaults(this);
  }

  DeclarativePushPayloadNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _body = $v.body;
      _navigate = $v.navigate;
      _lang = $v.lang;
      _tag = $v.tag;
      _silent = $v.silent;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeclarativePushPayloadNotification other) {
    _$v = other as _$DeclarativePushPayloadNotification;
  }

  @override
  void update(
    void Function(DeclarativePushPayloadNotificationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DeclarativePushPayloadNotification build() => _build();

  _$DeclarativePushPayloadNotification _build() {
    _$DeclarativePushPayloadNotification _$result;
    try {
      _$result =
          _$v ??
          _$DeclarativePushPayloadNotification._(
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'DeclarativePushPayloadNotification',
              'title',
            ),
            body: body,
            navigate: BuiltValueNullFieldError.checkNotNull(
              navigate,
              r'DeclarativePushPayloadNotification',
              'navigate',
            ),
            lang: lang,
            tag: tag,
            silent: silent,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeclarativePushPayloadNotification',
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
