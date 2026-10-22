// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ach_matrix.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AchMatrix extends AchMatrix {
  @override
  final String setId;
  @override
  final DateTime computedAt;
  @override
  final BuiltList<AchMatrixHypothesesInner> hypotheses;
  @override
  final BuiltList<AchEvidence> rows;
  @override
  final BuiltMap<String, num> scores;
  @override
  final String? leastInconsistentHypothesisId;
  @override
  final BuiltList<String>? nonDiagnosticEvidenceIds;
  @override
  final String? note;

  factory _$AchMatrix([void Function(AchMatrixBuilder)? updates]) =>
      (AchMatrixBuilder()..update(updates))._build();

  _$AchMatrix._({
    required this.setId,
    required this.computedAt,
    required this.hypotheses,
    required this.rows,
    required this.scores,
    this.leastInconsistentHypothesisId,
    this.nonDiagnosticEvidenceIds,
    this.note,
  }) : super._();
  @override
  AchMatrix rebuild(void Function(AchMatrixBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AchMatrixBuilder toBuilder() => AchMatrixBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AchMatrix &&
        setId == other.setId &&
        computedAt == other.computedAt &&
        hypotheses == other.hypotheses &&
        rows == other.rows &&
        scores == other.scores &&
        leastInconsistentHypothesisId == other.leastInconsistentHypothesisId &&
        nonDiagnosticEvidenceIds == other.nonDiagnosticEvidenceIds &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jc(_$hash, hypotheses.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, scores.hashCode);
    _$hash = $jc(_$hash, leastInconsistentHypothesisId.hashCode);
    _$hash = $jc(_$hash, nonDiagnosticEvidenceIds.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AchMatrix')
          ..add('setId', setId)
          ..add('computedAt', computedAt)
          ..add('hypotheses', hypotheses)
          ..add('rows', rows)
          ..add('scores', scores)
          ..add('leastInconsistentHypothesisId', leastInconsistentHypothesisId)
          ..add('nonDiagnosticEvidenceIds', nonDiagnosticEvidenceIds)
          ..add('note', note))
        .toString();
  }
}

class AchMatrixBuilder implements Builder<AchMatrix, AchMatrixBuilder> {
  _$AchMatrix? _$v;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ListBuilder<AchMatrixHypothesesInner>? _hypotheses;
  ListBuilder<AchMatrixHypothesesInner> get hypotheses =>
      _$this._hypotheses ??= ListBuilder<AchMatrixHypothesesInner>();
  set hypotheses(ListBuilder<AchMatrixHypothesesInner>? hypotheses) =>
      _$this._hypotheses = hypotheses;

  ListBuilder<AchEvidence>? _rows;
  ListBuilder<AchEvidence> get rows =>
      _$this._rows ??= ListBuilder<AchEvidence>();
  set rows(ListBuilder<AchEvidence>? rows) => _$this._rows = rows;

  MapBuilder<String, num>? _scores;
  MapBuilder<String, num> get scores =>
      _$this._scores ??= MapBuilder<String, num>();
  set scores(MapBuilder<String, num>? scores) => _$this._scores = scores;

  String? _leastInconsistentHypothesisId;
  String? get leastInconsistentHypothesisId =>
      _$this._leastInconsistentHypothesisId;
  set leastInconsistentHypothesisId(String? leastInconsistentHypothesisId) =>
      _$this._leastInconsistentHypothesisId = leastInconsistentHypothesisId;

  ListBuilder<String>? _nonDiagnosticEvidenceIds;
  ListBuilder<String> get nonDiagnosticEvidenceIds =>
      _$this._nonDiagnosticEvidenceIds ??= ListBuilder<String>();
  set nonDiagnosticEvidenceIds(ListBuilder<String>? nonDiagnosticEvidenceIds) =>
      _$this._nonDiagnosticEvidenceIds = nonDiagnosticEvidenceIds;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  AchMatrixBuilder() {
    AchMatrix._defaults(this);
  }

  AchMatrixBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setId = $v.setId;
      _computedAt = $v.computedAt;
      _hypotheses = $v.hypotheses.toBuilder();
      _rows = $v.rows.toBuilder();
      _scores = $v.scores.toBuilder();
      _leastInconsistentHypothesisId = $v.leastInconsistentHypothesisId;
      _nonDiagnosticEvidenceIds = $v.nonDiagnosticEvidenceIds?.toBuilder();
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AchMatrix other) {
    _$v = other as _$AchMatrix;
  }

  @override
  void update(void Function(AchMatrixBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AchMatrix build() => _build();

  _$AchMatrix _build() {
    _$AchMatrix _$result;
    try {
      _$result =
          _$v ??
          _$AchMatrix._(
            setId: BuiltValueNullFieldError.checkNotNull(
              setId,
              r'AchMatrix',
              'setId',
            ),
            computedAt: BuiltValueNullFieldError.checkNotNull(
              computedAt,
              r'AchMatrix',
              'computedAt',
            ),
            hypotheses: hypotheses.build(),
            rows: rows.build(),
            scores: scores.build(),
            leastInconsistentHypothesisId: leastInconsistentHypothesisId,
            nonDiagnosticEvidenceIds: _nonDiagnosticEvidenceIds?.build(),
            note: note,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hypotheses';
        hypotheses.build();
        _$failedField = 'rows';
        rows.build();
        _$failedField = 'scores';
        scores.build();

        _$failedField = 'nonDiagnosticEvidenceIds';
        _nonDiagnosticEvidenceIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AchMatrix',
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
