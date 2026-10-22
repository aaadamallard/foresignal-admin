// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_resolution_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastResolutionInput extends ForecastResolutionInput {
  @override
  final String? outcome;
  @override
  final num? value;
  @override
  final BuiltList<String> evidence;
  @override
  final String? note;

  factory _$ForecastResolutionInput(
          [void Function(ForecastResolutionInputBuilder)? updates]) =>
      (ForecastResolutionInputBuilder()..update(updates))._build();

  _$ForecastResolutionInput._(
      {this.outcome, this.value, required this.evidence, this.note})
      : super._();
  @override
  ForecastResolutionInput rebuild(
          void Function(ForecastResolutionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastResolutionInputBuilder toBuilder() =>
      ForecastResolutionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastResolutionInput &&
        outcome == other.outcome &&
        value == other.value &&
        evidence == other.evidence &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastResolutionInput')
          ..add('outcome', outcome)
          ..add('value', value)
          ..add('evidence', evidence)
          ..add('note', note))
        .toString();
  }
}

class ForecastResolutionInputBuilder
    implements
        Builder<ForecastResolutionInput, ForecastResolutionInputBuilder> {
  _$ForecastResolutionInput? _$v;

  String? _outcome;
  String? get outcome => _$this._outcome;
  set outcome(String? outcome) => _$this._outcome = outcome;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  ListBuilder<String>? _evidence;
  ListBuilder<String> get evidence =>
      _$this._evidence ??= ListBuilder<String>();
  set evidence(ListBuilder<String>? evidence) => _$this._evidence = evidence;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ForecastResolutionInputBuilder() {
    ForecastResolutionInput._defaults(this);
  }

  ForecastResolutionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outcome = $v.outcome;
      _value = $v.value;
      _evidence = $v.evidence.toBuilder();
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastResolutionInput other) {
    _$v = other as _$ForecastResolutionInput;
  }

  @override
  void update(void Function(ForecastResolutionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastResolutionInput build() => _build();

  _$ForecastResolutionInput _build() {
    _$ForecastResolutionInput _$result;
    try {
      _$result = _$v ??
          _$ForecastResolutionInput._(
            outcome: outcome,
            value: value,
            evidence: evidence.build(),
            note: note,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evidence';
        evidence.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastResolutionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
