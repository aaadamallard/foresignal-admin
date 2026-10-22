// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisPatch extends HypothesisPatch {
  @override
  final String? label;
  @override
  final String? statement;
  @override
  final HypothesisInputPriorBasis? priorBasis;
  @override
  final String? ledgerOutcome;
  @override
  final BuiltList<String>? alternatives;
  @override
  final HypothesisPatchProbabilityOverride? probabilityOverride;
  @override
  final int? version;

  factory _$HypothesisPatch([void Function(HypothesisPatchBuilder)? updates]) =>
      (HypothesisPatchBuilder()..update(updates))._build();

  _$HypothesisPatch._(
      {this.label,
      this.statement,
      this.priorBasis,
      this.ledgerOutcome,
      this.alternatives,
      this.probabilityOverride,
      this.version})
      : super._();
  @override
  HypothesisPatch rebuild(void Function(HypothesisPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisPatchBuilder toBuilder() => HypothesisPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisPatch &&
        label == other.label &&
        statement == other.statement &&
        priorBasis == other.priorBasis &&
        ledgerOutcome == other.ledgerOutcome &&
        alternatives == other.alternatives &&
        probabilityOverride == other.probabilityOverride &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, priorBasis.hashCode);
    _$hash = $jc(_$hash, ledgerOutcome.hashCode);
    _$hash = $jc(_$hash, alternatives.hashCode);
    _$hash = $jc(_$hash, probabilityOverride.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisPatch')
          ..add('label', label)
          ..add('statement', statement)
          ..add('priorBasis', priorBasis)
          ..add('ledgerOutcome', ledgerOutcome)
          ..add('alternatives', alternatives)
          ..add('probabilityOverride', probabilityOverride)
          ..add('version', version))
        .toString();
  }
}

class HypothesisPatchBuilder
    implements Builder<HypothesisPatch, HypothesisPatchBuilder> {
  _$HypothesisPatch? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  HypothesisInputPriorBasisBuilder? _priorBasis;
  HypothesisInputPriorBasisBuilder get priorBasis =>
      _$this._priorBasis ??= HypothesisInputPriorBasisBuilder();
  set priorBasis(HypothesisInputPriorBasisBuilder? priorBasis) =>
      _$this._priorBasis = priorBasis;

  String? _ledgerOutcome;
  String? get ledgerOutcome => _$this._ledgerOutcome;
  set ledgerOutcome(String? ledgerOutcome) =>
      _$this._ledgerOutcome = ledgerOutcome;

  ListBuilder<String>? _alternatives;
  ListBuilder<String> get alternatives =>
      _$this._alternatives ??= ListBuilder<String>();
  set alternatives(ListBuilder<String>? alternatives) =>
      _$this._alternatives = alternatives;

  HypothesisPatchProbabilityOverrideBuilder? _probabilityOverride;
  HypothesisPatchProbabilityOverrideBuilder get probabilityOverride =>
      _$this._probabilityOverride ??=
          HypothesisPatchProbabilityOverrideBuilder();
  set probabilityOverride(
          HypothesisPatchProbabilityOverrideBuilder? probabilityOverride) =>
      _$this._probabilityOverride = probabilityOverride;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  HypothesisPatchBuilder() {
    HypothesisPatch._defaults(this);
  }

  HypothesisPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _statement = $v.statement;
      _priorBasis = $v.priorBasis?.toBuilder();
      _ledgerOutcome = $v.ledgerOutcome;
      _alternatives = $v.alternatives?.toBuilder();
      _probabilityOverride = $v.probabilityOverride?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisPatch other) {
    _$v = other as _$HypothesisPatch;
  }

  @override
  void update(void Function(HypothesisPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisPatch build() => _build();

  _$HypothesisPatch _build() {
    _$HypothesisPatch _$result;
    try {
      _$result = _$v ??
          _$HypothesisPatch._(
            label: label,
            statement: statement,
            priorBasis: _priorBasis?.build(),
            ledgerOutcome: ledgerOutcome,
            alternatives: _alternatives?.build(),
            probabilityOverride: _probabilityOverride?.build(),
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'priorBasis';
        _priorBasis?.build();

        _$failedField = 'alternatives';
        _alternatives?.build();
        _$failedField = 'probabilityOverride';
        _probabilityOverride?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HypothesisPatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
