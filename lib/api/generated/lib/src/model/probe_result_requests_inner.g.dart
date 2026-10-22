// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'probe_result_requests_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProbeResultRequestsInner extends ProbeResultRequestsInner {
  @override
  final String? method;
  @override
  final String? url;
  @override
  final int? status;
  @override
  final int? durationMs;
  @override
  final String? contentType;
  @override
  final int? bytes;
  @override
  final bool? truncated;
  @override
  final String? body;

  factory _$ProbeResultRequestsInner(
          [void Function(ProbeResultRequestsInnerBuilder)? updates]) =>
      (ProbeResultRequestsInnerBuilder()..update(updates))._build();

  _$ProbeResultRequestsInner._(
      {this.method,
      this.url,
      this.status,
      this.durationMs,
      this.contentType,
      this.bytes,
      this.truncated,
      this.body})
      : super._();
  @override
  ProbeResultRequestsInner rebuild(
          void Function(ProbeResultRequestsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProbeResultRequestsInnerBuilder toBuilder() =>
      ProbeResultRequestsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProbeResultRequestsInner &&
        method == other.method &&
        url == other.url &&
        status == other.status &&
        durationMs == other.durationMs &&
        contentType == other.contentType &&
        bytes == other.bytes &&
        truncated == other.truncated &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProbeResultRequestsInner')
          ..add('method', method)
          ..add('url', url)
          ..add('status', status)
          ..add('durationMs', durationMs)
          ..add('contentType', contentType)
          ..add('bytes', bytes)
          ..add('truncated', truncated)
          ..add('body', body))
        .toString();
  }
}

class ProbeResultRequestsInnerBuilder
    implements
        Builder<ProbeResultRequestsInner, ProbeResultRequestsInnerBuilder> {
  _$ProbeResultRequestsInner? _$v;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  ProbeResultRequestsInnerBuilder() {
    ProbeResultRequestsInner._defaults(this);
  }

  ProbeResultRequestsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _method = $v.method;
      _url = $v.url;
      _status = $v.status;
      _durationMs = $v.durationMs;
      _contentType = $v.contentType;
      _bytes = $v.bytes;
      _truncated = $v.truncated;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProbeResultRequestsInner other) {
    _$v = other as _$ProbeResultRequestsInner;
  }

  @override
  void update(void Function(ProbeResultRequestsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProbeResultRequestsInner build() => _build();

  _$ProbeResultRequestsInner _build() {
    final _$result = _$v ??
        _$ProbeResultRequestsInner._(
          method: method,
          url: url,
          status: status,
          durationMs: durationMs,
          contentType: contentType,
          bytes: bytes,
          truncated: truncated,
          body: body,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
