// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoHistory extends SystemInfoHistory {
  @override
  final BuiltList<SystemInfoHistoryTiersInner>? tiers;
  @override
  final num? versionsPerMinute;
  @override
  final int? projectedBytes;

  factory _$SystemInfoHistory(
          [void Function(SystemInfoHistoryBuilder)? updates]) =>
      (SystemInfoHistoryBuilder()..update(updates))._build();

  _$SystemInfoHistory._(
      {this.tiers, this.versionsPerMinute, this.projectedBytes})
      : super._();
  @override
  SystemInfoHistory rebuild(void Function(SystemInfoHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoHistoryBuilder toBuilder() =>
      SystemInfoHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoHistory &&
        tiers == other.tiers &&
        versionsPerMinute == other.versionsPerMinute &&
        projectedBytes == other.projectedBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tiers.hashCode);
    _$hash = $jc(_$hash, versionsPerMinute.hashCode);
    _$hash = $jc(_$hash, projectedBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoHistory')
          ..add('tiers', tiers)
          ..add('versionsPerMinute', versionsPerMinute)
          ..add('projectedBytes', projectedBytes))
        .toString();
  }
}

class SystemInfoHistoryBuilder
    implements Builder<SystemInfoHistory, SystemInfoHistoryBuilder> {
  _$SystemInfoHistory? _$v;

  ListBuilder<SystemInfoHistoryTiersInner>? _tiers;
  ListBuilder<SystemInfoHistoryTiersInner> get tiers =>
      _$this._tiers ??= ListBuilder<SystemInfoHistoryTiersInner>();
  set tiers(ListBuilder<SystemInfoHistoryTiersInner>? tiers) =>
      _$this._tiers = tiers;

  num? _versionsPerMinute;
  num? get versionsPerMinute => _$this._versionsPerMinute;
  set versionsPerMinute(num? versionsPerMinute) =>
      _$this._versionsPerMinute = versionsPerMinute;

  int? _projectedBytes;
  int? get projectedBytes => _$this._projectedBytes;
  set projectedBytes(int? projectedBytes) =>
      _$this._projectedBytes = projectedBytes;

  SystemInfoHistoryBuilder() {
    SystemInfoHistory._defaults(this);
  }

  SystemInfoHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tiers = $v.tiers?.toBuilder();
      _versionsPerMinute = $v.versionsPerMinute;
      _projectedBytes = $v.projectedBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoHistory other) {
    _$v = other as _$SystemInfoHistory;
  }

  @override
  void update(void Function(SystemInfoHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoHistory build() => _build();

  _$SystemInfoHistory _build() {
    _$SystemInfoHistory _$result;
    try {
      _$result = _$v ??
          _$SystemInfoHistory._(
            tiers: _tiers?.build(),
            versionsPerMinute: versionsPerMinute,
            projectedBytes: projectedBytes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tiers';
        _tiers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SystemInfoHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
