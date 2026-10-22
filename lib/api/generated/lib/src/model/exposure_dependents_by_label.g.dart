// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_dependents_by_label.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExposureDependentsByLabel extends ExposureDependentsByLabel {
  @override
  final int? confirmed;
  @override
  final int? likely;
  @override
  final int? possible;
  @override
  final int? speculative;

  factory _$ExposureDependentsByLabel(
          [void Function(ExposureDependentsByLabelBuilder)? updates]) =>
      (ExposureDependentsByLabelBuilder()..update(updates))._build();

  _$ExposureDependentsByLabel._(
      {this.confirmed, this.likely, this.possible, this.speculative})
      : super._();
  @override
  ExposureDependentsByLabel rebuild(
          void Function(ExposureDependentsByLabelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposureDependentsByLabelBuilder toBuilder() =>
      ExposureDependentsByLabelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposureDependentsByLabel &&
        confirmed == other.confirmed &&
        likely == other.likely &&
        possible == other.possible &&
        speculative == other.speculative;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confirmed.hashCode);
    _$hash = $jc(_$hash, likely.hashCode);
    _$hash = $jc(_$hash, possible.hashCode);
    _$hash = $jc(_$hash, speculative.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposureDependentsByLabel')
          ..add('confirmed', confirmed)
          ..add('likely', likely)
          ..add('possible', possible)
          ..add('speculative', speculative))
        .toString();
  }
}

class ExposureDependentsByLabelBuilder
    implements
        Builder<ExposureDependentsByLabel, ExposureDependentsByLabelBuilder> {
  _$ExposureDependentsByLabel? _$v;

  int? _confirmed;
  int? get confirmed => _$this._confirmed;
  set confirmed(int? confirmed) => _$this._confirmed = confirmed;

  int? _likely;
  int? get likely => _$this._likely;
  set likely(int? likely) => _$this._likely = likely;

  int? _possible;
  int? get possible => _$this._possible;
  set possible(int? possible) => _$this._possible = possible;

  int? _speculative;
  int? get speculative => _$this._speculative;
  set speculative(int? speculative) => _$this._speculative = speculative;

  ExposureDependentsByLabelBuilder() {
    ExposureDependentsByLabel._defaults(this);
  }

  ExposureDependentsByLabelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirmed = $v.confirmed;
      _likely = $v.likely;
      _possible = $v.possible;
      _speculative = $v.speculative;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposureDependentsByLabel other) {
    _$v = other as _$ExposureDependentsByLabel;
  }

  @override
  void update(void Function(ExposureDependentsByLabelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposureDependentsByLabel build() => _build();

  _$ExposureDependentsByLabel _build() {
    final _$result = _$v ??
        _$ExposureDependentsByLabel._(
          confirmed: confirmed,
          likely: likely,
          possible: possible,
          speculative: speculative,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
