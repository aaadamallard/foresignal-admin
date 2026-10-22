// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_request_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisRequestResult extends AnalysisRequestResult {
  @override
  final String correlationId;
  @override
  final bool recorded;
  @override
  final String? forecastId;

  factory _$AnalysisRequestResult(
          [void Function(AnalysisRequestResultBuilder)? updates]) =>
      (AnalysisRequestResultBuilder()..update(updates))._build();

  _$AnalysisRequestResult._(
      {required this.correlationId, required this.recorded, this.forecastId})
      : super._();
  @override
  AnalysisRequestResult rebuild(
          void Function(AnalysisRequestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisRequestResultBuilder toBuilder() =>
      AnalysisRequestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisRequestResult &&
        correlationId == other.correlationId &&
        recorded == other.recorded &&
        forecastId == other.forecastId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jc(_$hash, recorded.hashCode);
    _$hash = $jc(_$hash, forecastId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisRequestResult')
          ..add('correlationId', correlationId)
          ..add('recorded', recorded)
          ..add('forecastId', forecastId))
        .toString();
  }
}

class AnalysisRequestResultBuilder
    implements Builder<AnalysisRequestResult, AnalysisRequestResultBuilder> {
  _$AnalysisRequestResult? _$v;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  bool? _recorded;
  bool? get recorded => _$this._recorded;
  set recorded(bool? recorded) => _$this._recorded = recorded;

  String? _forecastId;
  String? get forecastId => _$this._forecastId;
  set forecastId(String? forecastId) => _$this._forecastId = forecastId;

  AnalysisRequestResultBuilder() {
    AnalysisRequestResult._defaults(this);
  }

  AnalysisRequestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _correlationId = $v.correlationId;
      _recorded = $v.recorded;
      _forecastId = $v.forecastId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisRequestResult other) {
    _$v = other as _$AnalysisRequestResult;
  }

  @override
  void update(void Function(AnalysisRequestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisRequestResult build() => _build();

  _$AnalysisRequestResult _build() {
    final _$result = _$v ??
        _$AnalysisRequestResult._(
          correlationId: BuiltValueNullFieldError.checkNotNull(
              correlationId, r'AnalysisRequestResult', 'correlationId'),
          recorded: BuiltValueNullFieldError.checkNotNull(
              recorded, r'AnalysisRequestResult', 'recorded'),
          forecastId: forecastId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
