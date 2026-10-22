// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_coverage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssessmentCoverage extends AssessmentCoverage {
  @override
  final BuiltList<AssessmentCoverageSituationsInner>? situations;
  @override
  final BuiltList<String>? blindspotStoryIds;
  @override
  final BuiltList<String>? divergenceFindingIds;

  factory _$AssessmentCoverage(
          [void Function(AssessmentCoverageBuilder)? updates]) =>
      (AssessmentCoverageBuilder()..update(updates))._build();

  _$AssessmentCoverage._(
      {this.situations, this.blindspotStoryIds, this.divergenceFindingIds})
      : super._();
  @override
  AssessmentCoverage rebuild(
          void Function(AssessmentCoverageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssessmentCoverageBuilder toBuilder() =>
      AssessmentCoverageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentCoverage &&
        situations == other.situations &&
        blindspotStoryIds == other.blindspotStoryIds &&
        divergenceFindingIds == other.divergenceFindingIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situations.hashCode);
    _$hash = $jc(_$hash, blindspotStoryIds.hashCode);
    _$hash = $jc(_$hash, divergenceFindingIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssessmentCoverage')
          ..add('situations', situations)
          ..add('blindspotStoryIds', blindspotStoryIds)
          ..add('divergenceFindingIds', divergenceFindingIds))
        .toString();
  }
}

class AssessmentCoverageBuilder
    implements Builder<AssessmentCoverage, AssessmentCoverageBuilder> {
  _$AssessmentCoverage? _$v;

  ListBuilder<AssessmentCoverageSituationsInner>? _situations;
  ListBuilder<AssessmentCoverageSituationsInner> get situations =>
      _$this._situations ??= ListBuilder<AssessmentCoverageSituationsInner>();
  set situations(ListBuilder<AssessmentCoverageSituationsInner>? situations) =>
      _$this._situations = situations;

  ListBuilder<String>? _blindspotStoryIds;
  ListBuilder<String> get blindspotStoryIds =>
      _$this._blindspotStoryIds ??= ListBuilder<String>();
  set blindspotStoryIds(ListBuilder<String>? blindspotStoryIds) =>
      _$this._blindspotStoryIds = blindspotStoryIds;

  ListBuilder<String>? _divergenceFindingIds;
  ListBuilder<String> get divergenceFindingIds =>
      _$this._divergenceFindingIds ??= ListBuilder<String>();
  set divergenceFindingIds(ListBuilder<String>? divergenceFindingIds) =>
      _$this._divergenceFindingIds = divergenceFindingIds;

  AssessmentCoverageBuilder() {
    AssessmentCoverage._defaults(this);
  }

  AssessmentCoverageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situations = $v.situations?.toBuilder();
      _blindspotStoryIds = $v.blindspotStoryIds?.toBuilder();
      _divergenceFindingIds = $v.divergenceFindingIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentCoverage other) {
    _$v = other as _$AssessmentCoverage;
  }

  @override
  void update(void Function(AssessmentCoverageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentCoverage build() => _build();

  _$AssessmentCoverage _build() {
    _$AssessmentCoverage _$result;
    try {
      _$result = _$v ??
          _$AssessmentCoverage._(
            situations: _situations?.build(),
            blindspotStoryIds: _blindspotStoryIds?.build(),
            divergenceFindingIds: _divergenceFindingIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'situations';
        _situations?.build();
        _$failedField = 'blindspotStoryIds';
        _blindspotStoryIds?.build();
        _$failedField = 'divergenceFindingIds';
        _divergenceFindingIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AssessmentCoverage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
