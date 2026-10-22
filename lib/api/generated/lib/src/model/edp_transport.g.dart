// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_transport.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpTransport extends EdpTransport {
  @override
  final bool? push;
  @override
  final EdpPull? pull;
  @override
  final EdpSearch? search;
  @override
  final EdpAnalysisRequest? analysisRequest;

  factory _$EdpTransport([void Function(EdpTransportBuilder)? updates]) =>
      (EdpTransportBuilder()..update(updates))._build();

  _$EdpTransport._({this.push, this.pull, this.search, this.analysisRequest})
      : super._();
  @override
  EdpTransport rebuild(void Function(EdpTransportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpTransportBuilder toBuilder() => EdpTransportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpTransport &&
        push == other.push &&
        pull == other.pull &&
        search == other.search &&
        analysisRequest == other.analysisRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, push.hashCode);
    _$hash = $jc(_$hash, pull.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, analysisRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpTransport')
          ..add('push', push)
          ..add('pull', pull)
          ..add('search', search)
          ..add('analysisRequest', analysisRequest))
        .toString();
  }
}

class EdpTransportBuilder
    implements Builder<EdpTransport, EdpTransportBuilder> {
  _$EdpTransport? _$v;

  bool? _push;
  bool? get push => _$this._push;
  set push(bool? push) => _$this._push = push;

  EdpPullBuilder? _pull;
  EdpPullBuilder get pull => _$this._pull ??= EdpPullBuilder();
  set pull(EdpPullBuilder? pull) => _$this._pull = pull;

  EdpSearchBuilder? _search;
  EdpSearchBuilder get search => _$this._search ??= EdpSearchBuilder();
  set search(EdpSearchBuilder? search) => _$this._search = search;

  EdpAnalysisRequestBuilder? _analysisRequest;
  EdpAnalysisRequestBuilder get analysisRequest =>
      _$this._analysisRequest ??= EdpAnalysisRequestBuilder();
  set analysisRequest(EdpAnalysisRequestBuilder? analysisRequest) =>
      _$this._analysisRequest = analysisRequest;

  EdpTransportBuilder() {
    EdpTransport._defaults(this);
  }

  EdpTransportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _push = $v.push;
      _pull = $v.pull?.toBuilder();
      _search = $v.search?.toBuilder();
      _analysisRequest = $v.analysisRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpTransport other) {
    _$v = other as _$EdpTransport;
  }

  @override
  void update(void Function(EdpTransportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpTransport build() => _build();

  _$EdpTransport _build() {
    _$EdpTransport _$result;
    try {
      _$result = _$v ??
          _$EdpTransport._(
            push: push,
            pull: _pull?.build(),
            search: _search?.build(),
            analysisRequest: _analysisRequest?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pull';
        _pull?.build();
        _$failedField = 'search';
        _search?.build();
        _$failedField = 'analysisRequest';
        _analysisRequest?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpTransport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
