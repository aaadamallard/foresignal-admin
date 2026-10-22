// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_judgment_change.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeyJudgmentChange extends KeyJudgmentChange {
  @override
  final num? previousProbability;
  @override
  final String? previousText;
  @override
  final String explanation;

  factory _$KeyJudgmentChange(
          [void Function(KeyJudgmentChangeBuilder)? updates]) =>
      (KeyJudgmentChangeBuilder()..update(updates))._build();

  _$KeyJudgmentChange._(
      {this.previousProbability, this.previousText, required this.explanation})
      : super._();
  @override
  KeyJudgmentChange rebuild(void Function(KeyJudgmentChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyJudgmentChangeBuilder toBuilder() =>
      KeyJudgmentChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyJudgmentChange &&
        previousProbability == other.previousProbability &&
        previousText == other.previousText &&
        explanation == other.explanation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, previousProbability.hashCode);
    _$hash = $jc(_$hash, previousText.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeyJudgmentChange')
          ..add('previousProbability', previousProbability)
          ..add('previousText', previousText)
          ..add('explanation', explanation))
        .toString();
  }
}

class KeyJudgmentChangeBuilder
    implements Builder<KeyJudgmentChange, KeyJudgmentChangeBuilder> {
  _$KeyJudgmentChange? _$v;

  num? _previousProbability;
  num? get previousProbability => _$this._previousProbability;
  set previousProbability(num? previousProbability) =>
      _$this._previousProbability = previousProbability;

  String? _previousText;
  String? get previousText => _$this._previousText;
  set previousText(String? previousText) => _$this._previousText = previousText;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  KeyJudgmentChangeBuilder() {
    KeyJudgmentChange._defaults(this);
  }

  KeyJudgmentChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _previousProbability = $v.previousProbability;
      _previousText = $v.previousText;
      _explanation = $v.explanation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyJudgmentChange other) {
    _$v = other as _$KeyJudgmentChange;
  }

  @override
  void update(void Function(KeyJudgmentChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyJudgmentChange build() => _build();

  _$KeyJudgmentChange _build() {
    final _$result = _$v ??
        _$KeyJudgmentChange._(
          previousProbability: previousProbability,
          previousText: previousText,
          explanation: BuiltValueNullFieldError.checkNotNull(
              explanation, r'KeyJudgmentChange', 'explanation'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
