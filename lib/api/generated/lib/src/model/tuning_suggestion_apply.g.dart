// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuning_suggestion_apply.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TuningSuggestionApply extends TuningSuggestionApply {
  @override
  final String? note;

  factory _$TuningSuggestionApply([
    void Function(TuningSuggestionApplyBuilder)? updates,
  ]) => (TuningSuggestionApplyBuilder()..update(updates))._build();

  _$TuningSuggestionApply._({this.note}) : super._();
  @override
  TuningSuggestionApply rebuild(
    void Function(TuningSuggestionApplyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TuningSuggestionApplyBuilder toBuilder() =>
      TuningSuggestionApplyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TuningSuggestionApply && note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TuningSuggestionApply',
    )..add('note', note)).toString();
  }
}

class TuningSuggestionApplyBuilder
    implements Builder<TuningSuggestionApply, TuningSuggestionApplyBuilder> {
  _$TuningSuggestionApply? _$v;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  TuningSuggestionApplyBuilder() {
    TuningSuggestionApply._defaults(this);
  }

  TuningSuggestionApplyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TuningSuggestionApply other) {
    _$v = other as _$TuningSuggestionApply;
  }

  @override
  void update(void Function(TuningSuggestionApplyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TuningSuggestionApply build() => _build();

  _$TuningSuggestionApply _build() {
    final _$result = _$v ?? _$TuningSuggestionApply._(note: note);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
