// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_linker_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationLinkerTestResult extends SituationLinkerTestResult {
  @override
  final int fromSeq;
  @override
  final int toSeq;
  @override
  final String linkerVersion;
  @override
  final int? inputsConsidered;
  @override
  final BuiltList<SituationLinkDecision> decisions;
  @override
  final bool? truncated;

  factory _$SituationLinkerTestResult([
    void Function(SituationLinkerTestResultBuilder)? updates,
  ]) => (SituationLinkerTestResultBuilder()..update(updates))._build();

  _$SituationLinkerTestResult._({
    required this.fromSeq,
    required this.toSeq,
    required this.linkerVersion,
    this.inputsConsidered,
    required this.decisions,
    this.truncated,
  }) : super._();
  @override
  SituationLinkerTestResult rebuild(
    void Function(SituationLinkerTestResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationLinkerTestResultBuilder toBuilder() =>
      SituationLinkerTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationLinkerTestResult &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        linkerVersion == other.linkerVersion &&
        inputsConsidered == other.inputsConsidered &&
        decisions == other.decisions &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, linkerVersion.hashCode);
    _$hash = $jc(_$hash, inputsConsidered.hashCode);
    _$hash = $jc(_$hash, decisions.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationLinkerTestResult')
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('linkerVersion', linkerVersion)
          ..add('inputsConsidered', inputsConsidered)
          ..add('decisions', decisions)
          ..add('truncated', truncated))
        .toString();
  }
}

class SituationLinkerTestResultBuilder
    implements
        Builder<SituationLinkerTestResult, SituationLinkerTestResultBuilder> {
  _$SituationLinkerTestResult? _$v;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  String? _linkerVersion;
  String? get linkerVersion => _$this._linkerVersion;
  set linkerVersion(String? linkerVersion) =>
      _$this._linkerVersion = linkerVersion;

  int? _inputsConsidered;
  int? get inputsConsidered => _$this._inputsConsidered;
  set inputsConsidered(int? inputsConsidered) =>
      _$this._inputsConsidered = inputsConsidered;

  ListBuilder<SituationLinkDecision>? _decisions;
  ListBuilder<SituationLinkDecision> get decisions =>
      _$this._decisions ??= ListBuilder<SituationLinkDecision>();
  set decisions(ListBuilder<SituationLinkDecision>? decisions) =>
      _$this._decisions = decisions;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  SituationLinkerTestResultBuilder() {
    SituationLinkerTestResult._defaults(this);
  }

  SituationLinkerTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _linkerVersion = $v.linkerVersion;
      _inputsConsidered = $v.inputsConsidered;
      _decisions = $v.decisions.toBuilder();
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationLinkerTestResult other) {
    _$v = other as _$SituationLinkerTestResult;
  }

  @override
  void update(void Function(SituationLinkerTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationLinkerTestResult build() => _build();

  _$SituationLinkerTestResult _build() {
    _$SituationLinkerTestResult _$result;
    try {
      _$result =
          _$v ??
          _$SituationLinkerTestResult._(
            fromSeq: BuiltValueNullFieldError.checkNotNull(
              fromSeq,
              r'SituationLinkerTestResult',
              'fromSeq',
            ),
            toSeq: BuiltValueNullFieldError.checkNotNull(
              toSeq,
              r'SituationLinkerTestResult',
              'toSeq',
            ),
            linkerVersion: BuiltValueNullFieldError.checkNotNull(
              linkerVersion,
              r'SituationLinkerTestResult',
              'linkerVersion',
            ),
            inputsConsidered: inputsConsidered,
            decisions: decisions.build(),
            truncated: truncated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'decisions';
        decisions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationLinkerTestResult',
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
