// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_coverage_situations_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssessmentCoverageSituationsInner
    extends AssessmentCoverageSituationsInner {
  @override
  final String situationId;
  @override
  final CoverageStats coverage;

  factory _$AssessmentCoverageSituationsInner([
    void Function(AssessmentCoverageSituationsInnerBuilder)? updates,
  ]) => (AssessmentCoverageSituationsInnerBuilder()..update(updates))._build();

  _$AssessmentCoverageSituationsInner._({
    required this.situationId,
    required this.coverage,
  }) : super._();
  @override
  AssessmentCoverageSituationsInner rebuild(
    void Function(AssessmentCoverageSituationsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AssessmentCoverageSituationsInnerBuilder toBuilder() =>
      AssessmentCoverageSituationsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentCoverageSituationsInner &&
        situationId == other.situationId &&
        coverage == other.coverage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssessmentCoverageSituationsInner')
          ..add('situationId', situationId)
          ..add('coverage', coverage))
        .toString();
  }
}

class AssessmentCoverageSituationsInnerBuilder
    implements
        Builder<
          AssessmentCoverageSituationsInner,
          AssessmentCoverageSituationsInnerBuilder
        > {
  _$AssessmentCoverageSituationsInner? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  CoverageStatsBuilder? _coverage;
  CoverageStatsBuilder get coverage =>
      _$this._coverage ??= CoverageStatsBuilder();
  set coverage(CoverageStatsBuilder? coverage) => _$this._coverage = coverage;

  AssessmentCoverageSituationsInnerBuilder() {
    AssessmentCoverageSituationsInner._defaults(this);
  }

  AssessmentCoverageSituationsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _coverage = $v.coverage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentCoverageSituationsInner other) {
    _$v = other as _$AssessmentCoverageSituationsInner;
  }

  @override
  void update(
    void Function(AssessmentCoverageSituationsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentCoverageSituationsInner build() => _build();

  _$AssessmentCoverageSituationsInner _build() {
    _$AssessmentCoverageSituationsInner _$result;
    try {
      _$result =
          _$v ??
          _$AssessmentCoverageSituationsInner._(
            situationId: BuiltValueNullFieldError.checkNotNull(
              situationId,
              r'AssessmentCoverageSituationsInner',
              'situationId',
            ),
            coverage: coverage.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coverage';
        coverage.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssessmentCoverageSituationsInner',
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
