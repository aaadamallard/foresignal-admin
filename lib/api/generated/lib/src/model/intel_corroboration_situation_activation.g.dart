// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_corroboration_situation_activation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelCorroborationSituationActivation
    extends IntelCorroborationSituationActivation {
  @override
  final int? minFamilies;
  @override
  final int? minGroups;

  factory _$IntelCorroborationSituationActivation([
    void Function(IntelCorroborationSituationActivationBuilder)? updates,
  ]) => (IntelCorroborationSituationActivationBuilder()..update(updates))
      ._build();

  _$IntelCorroborationSituationActivation._({this.minFamilies, this.minGroups})
    : super._();
  @override
  IntelCorroborationSituationActivation rebuild(
    void Function(IntelCorroborationSituationActivationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelCorroborationSituationActivationBuilder toBuilder() =>
      IntelCorroborationSituationActivationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelCorroborationSituationActivation &&
        minFamilies == other.minFamilies &&
        minGroups == other.minGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minFamilies.hashCode);
    _$hash = $jc(_$hash, minGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'IntelCorroborationSituationActivation',
          )
          ..add('minFamilies', minFamilies)
          ..add('minGroups', minGroups))
        .toString();
  }
}

class IntelCorroborationSituationActivationBuilder
    implements
        Builder<
          IntelCorroborationSituationActivation,
          IntelCorroborationSituationActivationBuilder
        > {
  _$IntelCorroborationSituationActivation? _$v;

  int? _minFamilies;
  int? get minFamilies => _$this._minFamilies;
  set minFamilies(int? minFamilies) => _$this._minFamilies = minFamilies;

  int? _minGroups;
  int? get minGroups => _$this._minGroups;
  set minGroups(int? minGroups) => _$this._minGroups = minGroups;

  IntelCorroborationSituationActivationBuilder() {
    IntelCorroborationSituationActivation._defaults(this);
  }

  IntelCorroborationSituationActivationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minFamilies = $v.minFamilies;
      _minGroups = $v.minGroups;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelCorroborationSituationActivation other) {
    _$v = other as _$IntelCorroborationSituationActivation;
  }

  @override
  void update(
    void Function(IntelCorroborationSituationActivationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  IntelCorroborationSituationActivation build() => _build();

  _$IntelCorroborationSituationActivation _build() {
    final _$result =
        _$v ??
        _$IntelCorroborationSituationActivation._(
          minFamilies: minFamilies,
          minGroups: minGroups,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
