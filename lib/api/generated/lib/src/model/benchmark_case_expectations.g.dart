// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_case_expectations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BenchmarkCaseExpectations extends BenchmarkCaseExpectations {
  @override
  final BuiltList<BenchmarkCaseExpectationsFindingsInner>? findings;
  @override
  final BuiltList<BenchmarkCaseExpectationsPrecursorsInner>? precursors;
  @override
  final BuiltList<BenchmarkCaseExpectationsQuestionsInner>? questions;
  @override
  final String? notes;

  factory _$BenchmarkCaseExpectations([
    void Function(BenchmarkCaseExpectationsBuilder)? updates,
  ]) => (BenchmarkCaseExpectationsBuilder()..update(updates))._build();

  _$BenchmarkCaseExpectations._({
    this.findings,
    this.precursors,
    this.questions,
    this.notes,
  }) : super._();
  @override
  BenchmarkCaseExpectations rebuild(
    void Function(BenchmarkCaseExpectationsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BenchmarkCaseExpectationsBuilder toBuilder() =>
      BenchmarkCaseExpectationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkCaseExpectations &&
        findings == other.findings &&
        precursors == other.precursors &&
        questions == other.questions &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, findings.hashCode);
    _$hash = $jc(_$hash, precursors.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkCaseExpectations')
          ..add('findings', findings)
          ..add('precursors', precursors)
          ..add('questions', questions)
          ..add('notes', notes))
        .toString();
  }
}

class BenchmarkCaseExpectationsBuilder
    implements
        Builder<BenchmarkCaseExpectations, BenchmarkCaseExpectationsBuilder> {
  _$BenchmarkCaseExpectations? _$v;

  ListBuilder<BenchmarkCaseExpectationsFindingsInner>? _findings;
  ListBuilder<BenchmarkCaseExpectationsFindingsInner> get findings =>
      _$this._findings ??=
          ListBuilder<BenchmarkCaseExpectationsFindingsInner>();
  set findings(ListBuilder<BenchmarkCaseExpectationsFindingsInner>? findings) =>
      _$this._findings = findings;

  ListBuilder<BenchmarkCaseExpectationsPrecursorsInner>? _precursors;
  ListBuilder<BenchmarkCaseExpectationsPrecursorsInner> get precursors =>
      _$this._precursors ??=
          ListBuilder<BenchmarkCaseExpectationsPrecursorsInner>();
  set precursors(
    ListBuilder<BenchmarkCaseExpectationsPrecursorsInner>? precursors,
  ) => _$this._precursors = precursors;

  ListBuilder<BenchmarkCaseExpectationsQuestionsInner>? _questions;
  ListBuilder<BenchmarkCaseExpectationsQuestionsInner> get questions =>
      _$this._questions ??=
          ListBuilder<BenchmarkCaseExpectationsQuestionsInner>();
  set questions(
    ListBuilder<BenchmarkCaseExpectationsQuestionsInner>? questions,
  ) => _$this._questions = questions;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  BenchmarkCaseExpectationsBuilder() {
    BenchmarkCaseExpectations._defaults(this);
  }

  BenchmarkCaseExpectationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _findings = $v.findings?.toBuilder();
      _precursors = $v.precursors?.toBuilder();
      _questions = $v.questions?.toBuilder();
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkCaseExpectations other) {
    _$v = other as _$BenchmarkCaseExpectations;
  }

  @override
  void update(void Function(BenchmarkCaseExpectationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkCaseExpectations build() => _build();

  _$BenchmarkCaseExpectations _build() {
    _$BenchmarkCaseExpectations _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkCaseExpectations._(
            findings: _findings?.build(),
            precursors: _precursors?.build(),
            questions: _questions?.build(),
            notes: notes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'findings';
        _findings?.build();
        _$failedField = 'precursors';
        _precursors?.build();
        _$failedField = 'questions';
        _questions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkCaseExpectations',
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
