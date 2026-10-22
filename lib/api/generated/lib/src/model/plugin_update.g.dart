// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PluginUpdate extends PluginUpdate {
  @override
  final bool enabled;
  @override
  final String? sha256;

  factory _$PluginUpdate([void Function(PluginUpdateBuilder)? updates]) =>
      (PluginUpdateBuilder()..update(updates))._build();

  _$PluginUpdate._({required this.enabled, this.sha256}) : super._();
  @override
  PluginUpdate rebuild(void Function(PluginUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PluginUpdateBuilder toBuilder() => PluginUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PluginUpdate &&
        enabled == other.enabled &&
        sha256 == other.sha256;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PluginUpdate')
          ..add('enabled', enabled)
          ..add('sha256', sha256))
        .toString();
  }
}

class PluginUpdateBuilder
    implements Builder<PluginUpdate, PluginUpdateBuilder> {
  _$PluginUpdate? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  PluginUpdateBuilder() {
    PluginUpdate._defaults(this);
  }

  PluginUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _sha256 = $v.sha256;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PluginUpdate other) {
    _$v = other as _$PluginUpdate;
  }

  @override
  void update(void Function(PluginUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PluginUpdate build() => _build();

  _$PluginUpdate _build() {
    final _$result =
        _$v ??
        _$PluginUpdate._(
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'PluginUpdate',
            'enabled',
          ),
          sha256: sha256,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
