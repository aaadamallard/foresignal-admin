// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_outcomes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionOutcomes extends QuestionOutcomes {
  @override
  final BuiltList<String>? labels;
  @override
  final String? unit;
  @override
  final num? lower;
  @override
  final num? upper;

  factory _$QuestionOutcomes([
    void Function(QuestionOutcomesBuilder)? updates,
  ]) => (QuestionOutcomesBuilder()..update(updates))._build();

  _$QuestionOutcomes._({this.labels, this.unit, this.lower, this.upper})
    : super._();
  @override
  QuestionOutcomes rebuild(void Function(QuestionOutcomesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionOutcomesBuilder toBuilder() =>
      QuestionOutcomesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionOutcomes &&
        labels == other.labels &&
        unit == other.unit &&
        lower == other.lower &&
        upper == other.upper;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, labels.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, lower.hashCode);
    _$hash = $jc(_$hash, upper.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionOutcomes')
          ..add('labels', labels)
          ..add('unit', unit)
          ..add('lower', lower)
          ..add('upper', upper))
        .toString();
  }
}

class QuestionOutcomesBuilder
    implements Builder<QuestionOutcomes, QuestionOutcomesBuilder> {
  _$QuestionOutcomes? _$v;

  ListBuilder<String>? _labels;
  ListBuilder<String> get labels => _$this._labels ??= ListBuilder<String>();
  set labels(ListBuilder<String>? labels) => _$this._labels = labels;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  num? _lower;
  num? get lower => _$this._lower;
  set lower(num? lower) => _$this._lower = lower;

  num? _upper;
  num? get upper => _$this._upper;
  set upper(num? upper) => _$this._upper = upper;

  QuestionOutcomesBuilder() {
    QuestionOutcomes._defaults(this);
  }

  QuestionOutcomesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _labels = $v.labels?.toBuilder();
      _unit = $v.unit;
      _lower = $v.lower;
      _upper = $v.upper;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionOutcomes other) {
    _$v = other as _$QuestionOutcomes;
  }

  @override
  void update(void Function(QuestionOutcomesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionOutcomes build() => _build();

  _$QuestionOutcomes _build() {
    _$QuestionOutcomes _$result;
    try {
      _$result =
          _$v ??
          _$QuestionOutcomes._(
            labels: _labels?.build(),
            unit: unit,
            lower: lower,
            upper: upper,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'QuestionOutcomes',
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
