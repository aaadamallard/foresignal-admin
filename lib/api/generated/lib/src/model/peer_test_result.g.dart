// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeerTestResult extends PeerTestResult {
  @override
  final bool ok;
  @override
  final bool reachable;
  @override
  final int? latencyMs;
  @override
  final FederationInfo? info;
  @override
  final bool? signatureValid;
  @override
  final String? kid;
  @override
  final String? pinnedKid;
  @override
  final bool? keyMatches;
  @override
  final String? error;

  factory _$PeerTestResult([void Function(PeerTestResultBuilder)? updates]) =>
      (PeerTestResultBuilder()..update(updates))._build();

  _$PeerTestResult._(
      {required this.ok,
      required this.reachable,
      this.latencyMs,
      this.info,
      this.signatureValid,
      this.kid,
      this.pinnedKid,
      this.keyMatches,
      this.error})
      : super._();
  @override
  PeerTestResult rebuild(void Function(PeerTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeerTestResultBuilder toBuilder() => PeerTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeerTestResult &&
        ok == other.ok &&
        reachable == other.reachable &&
        latencyMs == other.latencyMs &&
        info == other.info &&
        signatureValid == other.signatureValid &&
        kid == other.kid &&
        pinnedKid == other.pinnedKid &&
        keyMatches == other.keyMatches &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ok.hashCode);
    _$hash = $jc(_$hash, reachable.hashCode);
    _$hash = $jc(_$hash, latencyMs.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, signatureValid.hashCode);
    _$hash = $jc(_$hash, kid.hashCode);
    _$hash = $jc(_$hash, pinnedKid.hashCode);
    _$hash = $jc(_$hash, keyMatches.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeerTestResult')
          ..add('ok', ok)
          ..add('reachable', reachable)
          ..add('latencyMs', latencyMs)
          ..add('info', info)
          ..add('signatureValid', signatureValid)
          ..add('kid', kid)
          ..add('pinnedKid', pinnedKid)
          ..add('keyMatches', keyMatches)
          ..add('error', error))
        .toString();
  }
}

class PeerTestResultBuilder
    implements Builder<PeerTestResult, PeerTestResultBuilder> {
  _$PeerTestResult? _$v;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  bool? _reachable;
  bool? get reachable => _$this._reachable;
  set reachable(bool? reachable) => _$this._reachable = reachable;

  int? _latencyMs;
  int? get latencyMs => _$this._latencyMs;
  set latencyMs(int? latencyMs) => _$this._latencyMs = latencyMs;

  FederationInfoBuilder? _info;
  FederationInfoBuilder get info => _$this._info ??= FederationInfoBuilder();
  set info(FederationInfoBuilder? info) => _$this._info = info;

  bool? _signatureValid;
  bool? get signatureValid => _$this._signatureValid;
  set signatureValid(bool? signatureValid) =>
      _$this._signatureValid = signatureValid;

  String? _kid;
  String? get kid => _$this._kid;
  set kid(String? kid) => _$this._kid = kid;

  String? _pinnedKid;
  String? get pinnedKid => _$this._pinnedKid;
  set pinnedKid(String? pinnedKid) => _$this._pinnedKid = pinnedKid;

  bool? _keyMatches;
  bool? get keyMatches => _$this._keyMatches;
  set keyMatches(bool? keyMatches) => _$this._keyMatches = keyMatches;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  PeerTestResultBuilder() {
    PeerTestResult._defaults(this);
  }

  PeerTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ok = $v.ok;
      _reachable = $v.reachable;
      _latencyMs = $v.latencyMs;
      _info = $v.info?.toBuilder();
      _signatureValid = $v.signatureValid;
      _kid = $v.kid;
      _pinnedKid = $v.pinnedKid;
      _keyMatches = $v.keyMatches;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeerTestResult other) {
    _$v = other as _$PeerTestResult;
  }

  @override
  void update(void Function(PeerTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeerTestResult build() => _build();

  _$PeerTestResult _build() {
    _$PeerTestResult _$result;
    try {
      _$result = _$v ??
          _$PeerTestResult._(
            ok: BuiltValueNullFieldError.checkNotNull(
                ok, r'PeerTestResult', 'ok'),
            reachable: BuiltValueNullFieldError.checkNotNull(
                reachable, r'PeerTestResult', 'reachable'),
            latencyMs: latencyMs,
            info: _info?.build(),
            signatureValid: signatureValid,
            kid: kid,
            pinnedKid: pinnedKid,
            keyMatches: keyMatches,
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PeerTestResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
