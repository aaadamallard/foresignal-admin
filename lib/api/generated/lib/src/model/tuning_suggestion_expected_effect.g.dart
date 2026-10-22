// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuning_suggestion_expected_effect.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TuningSuggestionExpectedEffect extends TuningSuggestionExpectedEffect {
  @override
  final int? wouldFire;
  @override
  final int? removedNegatives;
  @override
  final int? keptPositives;
  @override
  final String? backtestId;

  factory _$TuningSuggestionExpectedEffect(
          [void Function(TuningSuggestionExpectedEffectBuilder)? updates]) =>
      (TuningSuggestionExpectedEffectBuilder()..update(updates))._build();

  _$TuningSuggestionExpectedEffect._(
      {this.wouldFire,
      this.removedNegatives,
      this.keptPositives,
      this.backtestId})
      : super._();
  @override
  TuningSuggestionExpectedEffect rebuild(
          void Function(TuningSuggestionExpectedEffectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TuningSuggestionExpectedEffectBuilder toBuilder() =>
      TuningSuggestionExpectedEffectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TuningSuggestionExpectedEffect &&
        wouldFire == other.wouldFire &&
        removedNegatives == other.removedNegatives &&
        keptPositives == other.keptPositives &&
        backtestId == other.backtestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, wouldFire.hashCode);
    _$hash = $jc(_$hash, removedNegatives.hashCode);
    _$hash = $jc(_$hash, keptPositives.hashCode);
    _$hash = $jc(_$hash, backtestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TuningSuggestionExpectedEffect')
          ..add('wouldFire', wouldFire)
          ..add('removedNegatives', removedNegatives)
          ..add('keptPositives', keptPositives)
          ..add('backtestId', backtestId))
        .toString();
  }
}

class TuningSuggestionExpectedEffectBuilder
    implements
        Builder<TuningSuggestionExpectedEffect,
            TuningSuggestionExpectedEffectBuilder> {
  _$TuningSuggestionExpectedEffect? _$v;

  int? _wouldFire;
  int? get wouldFire => _$this._wouldFire;
  set wouldFire(int? wouldFire) => _$this._wouldFire = wouldFire;

  int? _removedNegatives;
  int? get removedNegatives => _$this._removedNegatives;
  set removedNegatives(int? removedNegatives) =>
      _$this._removedNegatives = removedNegatives;

  int? _keptPositives;
  int? get keptPositives => _$this._keptPositives;
  set keptPositives(int? keptPositives) =>
      _$this._keptPositives = keptPositives;

  String? _backtestId;
  String? get backtestId => _$this._backtestId;
  set backtestId(String? backtestId) => _$this._backtestId = backtestId;

  TuningSuggestionExpectedEffectBuilder() {
    TuningSuggestionExpectedEffect._defaults(this);
  }

  TuningSuggestionExpectedEffectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wouldFire = $v.wouldFire;
      _removedNegatives = $v.removedNegatives;
      _keptPositives = $v.keptPositives;
      _backtestId = $v.backtestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TuningSuggestionExpectedEffect other) {
    _$v = other as _$TuningSuggestionExpectedEffect;
  }

  @override
  void update(void Function(TuningSuggestionExpectedEffectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TuningSuggestionExpectedEffect build() => _build();

  _$TuningSuggestionExpectedEffect _build() {
    final _$result = _$v ??
        _$TuningSuggestionExpectedEffect._(
          wouldFire: wouldFire,
          removedNegatives: removedNegatives,
          keptPositives: keptPositives,
          backtestId: backtestId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
