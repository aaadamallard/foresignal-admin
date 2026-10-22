// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytic_finding_evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticFindingEvidence extends AnalyticFindingEvidence {
  @override
  final BuiltList<String> seriesRefs;
  @override
  final BuiltList<String> members;
  @override
  final bool? valuesWithheld;

  factory _$AnalyticFindingEvidence(
          [void Function(AnalyticFindingEvidenceBuilder)? updates]) =>
      (AnalyticFindingEvidenceBuilder()..update(updates))._build();

  _$AnalyticFindingEvidence._(
      {required this.seriesRefs, required this.members, this.valuesWithheld})
      : super._();
  @override
  AnalyticFindingEvidence rebuild(
          void Function(AnalyticFindingEvidenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticFindingEvidenceBuilder toBuilder() =>
      AnalyticFindingEvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticFindingEvidence &&
        seriesRefs == other.seriesRefs &&
        members == other.members &&
        valuesWithheld == other.valuesWithheld;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seriesRefs.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, valuesWithheld.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalyticFindingEvidence')
          ..add('seriesRefs', seriesRefs)
          ..add('members', members)
          ..add('valuesWithheld', valuesWithheld))
        .toString();
  }
}

class AnalyticFindingEvidenceBuilder
    implements
        Builder<AnalyticFindingEvidence, AnalyticFindingEvidenceBuilder> {
  _$AnalyticFindingEvidence? _$v;

  ListBuilder<String>? _seriesRefs;
  ListBuilder<String> get seriesRefs =>
      _$this._seriesRefs ??= ListBuilder<String>();
  set seriesRefs(ListBuilder<String>? seriesRefs) =>
      _$this._seriesRefs = seriesRefs;

  ListBuilder<String>? _members;
  ListBuilder<String> get members => _$this._members ??= ListBuilder<String>();
  set members(ListBuilder<String>? members) => _$this._members = members;

  bool? _valuesWithheld;
  bool? get valuesWithheld => _$this._valuesWithheld;
  set valuesWithheld(bool? valuesWithheld) =>
      _$this._valuesWithheld = valuesWithheld;

  AnalyticFindingEvidenceBuilder() {
    AnalyticFindingEvidence._defaults(this);
  }

  AnalyticFindingEvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seriesRefs = $v.seriesRefs.toBuilder();
      _members = $v.members.toBuilder();
      _valuesWithheld = $v.valuesWithheld;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticFindingEvidence other) {
    _$v = other as _$AnalyticFindingEvidence;
  }

  @override
  void update(void Function(AnalyticFindingEvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticFindingEvidence build() => _build();

  _$AnalyticFindingEvidence _build() {
    _$AnalyticFindingEvidence _$result;
    try {
      _$result = _$v ??
          _$AnalyticFindingEvidence._(
            seriesRefs: seriesRefs.build(),
            members: members.build(),
            valuesWithheld: valuesWithheld,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'seriesRefs';
        seriesRefs.build();
        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalyticFindingEvidence', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
