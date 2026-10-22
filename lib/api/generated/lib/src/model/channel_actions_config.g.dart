// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_actions_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChannelActionsConfig extends ChannelActionsConfig {
  @override
  final bool? enabled;
  @override
  final BuiltList<String>? list;
  @override
  final bool? links;
  @override
  final bool? reactions;

  factory _$ChannelActionsConfig([
    void Function(ChannelActionsConfigBuilder)? updates,
  ]) => (ChannelActionsConfigBuilder()..update(updates))._build();

  _$ChannelActionsConfig._({
    this.enabled,
    this.list,
    this.links,
    this.reactions,
  }) : super._();
  @override
  ChannelActionsConfig rebuild(
    void Function(ChannelActionsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChannelActionsConfigBuilder toBuilder() =>
      ChannelActionsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelActionsConfig &&
        enabled == other.enabled &&
        list == other.list &&
        links == other.links &&
        reactions == other.reactions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, reactions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelActionsConfig')
          ..add('enabled', enabled)
          ..add('list', list)
          ..add('links', links)
          ..add('reactions', reactions))
        .toString();
  }
}

class ChannelActionsConfigBuilder
    implements Builder<ChannelActionsConfig, ChannelActionsConfigBuilder> {
  _$ChannelActionsConfig? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ListBuilder<String>? _list;
  ListBuilder<String> get list => _$this._list ??= ListBuilder<String>();
  set list(ListBuilder<String>? list) => _$this._list = list;

  bool? _links;
  bool? get links => _$this._links;
  set links(bool? links) => _$this._links = links;

  bool? _reactions;
  bool? get reactions => _$this._reactions;
  set reactions(bool? reactions) => _$this._reactions = reactions;

  ChannelActionsConfigBuilder() {
    ChannelActionsConfig._defaults(this);
  }

  ChannelActionsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _list = $v.list?.toBuilder();
      _links = $v.links;
      _reactions = $v.reactions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelActionsConfig other) {
    _$v = other as _$ChannelActionsConfig;
  }

  @override
  void update(void Function(ChannelActionsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelActionsConfig build() => _build();

  _$ChannelActionsConfig _build() {
    _$ChannelActionsConfig _$result;
    try {
      _$result =
          _$v ??
          _$ChannelActionsConfig._(
            enabled: enabled,
            list: _list?.build(),
            links: links,
            reactions: reactions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChannelActionsConfig',
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
