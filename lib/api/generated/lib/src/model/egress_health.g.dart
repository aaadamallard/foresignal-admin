// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egress_health.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressHealth extends EgressHealth {
  @override
  final bool reachable;
  @override
  final String? exitIp;
  @override
  final num? latencyMs;
  @override
  final DateTime? lastCheckedAt;
  @override
  final int? consecutiveFailures;
  @override
  final DateTime? backoffUntil;
  @override
  final String? lastError;
  @override
  final BuiltList<EgressHealthSourcesInner>? sources;

  factory _$EgressHealth([void Function(EgressHealthBuilder)? updates]) =>
      (EgressHealthBuilder()..update(updates))._build();

  _$EgressHealth._({
    required this.reachable,
    this.exitIp,
    this.latencyMs,
    this.lastCheckedAt,
    this.consecutiveFailures,
    this.backoffUntil,
    this.lastError,
    this.sources,
  }) : super._();
  @override
  EgressHealth rebuild(void Function(EgressHealthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EgressHealthBuilder toBuilder() => EgressHealthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressHealth &&
        reachable == other.reachable &&
        exitIp == other.exitIp &&
        latencyMs == other.latencyMs &&
        lastCheckedAt == other.lastCheckedAt &&
        consecutiveFailures == other.consecutiveFailures &&
        backoffUntil == other.backoffUntil &&
        lastError == other.lastError &&
        sources == other.sources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reachable.hashCode);
    _$hash = $jc(_$hash, exitIp.hashCode);
    _$hash = $jc(_$hash, latencyMs.hashCode);
    _$hash = $jc(_$hash, lastCheckedAt.hashCode);
    _$hash = $jc(_$hash, consecutiveFailures.hashCode);
    _$hash = $jc(_$hash, backoffUntil.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EgressHealth')
          ..add('reachable', reachable)
          ..add('exitIp', exitIp)
          ..add('latencyMs', latencyMs)
          ..add('lastCheckedAt', lastCheckedAt)
          ..add('consecutiveFailures', consecutiveFailures)
          ..add('backoffUntil', backoffUntil)
          ..add('lastError', lastError)
          ..add('sources', sources))
        .toString();
  }
}

class EgressHealthBuilder
    implements Builder<EgressHealth, EgressHealthBuilder> {
  _$EgressHealth? _$v;

  bool? _reachable;
  bool? get reachable => _$this._reachable;
  set reachable(bool? reachable) => _$this._reachable = reachable;

  String? _exitIp;
  String? get exitIp => _$this._exitIp;
  set exitIp(String? exitIp) => _$this._exitIp = exitIp;

  num? _latencyMs;
  num? get latencyMs => _$this._latencyMs;
  set latencyMs(num? latencyMs) => _$this._latencyMs = latencyMs;

  DateTime? _lastCheckedAt;
  DateTime? get lastCheckedAt => _$this._lastCheckedAt;
  set lastCheckedAt(DateTime? lastCheckedAt) =>
      _$this._lastCheckedAt = lastCheckedAt;

  int? _consecutiveFailures;
  int? get consecutiveFailures => _$this._consecutiveFailures;
  set consecutiveFailures(int? consecutiveFailures) =>
      _$this._consecutiveFailures = consecutiveFailures;

  DateTime? _backoffUntil;
  DateTime? get backoffUntil => _$this._backoffUntil;
  set backoffUntil(DateTime? backoffUntil) =>
      _$this._backoffUntil = backoffUntil;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  ListBuilder<EgressHealthSourcesInner>? _sources;
  ListBuilder<EgressHealthSourcesInner> get sources =>
      _$this._sources ??= ListBuilder<EgressHealthSourcesInner>();
  set sources(ListBuilder<EgressHealthSourcesInner>? sources) =>
      _$this._sources = sources;

  EgressHealthBuilder() {
    EgressHealth._defaults(this);
  }

  EgressHealthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reachable = $v.reachable;
      _exitIp = $v.exitIp;
      _latencyMs = $v.latencyMs;
      _lastCheckedAt = $v.lastCheckedAt;
      _consecutiveFailures = $v.consecutiveFailures;
      _backoffUntil = $v.backoffUntil;
      _lastError = $v.lastError;
      _sources = $v.sources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressHealth other) {
    _$v = other as _$EgressHealth;
  }

  @override
  void update(void Function(EgressHealthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressHealth build() => _build();

  _$EgressHealth _build() {
    _$EgressHealth _$result;
    try {
      _$result =
          _$v ??
          _$EgressHealth._(
            reachable: BuiltValueNullFieldError.checkNotNull(
              reachable,
              r'EgressHealth',
              'reachable',
            ),
            exitIp: exitIp,
            latencyMs: latencyMs,
            lastCheckedAt: lastCheckedAt,
            consecutiveFailures: consecutiveFailures,
            backoffUntil: backoffUntil,
            lastError: lastError,
            sources: _sources?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EgressHealth',
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
