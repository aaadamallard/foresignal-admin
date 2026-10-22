// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_alerts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestAlerts extends DigestAlerts {
  @override
  final int? sinceAlertId;
  @override
  final int? untilAlertId;
  @override
  final DigestAlertsBySeverity? bySeverity;
  @override
  final DigestAlertsByStatus? byStatus;
  @override
  final BuiltList<DigestAlertsByRuleInner>? byRule;
  @override
  final BuiltList<Alert>? items;

  factory _$DigestAlerts([void Function(DigestAlertsBuilder)? updates]) =>
      (DigestAlertsBuilder()..update(updates))._build();

  _$DigestAlerts._({
    this.sinceAlertId,
    this.untilAlertId,
    this.bySeverity,
    this.byStatus,
    this.byRule,
    this.items,
  }) : super._();
  @override
  DigestAlerts rebuild(void Function(DigestAlertsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestAlertsBuilder toBuilder() => DigestAlertsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestAlerts &&
        sinceAlertId == other.sinceAlertId &&
        untilAlertId == other.untilAlertId &&
        bySeverity == other.bySeverity &&
        byStatus == other.byStatus &&
        byRule == other.byRule &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sinceAlertId.hashCode);
    _$hash = $jc(_$hash, untilAlertId.hashCode);
    _$hash = $jc(_$hash, bySeverity.hashCode);
    _$hash = $jc(_$hash, byStatus.hashCode);
    _$hash = $jc(_$hash, byRule.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestAlerts')
          ..add('sinceAlertId', sinceAlertId)
          ..add('untilAlertId', untilAlertId)
          ..add('bySeverity', bySeverity)
          ..add('byStatus', byStatus)
          ..add('byRule', byRule)
          ..add('items', items))
        .toString();
  }
}

class DigestAlertsBuilder
    implements Builder<DigestAlerts, DigestAlertsBuilder> {
  _$DigestAlerts? _$v;

  int? _sinceAlertId;
  int? get sinceAlertId => _$this._sinceAlertId;
  set sinceAlertId(int? sinceAlertId) => _$this._sinceAlertId = sinceAlertId;

  int? _untilAlertId;
  int? get untilAlertId => _$this._untilAlertId;
  set untilAlertId(int? untilAlertId) => _$this._untilAlertId = untilAlertId;

  DigestAlertsBySeverityBuilder? _bySeverity;
  DigestAlertsBySeverityBuilder get bySeverity =>
      _$this._bySeverity ??= DigestAlertsBySeverityBuilder();
  set bySeverity(DigestAlertsBySeverityBuilder? bySeverity) =>
      _$this._bySeverity = bySeverity;

  DigestAlertsByStatusBuilder? _byStatus;
  DigestAlertsByStatusBuilder get byStatus =>
      _$this._byStatus ??= DigestAlertsByStatusBuilder();
  set byStatus(DigestAlertsByStatusBuilder? byStatus) =>
      _$this._byStatus = byStatus;

  ListBuilder<DigestAlertsByRuleInner>? _byRule;
  ListBuilder<DigestAlertsByRuleInner> get byRule =>
      _$this._byRule ??= ListBuilder<DigestAlertsByRuleInner>();
  set byRule(ListBuilder<DigestAlertsByRuleInner>? byRule) =>
      _$this._byRule = byRule;

  ListBuilder<Alert>? _items;
  ListBuilder<Alert> get items => _$this._items ??= ListBuilder<Alert>();
  set items(ListBuilder<Alert>? items) => _$this._items = items;

  DigestAlertsBuilder() {
    DigestAlerts._defaults(this);
  }

  DigestAlertsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sinceAlertId = $v.sinceAlertId;
      _untilAlertId = $v.untilAlertId;
      _bySeverity = $v.bySeverity?.toBuilder();
      _byStatus = $v.byStatus?.toBuilder();
      _byRule = $v.byRule?.toBuilder();
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestAlerts other) {
    _$v = other as _$DigestAlerts;
  }

  @override
  void update(void Function(DigestAlertsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestAlerts build() => _build();

  _$DigestAlerts _build() {
    _$DigestAlerts _$result;
    try {
      _$result =
          _$v ??
          _$DigestAlerts._(
            sinceAlertId: sinceAlertId,
            untilAlertId: untilAlertId,
            bySeverity: _bySeverity?.build(),
            byStatus: _byStatus?.build(),
            byRule: _byRule?.build(),
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bySeverity';
        _bySeverity?.build();
        _$failedField = 'byStatus';
        _byStatus?.build();
        _$failedField = 'byRule';
        _byRule?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DigestAlerts',
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
