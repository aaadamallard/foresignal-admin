// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregator_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregatorTestResult extends AggregatorTestResult {
  @override
  final bool ok;
  @override
  final bool reachable;
  @override
  final int? sampleCount;
  @override
  final String? message;
  @override
  final DateTime? checkedAt;

  factory _$AggregatorTestResult([
    void Function(AggregatorTestResultBuilder)? updates,
  ]) => (AggregatorTestResultBuilder()..update(updates))._build();

  _$AggregatorTestResult._({
    required this.ok,
    required this.reachable,
    this.sampleCount,
    this.message,
    this.checkedAt,
  }) : super._();
  @override
  AggregatorTestResult rebuild(
    void Function(AggregatorTestResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AggregatorTestResultBuilder toBuilder() =>
      AggregatorTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregatorTestResult &&
        ok == other.ok &&
        reachable == other.reachable &&
        sampleCount == other.sampleCount &&
        message == other.message &&
        checkedAt == other.checkedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ok.hashCode);
    _$hash = $jc(_$hash, reachable.hashCode);
    _$hash = $jc(_$hash, sampleCount.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, checkedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggregatorTestResult')
          ..add('ok', ok)
          ..add('reachable', reachable)
          ..add('sampleCount', sampleCount)
          ..add('message', message)
          ..add('checkedAt', checkedAt))
        .toString();
  }
}

class AggregatorTestResultBuilder
    implements Builder<AggregatorTestResult, AggregatorTestResultBuilder> {
  _$AggregatorTestResult? _$v;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  bool? _reachable;
  bool? get reachable => _$this._reachable;
  set reachable(bool? reachable) => _$this._reachable = reachable;

  int? _sampleCount;
  int? get sampleCount => _$this._sampleCount;
  set sampleCount(int? sampleCount) => _$this._sampleCount = sampleCount;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _checkedAt;
  DateTime? get checkedAt => _$this._checkedAt;
  set checkedAt(DateTime? checkedAt) => _$this._checkedAt = checkedAt;

  AggregatorTestResultBuilder() {
    AggregatorTestResult._defaults(this);
  }

  AggregatorTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ok = $v.ok;
      _reachable = $v.reachable;
      _sampleCount = $v.sampleCount;
      _message = $v.message;
      _checkedAt = $v.checkedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregatorTestResult other) {
    _$v = other as _$AggregatorTestResult;
  }

  @override
  void update(void Function(AggregatorTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregatorTestResult build() => _build();

  _$AggregatorTestResult _build() {
    final _$result =
        _$v ??
        _$AggregatorTestResult._(
          ok: BuiltValueNullFieldError.checkNotNull(
            ok,
            r'AggregatorTestResult',
            'ok',
          ),
          reachable: BuiltValueNullFieldError.checkNotNull(
            reachable,
            r'AggregatorTestResult',
            'reachable',
          ),
          sampleCount: sampleCount,
          message: message,
          checkedAt: checkedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
