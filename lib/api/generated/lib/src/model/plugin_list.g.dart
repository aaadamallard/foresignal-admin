// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PluginList extends PluginList {
  @override
  final bool enabled;
  @override
  final BuiltList<Plugin> plugins;

  factory _$PluginList([void Function(PluginListBuilder)? updates]) =>
      (PluginListBuilder()..update(updates))._build();

  _$PluginList._({required this.enabled, required this.plugins}) : super._();
  @override
  PluginList rebuild(void Function(PluginListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PluginListBuilder toBuilder() => PluginListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PluginList &&
        enabled == other.enabled &&
        plugins == other.plugins;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, plugins.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PluginList')
          ..add('enabled', enabled)
          ..add('plugins', plugins))
        .toString();
  }
}

class PluginListBuilder implements Builder<PluginList, PluginListBuilder> {
  _$PluginList? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ListBuilder<Plugin>? _plugins;
  ListBuilder<Plugin> get plugins => _$this._plugins ??= ListBuilder<Plugin>();
  set plugins(ListBuilder<Plugin>? plugins) => _$this._plugins = plugins;

  PluginListBuilder() {
    PluginList._defaults(this);
  }

  PluginListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _plugins = $v.plugins.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PluginList other) {
    _$v = other as _$PluginList;
  }

  @override
  void update(void Function(PluginListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PluginList build() => _build();

  _$PluginList _build() {
    _$PluginList _$result;
    try {
      _$result = _$v ??
          _$PluginList._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'PluginList', 'enabled'),
            plugins: plugins.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'plugins';
        plugins.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PluginList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
