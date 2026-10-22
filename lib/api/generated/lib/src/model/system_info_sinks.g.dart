// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_sinks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoSinks extends SystemInfoSinks {
  @override
  final int? enabled;
  @override
  final int? failing;

  factory _$SystemInfoSinks([void Function(SystemInfoSinksBuilder)? updates]) =>
      (SystemInfoSinksBuilder()..update(updates))._build();

  _$SystemInfoSinks._({this.enabled, this.failing}) : super._();
  @override
  SystemInfoSinks rebuild(void Function(SystemInfoSinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoSinksBuilder toBuilder() => SystemInfoSinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoSinks &&
        enabled == other.enabled &&
        failing == other.failing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, failing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoSinks')
          ..add('enabled', enabled)
          ..add('failing', failing))
        .toString();
  }
}

class SystemInfoSinksBuilder
    implements Builder<SystemInfoSinks, SystemInfoSinksBuilder> {
  _$SystemInfoSinks? _$v;

  int? _enabled;
  int? get enabled => _$this._enabled;
  set enabled(int? enabled) => _$this._enabled = enabled;

  int? _failing;
  int? get failing => _$this._failing;
  set failing(int? failing) => _$this._failing = failing;

  SystemInfoSinksBuilder() {
    SystemInfoSinks._defaults(this);
  }

  SystemInfoSinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _failing = $v.failing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoSinks other) {
    _$v = other as _$SystemInfoSinks;
  }

  @override
  void update(void Function(SystemInfoSinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoSinks build() => _build();

  _$SystemInfoSinks _build() {
    final _$result = _$v ??
        _$SystemInfoSinks._(
          enabled: enabled,
          failing: failing,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
