// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_corroboration_event_quality.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelCorroborationEventQuality extends IntelCorroborationEventQuality {
  @override
  final int? strongFamilies;
  @override
  final int? strongGroups;
  @override
  final int? moderateFamilies;
  @override
  final int? requireModalities;

  factory _$IntelCorroborationEventQuality([
    void Function(IntelCorroborationEventQualityBuilder)? updates,
  ]) => (IntelCorroborationEventQualityBuilder()..update(updates))._build();

  _$IntelCorroborationEventQuality._({
    this.strongFamilies,
    this.strongGroups,
    this.moderateFamilies,
    this.requireModalities,
  }) : super._();
  @override
  IntelCorroborationEventQuality rebuild(
    void Function(IntelCorroborationEventQualityBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelCorroborationEventQualityBuilder toBuilder() =>
      IntelCorroborationEventQualityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelCorroborationEventQuality &&
        strongFamilies == other.strongFamilies &&
        strongGroups == other.strongGroups &&
        moderateFamilies == other.moderateFamilies &&
        requireModalities == other.requireModalities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, strongFamilies.hashCode);
    _$hash = $jc(_$hash, strongGroups.hashCode);
    _$hash = $jc(_$hash, moderateFamilies.hashCode);
    _$hash = $jc(_$hash, requireModalities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelCorroborationEventQuality')
          ..add('strongFamilies', strongFamilies)
          ..add('strongGroups', strongGroups)
          ..add('moderateFamilies', moderateFamilies)
          ..add('requireModalities', requireModalities))
        .toString();
  }
}

class IntelCorroborationEventQualityBuilder
    implements
        Builder<
          IntelCorroborationEventQuality,
          IntelCorroborationEventQualityBuilder
        > {
  _$IntelCorroborationEventQuality? _$v;

  int? _strongFamilies;
  int? get strongFamilies => _$this._strongFamilies;
  set strongFamilies(int? strongFamilies) =>
      _$this._strongFamilies = strongFamilies;

  int? _strongGroups;
  int? get strongGroups => _$this._strongGroups;
  set strongGroups(int? strongGroups) => _$this._strongGroups = strongGroups;

  int? _moderateFamilies;
  int? get moderateFamilies => _$this._moderateFamilies;
  set moderateFamilies(int? moderateFamilies) =>
      _$this._moderateFamilies = moderateFamilies;

  int? _requireModalities;
  int? get requireModalities => _$this._requireModalities;
  set requireModalities(int? requireModalities) =>
      _$this._requireModalities = requireModalities;

  IntelCorroborationEventQualityBuilder() {
    IntelCorroborationEventQuality._defaults(this);
  }

  IntelCorroborationEventQualityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _strongFamilies = $v.strongFamilies;
      _strongGroups = $v.strongGroups;
      _moderateFamilies = $v.moderateFamilies;
      _requireModalities = $v.requireModalities;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelCorroborationEventQuality other) {
    _$v = other as _$IntelCorroborationEventQuality;
  }

  @override
  void update(void Function(IntelCorroborationEventQualityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelCorroborationEventQuality build() => _build();

  _$IntelCorroborationEventQuality _build() {
    final _$result =
        _$v ??
        _$IntelCorroborationEventQuality._(
          strongFamilies: strongFamilies,
          strongGroups: strongGroups,
          moderateFamilies: moderateFamilies,
          requireModalities: requireModalities,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
