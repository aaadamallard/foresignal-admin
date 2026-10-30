// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breaking_news_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BreakingNewsConfig extends BreakingNewsConfig {
  @override
  final bool enabled;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final Severity? minSeverity;
  @override
  final int? cooldownMinutes;

  factory _$BreakingNewsConfig([
    void Function(BreakingNewsConfigBuilder)? updates,
  ]) => (BreakingNewsConfigBuilder()..update(updates))._build();

  _$BreakingNewsConfig._({
    required this.enabled,
    this.ruleIds,
    this.minSeverity,
    this.cooldownMinutes,
  }) : super._();
  @override
  BreakingNewsConfig rebuild(
    void Function(BreakingNewsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BreakingNewsConfigBuilder toBuilder() =>
      BreakingNewsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BreakingNewsConfig &&
        enabled == other.enabled &&
        ruleIds == other.ruleIds &&
        minSeverity == other.minSeverity &&
        cooldownMinutes == other.cooldownMinutes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, cooldownMinutes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BreakingNewsConfig')
          ..add('enabled', enabled)
          ..add('ruleIds', ruleIds)
          ..add('minSeverity', minSeverity)
          ..add('cooldownMinutes', cooldownMinutes))
        .toString();
  }
}

class BreakingNewsConfigBuilder
    implements Builder<BreakingNewsConfig, BreakingNewsConfigBuilder> {
  _$BreakingNewsConfig? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  Severity? _minSeverity;
  Severity? get minSeverity => _$this._minSeverity;
  set minSeverity(Severity? minSeverity) => _$this._minSeverity = minSeverity;

  int? _cooldownMinutes;
  int? get cooldownMinutes => _$this._cooldownMinutes;
  set cooldownMinutes(int? cooldownMinutes) =>
      _$this._cooldownMinutes = cooldownMinutes;

  BreakingNewsConfigBuilder() {
    BreakingNewsConfig._defaults(this);
  }

  BreakingNewsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _ruleIds = $v.ruleIds?.toBuilder();
      _minSeverity = $v.minSeverity;
      _cooldownMinutes = $v.cooldownMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BreakingNewsConfig other) {
    _$v = other as _$BreakingNewsConfig;
  }

  @override
  void update(void Function(BreakingNewsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BreakingNewsConfig build() => _build();

  _$BreakingNewsConfig _build() {
    _$BreakingNewsConfig _$result;
    try {
      _$result =
          _$v ??
          _$BreakingNewsConfig._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'BreakingNewsConfig',
              'enabled',
            ),
            ruleIds: _ruleIds?.build(),
            minSeverity: minSeverity,
            cooldownMinutes: cooldownMinutes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleIds';
        _ruleIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BreakingNewsConfig',
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
