// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_input_ledger_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisSetInputLedgerQuestion
    extends HypothesisSetInputLedgerQuestion {
  @override
  final HypothesisSetInputLedgerQuestionResolver resolver;
  @override
  final String? resolutionCriteria;
  @override
  final String? category;

  factory _$HypothesisSetInputLedgerQuestion([
    void Function(HypothesisSetInputLedgerQuestionBuilder)? updates,
  ]) => (HypothesisSetInputLedgerQuestionBuilder()..update(updates))._build();

  _$HypothesisSetInputLedgerQuestion._({
    required this.resolver,
    this.resolutionCriteria,
    this.category,
  }) : super._();
  @override
  HypothesisSetInputLedgerQuestion rebuild(
    void Function(HypothesisSetInputLedgerQuestionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisSetInputLedgerQuestionBuilder toBuilder() =>
      HypothesisSetInputLedgerQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetInputLedgerQuestion &&
        resolver == other.resolver &&
        resolutionCriteria == other.resolutionCriteria &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resolver.hashCode);
    _$hash = $jc(_$hash, resolutionCriteria.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetInputLedgerQuestion')
          ..add('resolver', resolver)
          ..add('resolutionCriteria', resolutionCriteria)
          ..add('category', category))
        .toString();
  }
}

class HypothesisSetInputLedgerQuestionBuilder
    implements
        Builder<
          HypothesisSetInputLedgerQuestion,
          HypothesisSetInputLedgerQuestionBuilder
        > {
  _$HypothesisSetInputLedgerQuestion? _$v;

  HypothesisSetInputLedgerQuestionResolverBuilder? _resolver;
  HypothesisSetInputLedgerQuestionResolverBuilder get resolver =>
      _$this._resolver ??= HypothesisSetInputLedgerQuestionResolverBuilder();
  set resolver(HypothesisSetInputLedgerQuestionResolverBuilder? resolver) =>
      _$this._resolver = resolver;

  String? _resolutionCriteria;
  String? get resolutionCriteria => _$this._resolutionCriteria;
  set resolutionCriteria(String? resolutionCriteria) =>
      _$this._resolutionCriteria = resolutionCriteria;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  HypothesisSetInputLedgerQuestionBuilder() {
    HypothesisSetInputLedgerQuestion._defaults(this);
  }

  HypothesisSetInputLedgerQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resolver = $v.resolver.toBuilder();
      _resolutionCriteria = $v.resolutionCriteria;
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetInputLedgerQuestion other) {
    _$v = other as _$HypothesisSetInputLedgerQuestion;
  }

  @override
  void update(void Function(HypothesisSetInputLedgerQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetInputLedgerQuestion build() => _build();

  _$HypothesisSetInputLedgerQuestion _build() {
    _$HypothesisSetInputLedgerQuestion _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisSetInputLedgerQuestion._(
            resolver: resolver.build(),
            resolutionCriteria: resolutionCriteria,
            category: category,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resolver';
        resolver.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisSetInputLedgerQuestion',
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
