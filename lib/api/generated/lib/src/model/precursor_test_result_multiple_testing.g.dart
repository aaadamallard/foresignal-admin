// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test_result_multiple_testing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorTestResultMultipleTesting
    extends PrecursorTestResultMultipleTesting {
  @override
  final int? testsLast30d;
  @override
  final num? bonferroniPValue;

  factory _$PrecursorTestResultMultipleTesting(
          [void Function(PrecursorTestResultMultipleTestingBuilder)?
              updates]) =>
      (PrecursorTestResultMultipleTestingBuilder()..update(updates))._build();

  _$PrecursorTestResultMultipleTesting._(
      {this.testsLast30d, this.bonferroniPValue})
      : super._();
  @override
  PrecursorTestResultMultipleTesting rebuild(
          void Function(PrecursorTestResultMultipleTestingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorTestResultMultipleTestingBuilder toBuilder() =>
      PrecursorTestResultMultipleTestingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTestResultMultipleTesting &&
        testsLast30d == other.testsLast30d &&
        bonferroniPValue == other.bonferroniPValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, testsLast30d.hashCode);
    _$hash = $jc(_$hash, bonferroniPValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorTestResultMultipleTesting')
          ..add('testsLast30d', testsLast30d)
          ..add('bonferroniPValue', bonferroniPValue))
        .toString();
  }
}

class PrecursorTestResultMultipleTestingBuilder
    implements
        Builder<PrecursorTestResultMultipleTesting,
            PrecursorTestResultMultipleTestingBuilder> {
  _$PrecursorTestResultMultipleTesting? _$v;

  int? _testsLast30d;
  int? get testsLast30d => _$this._testsLast30d;
  set testsLast30d(int? testsLast30d) => _$this._testsLast30d = testsLast30d;

  num? _bonferroniPValue;
  num? get bonferroniPValue => _$this._bonferroniPValue;
  set bonferroniPValue(num? bonferroniPValue) =>
      _$this._bonferroniPValue = bonferroniPValue;

  PrecursorTestResultMultipleTestingBuilder() {
    PrecursorTestResultMultipleTesting._defaults(this);
  }

  PrecursorTestResultMultipleTestingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testsLast30d = $v.testsLast30d;
      _bonferroniPValue = $v.bonferroniPValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTestResultMultipleTesting other) {
    _$v = other as _$PrecursorTestResultMultipleTesting;
  }

  @override
  void update(
      void Function(PrecursorTestResultMultipleTestingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTestResultMultipleTesting build() => _build();

  _$PrecursorTestResultMultipleTesting _build() {
    final _$result = _$v ??
        _$PrecursorTestResultMultipleTesting._(
          testsLast30d: testsLast30d,
          bonferroniPValue: bonferroniPValue,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
