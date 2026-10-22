// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_cues_triggers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettingsCuesTriggers extends SocialSettingsCuesTriggers {
  @override
  final bool? situationActivated;
  @override
  final bool? situationEscalated;
  @override
  final BuiltList<String>? findingTypes;
  @override
  final bool? anomalies;
  @override
  final bool? criticalAlerts;
  @override
  final BuiltList<String>? canonicalFamilies;
  @override
  final int? minEvidenceGroups;

  factory _$SocialSettingsCuesTriggers(
          [void Function(SocialSettingsCuesTriggersBuilder)? updates]) =>
      (SocialSettingsCuesTriggersBuilder()..update(updates))._build();

  _$SocialSettingsCuesTriggers._(
      {this.situationActivated,
      this.situationEscalated,
      this.findingTypes,
      this.anomalies,
      this.criticalAlerts,
      this.canonicalFamilies,
      this.minEvidenceGroups})
      : super._();
  @override
  SocialSettingsCuesTriggers rebuild(
          void Function(SocialSettingsCuesTriggersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialSettingsCuesTriggersBuilder toBuilder() =>
      SocialSettingsCuesTriggersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsCuesTriggers &&
        situationActivated == other.situationActivated &&
        situationEscalated == other.situationEscalated &&
        findingTypes == other.findingTypes &&
        anomalies == other.anomalies &&
        criticalAlerts == other.criticalAlerts &&
        canonicalFamilies == other.canonicalFamilies &&
        minEvidenceGroups == other.minEvidenceGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationActivated.hashCode);
    _$hash = $jc(_$hash, situationEscalated.hashCode);
    _$hash = $jc(_$hash, findingTypes.hashCode);
    _$hash = $jc(_$hash, anomalies.hashCode);
    _$hash = $jc(_$hash, criticalAlerts.hashCode);
    _$hash = $jc(_$hash, canonicalFamilies.hashCode);
    _$hash = $jc(_$hash, minEvidenceGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettingsCuesTriggers')
          ..add('situationActivated', situationActivated)
          ..add('situationEscalated', situationEscalated)
          ..add('findingTypes', findingTypes)
          ..add('anomalies', anomalies)
          ..add('criticalAlerts', criticalAlerts)
          ..add('canonicalFamilies', canonicalFamilies)
          ..add('minEvidenceGroups', minEvidenceGroups))
        .toString();
  }
}

class SocialSettingsCuesTriggersBuilder
    implements
        Builder<SocialSettingsCuesTriggers, SocialSettingsCuesTriggersBuilder> {
  _$SocialSettingsCuesTriggers? _$v;

  bool? _situationActivated;
  bool? get situationActivated => _$this._situationActivated;
  set situationActivated(bool? situationActivated) =>
      _$this._situationActivated = situationActivated;

  bool? _situationEscalated;
  bool? get situationEscalated => _$this._situationEscalated;
  set situationEscalated(bool? situationEscalated) =>
      _$this._situationEscalated = situationEscalated;

  ListBuilder<String>? _findingTypes;
  ListBuilder<String> get findingTypes =>
      _$this._findingTypes ??= ListBuilder<String>();
  set findingTypes(ListBuilder<String>? findingTypes) =>
      _$this._findingTypes = findingTypes;

  bool? _anomalies;
  bool? get anomalies => _$this._anomalies;
  set anomalies(bool? anomalies) => _$this._anomalies = anomalies;

  bool? _criticalAlerts;
  bool? get criticalAlerts => _$this._criticalAlerts;
  set criticalAlerts(bool? criticalAlerts) =>
      _$this._criticalAlerts = criticalAlerts;

  ListBuilder<String>? _canonicalFamilies;
  ListBuilder<String> get canonicalFamilies =>
      _$this._canonicalFamilies ??= ListBuilder<String>();
  set canonicalFamilies(ListBuilder<String>? canonicalFamilies) =>
      _$this._canonicalFamilies = canonicalFamilies;

  int? _minEvidenceGroups;
  int? get minEvidenceGroups => _$this._minEvidenceGroups;
  set minEvidenceGroups(int? minEvidenceGroups) =>
      _$this._minEvidenceGroups = minEvidenceGroups;

  SocialSettingsCuesTriggersBuilder() {
    SocialSettingsCuesTriggers._defaults(this);
  }

  SocialSettingsCuesTriggersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationActivated = $v.situationActivated;
      _situationEscalated = $v.situationEscalated;
      _findingTypes = $v.findingTypes?.toBuilder();
      _anomalies = $v.anomalies;
      _criticalAlerts = $v.criticalAlerts;
      _canonicalFamilies = $v.canonicalFamilies?.toBuilder();
      _minEvidenceGroups = $v.minEvidenceGroups;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsCuesTriggers other) {
    _$v = other as _$SocialSettingsCuesTriggers;
  }

  @override
  void update(void Function(SocialSettingsCuesTriggersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsCuesTriggers build() => _build();

  _$SocialSettingsCuesTriggers _build() {
    _$SocialSettingsCuesTriggers _$result;
    try {
      _$result = _$v ??
          _$SocialSettingsCuesTriggers._(
            situationActivated: situationActivated,
            situationEscalated: situationEscalated,
            findingTypes: _findingTypes?.build(),
            anomalies: anomalies,
            criticalAlerts: criticalAlerts,
            canonicalFamilies: _canonicalFamilies?.build(),
            minEvidenceGroups: minEvidenceGroups,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'findingTypes';
        _findingTypes?.build();

        _$failedField = 'canonicalFamilies';
        _canonicalFamilies?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialSettingsCuesTriggers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
