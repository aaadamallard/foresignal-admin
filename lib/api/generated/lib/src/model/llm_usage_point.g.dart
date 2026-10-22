// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_usage_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmUsagePoint extends LlmUsagePoint {
  @override
  final DateTime t;
  @override
  final int requests;
  @override
  final int inputTokens;
  @override
  final int outputTokens;
  @override
  final int? cachedTokens;
  @override
  final int? errors;
  @override
  final int? refused;

  factory _$LlmUsagePoint([void Function(LlmUsagePointBuilder)? updates]) =>
      (LlmUsagePointBuilder()..update(updates))._build();

  _$LlmUsagePoint._(
      {required this.t,
      required this.requests,
      required this.inputTokens,
      required this.outputTokens,
      this.cachedTokens,
      this.errors,
      this.refused})
      : super._();
  @override
  LlmUsagePoint rebuild(void Function(LlmUsagePointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmUsagePointBuilder toBuilder() => LlmUsagePointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmUsagePoint &&
        t == other.t &&
        requests == other.requests &&
        inputTokens == other.inputTokens &&
        outputTokens == other.outputTokens &&
        cachedTokens == other.cachedTokens &&
        errors == other.errors &&
        refused == other.refused;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, requests.hashCode);
    _$hash = $jc(_$hash, inputTokens.hashCode);
    _$hash = $jc(_$hash, outputTokens.hashCode);
    _$hash = $jc(_$hash, cachedTokens.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, refused.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmUsagePoint')
          ..add('t', t)
          ..add('requests', requests)
          ..add('inputTokens', inputTokens)
          ..add('outputTokens', outputTokens)
          ..add('cachedTokens', cachedTokens)
          ..add('errors', errors)
          ..add('refused', refused))
        .toString();
  }
}

class LlmUsagePointBuilder
    implements Builder<LlmUsagePoint, LlmUsagePointBuilder> {
  _$LlmUsagePoint? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  int? _requests;
  int? get requests => _$this._requests;
  set requests(int? requests) => _$this._requests = requests;

  int? _inputTokens;
  int? get inputTokens => _$this._inputTokens;
  set inputTokens(int? inputTokens) => _$this._inputTokens = inputTokens;

  int? _outputTokens;
  int? get outputTokens => _$this._outputTokens;
  set outputTokens(int? outputTokens) => _$this._outputTokens = outputTokens;

  int? _cachedTokens;
  int? get cachedTokens => _$this._cachedTokens;
  set cachedTokens(int? cachedTokens) => _$this._cachedTokens = cachedTokens;

  int? _errors;
  int? get errors => _$this._errors;
  set errors(int? errors) => _$this._errors = errors;

  int? _refused;
  int? get refused => _$this._refused;
  set refused(int? refused) => _$this._refused = refused;

  LlmUsagePointBuilder() {
    LlmUsagePoint._defaults(this);
  }

  LlmUsagePointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _requests = $v.requests;
      _inputTokens = $v.inputTokens;
      _outputTokens = $v.outputTokens;
      _cachedTokens = $v.cachedTokens;
      _errors = $v.errors;
      _refused = $v.refused;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmUsagePoint other) {
    _$v = other as _$LlmUsagePoint;
  }

  @override
  void update(void Function(LlmUsagePointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmUsagePoint build() => _build();

  _$LlmUsagePoint _build() {
    final _$result = _$v ??
        _$LlmUsagePoint._(
          t: BuiltValueNullFieldError.checkNotNull(t, r'LlmUsagePoint', 't'),
          requests: BuiltValueNullFieldError.checkNotNull(
              requests, r'LlmUsagePoint', 'requests'),
          inputTokens: BuiltValueNullFieldError.checkNotNull(
              inputTokens, r'LlmUsagePoint', 'inputTokens'),
          outputTokens: BuiltValueNullFieldError.checkNotNull(
              outputTokens, r'LlmUsagePoint', 'outputTokens'),
          cachedTokens: cachedTokens,
          errors: errors,
          refused: refused,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
