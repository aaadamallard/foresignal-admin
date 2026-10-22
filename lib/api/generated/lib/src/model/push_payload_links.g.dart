// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_payload_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushPayloadLinks extends PushPayloadLinks {
  @override
  final String? api;
  @override
  final String? app;
  @override
  final String? web;

  factory _$PushPayloadLinks(
          [void Function(PushPayloadLinksBuilder)? updates]) =>
      (PushPayloadLinksBuilder()..update(updates))._build();

  _$PushPayloadLinks._({this.api, this.app, this.web}) : super._();
  @override
  PushPayloadLinks rebuild(void Function(PushPayloadLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushPayloadLinksBuilder toBuilder() =>
      PushPayloadLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushPayloadLinks &&
        api == other.api &&
        app == other.app &&
        web == other.web;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jc(_$hash, app.hashCode);
    _$hash = $jc(_$hash, web.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushPayloadLinks')
          ..add('api', api)
          ..add('app', app)
          ..add('web', web))
        .toString();
  }
}

class PushPayloadLinksBuilder
    implements Builder<PushPayloadLinks, PushPayloadLinksBuilder> {
  _$PushPayloadLinks? _$v;

  String? _api;
  String? get api => _$this._api;
  set api(String? api) => _$this._api = api;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  String? _web;
  String? get web => _$this._web;
  set web(String? web) => _$this._web = web;

  PushPayloadLinksBuilder() {
    PushPayloadLinks._defaults(this);
  }

  PushPayloadLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _api = $v.api;
      _app = $v.app;
      _web = $v.web;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushPayloadLinks other) {
    _$v = other as _$PushPayloadLinks;
  }

  @override
  void update(void Function(PushPayloadLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushPayloadLinks build() => _build();

  _$PushPayloadLinks _build() {
    final _$result = _$v ??
        _$PushPayloadLinks._(
          api: api,
          app: app,
          web: web,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
