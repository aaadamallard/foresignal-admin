// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_report_llm_tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoctorReportLlmTokens extends DoctorReportLlmTokens {
  @override
  final int? input;
  @override
  final int? output;

  factory _$DoctorReportLlmTokens([
    void Function(DoctorReportLlmTokensBuilder)? updates,
  ]) => (DoctorReportLlmTokensBuilder()..update(updates))._build();

  _$DoctorReportLlmTokens._({this.input, this.output}) : super._();
  @override
  DoctorReportLlmTokens rebuild(
    void Function(DoctorReportLlmTokensBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DoctorReportLlmTokensBuilder toBuilder() =>
      DoctorReportLlmTokensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorReportLlmTokens &&
        input == other.input &&
        output == other.output;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DoctorReportLlmTokens')
          ..add('input', input)
          ..add('output', output))
        .toString();
  }
}

class DoctorReportLlmTokensBuilder
    implements Builder<DoctorReportLlmTokens, DoctorReportLlmTokensBuilder> {
  _$DoctorReportLlmTokens? _$v;

  int? _input;
  int? get input => _$this._input;
  set input(int? input) => _$this._input = input;

  int? _output;
  int? get output => _$this._output;
  set output(int? output) => _$this._output = output;

  DoctorReportLlmTokensBuilder() {
    DoctorReportLlmTokens._defaults(this);
  }

  DoctorReportLlmTokensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input;
      _output = $v.output;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorReportLlmTokens other) {
    _$v = other as _$DoctorReportLlmTokens;
  }

  @override
  void update(void Function(DoctorReportLlmTokensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorReportLlmTokens build() => _build();

  _$DoctorReportLlmTokens _build() {
    final _$result =
        _$v ?? _$DoctorReportLlmTokens._(input: input, output: output);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
